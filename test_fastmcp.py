#!/usr/bin/env python3
"""
Test-Skript für den FastMCP-Server
"""

import json
import sys
import os
import socket
import time
from pathlib import Path

# Set up paths for iCloud access
ICLOUD_PATH = Path("/Users/exqbitmac/Library/Mobile Documents/com~apple~CloudDocs/Zeitklingen")

def test_mcp_connection():
    """
    Test the MCP connection using the Model Context Protocol
    """
    # MCP verwendet das JSON-RPC Protokoll
    request = {
        "jsonrpc": "2.0",
        "id": 1,
        "method": "initialize",
        "params": {
            "protocolVersion": "2024-11-05",
            "capabilities": {},
            "clientInfo": {
                "name": "test-client",
                "version": "0.1.0"
            }
        }
    }
    
    # Versuche verschiedene Ports
    ports = [5678, 8000, 3000, 1234]
    
    for port in ports:
        print(f"\nTesting connection to localhost:{port}...")
        try:
            # Create a socket connection
            with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                s.settimeout(2)  # Short timeout
                s.connect(("localhost", port))
                
                # Send the initialize request
                s.sendall((json.dumps(request) + "\n").encode())
                
                # Wait for response
                response = s.recv(4096).decode()
                print(f"Response: {response}")
                
                # If we got a response, try to list tools
                tools_request = {
                    "jsonrpc": "2.0",
                    "id": 2,
                    "method": "tools/list",
                    "params": {}
                }
                
                s.sendall((json.dumps(tools_request) + "\n").encode())
                tools_response = s.recv(4096).decode()
                print(f"Tools response: {tools_response}")
                
                return port
        except ConnectionRefusedError:
            print(f"Connection refused on port {port}")
        except socket.timeout:
            print(f"Connection timeout on port {port}")
        except Exception as e:
            print(f"Error: {str(e)}")
    
    return None

def test_tool_call(port, tool_name, parameters=None):
    """
    Test a specific tool call
    """
    print(f"\nTesting tool: {tool_name} on port {port}")
    
    # Create tool call request
    request = {
        "jsonrpc": "2.0",
        "id": 3,
        "method": "tools/call",
        "params": {
            "name": tool_name,
            "parameters": parameters or {}
        }
    }
    
    try:
        # Create a socket connection
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.settimeout(5)  # Longer timeout for tool calls
            s.connect(("localhost", port))
            
            # Send the tool call request
            s.sendall((json.dumps(request) + "\n").encode())
            
            # Wait for response
            response = s.recv(4096).decode()
            print(f"Response: {response}")
            return json.loads(response)
    except Exception as e:
        print(f"Error: {str(e)}")
        return None

if __name__ == "__main__":
    print(f"Testing FastMCP server for Zeitklingen Supabase...")
    print(f"iCloud-Pfad: {ICLOUD_PATH}")
    
    # Find the correct port
    port = test_mcp_connection()
    
    if port:
        print(f"\n✅ Successfully connected to MCP server on port {port}")
        
        # Test read_cards tool
        test_tool_call(port, "read_cards", {"class_type": "Chronomant"})
        
        # Test read_player_progress tool
        test_tool_call(port, "read_player_progress", {"player_id": "player123"})
    else:
        print("\n❌ Could not connect to MCP server on any port")
        
        # Try to start the server
        print("\nAttempting to start the server...")
        server_path = ICLOUD_PATH / "zk-commands" / "mcp_supabase_server.py"
        python_path = ICLOUD_PATH / "venv" / "bin" / "python"
        
        if server_path.exists() and python_path.exists():
            import subprocess
            subprocess.Popen([str(python_path), str(server_path)])
            print(f"Started server: {server_path}")
            print("Waiting 5 seconds for server to start...")
            time.sleep(5)
            
            # Try connection again
            port = test_mcp_connection()
            if port:
                print(f"\n✅ Successfully connected to MCP server on port {port}")
                
                # Test read_cards tool
                test_tool_call(port, "read_cards", {"class_type": "Chronomant"})
            else:
                print("\n❌ Still could not connect to MCP server")
