#!/usr/bin/env python3
"""
Test-Skript für den MCP-Server mit Claude Desktop Integration
"""

import json
import sys
import os
import requests
from pathlib import Path

# Set up paths for iCloud access
ICLOUD_PATH = Path("/Users/exqbitmac/Library/Mobile Documents/com~apple~CloudDocs/Zeitklingen")

def test_supabase_tool(tool_name, parameters=None):
    """
    Test a tool in the Supabase MCP server using the Claude Desktop API
    """
    print(f"Testing tool: {tool_name}")
    
    # Claude Desktop verwendet einen lokalen HTTP-Server für die MCP-Kommunikation
    url = "http://localhost:1234/v1/tools"
    
    # Bereite die Anfrage vor
    payload = {
        "provider": "supabase",  # Der Name des Providers in der Claude Desktop Konfiguration
        "name": tool_name,       # Der Name des Tools
        "parameters": parameters or {}
    }
    
    print(f"Sending request to {url}:")
    print(json.dumps(payload, indent=2))
    
    try:
        # Sende die Anfrage
        response = requests.post(url, json=payload)
        
        # Überprüfe die Antwort
        if response.status_code == 200:
            print("✅ Tool call successful!")
            print("Response:")
            print(json.dumps(response.json(), indent=2))
            return response.json()
        else:
            print(f"❌ Error: Status code {response.status_code}")
            print(response.text)
            return None
    except Exception as e:
        print(f"❌ Error: {str(e)}")
        return None

def test_all_tools():
    """Test all tools in the Supabase MCP server"""
    
    # Test read_cards
    print("\n=== Testing read_cards ===")
    test_supabase_tool("read_cards", {"class_type": "Chronomant"})
    
    # Test read_player_progress
    print("\n=== Testing read_player_progress ===")
    test_supabase_tool("read_player_progress", {"player_id": "player123"})
    
    # Test read_world_data
    print("\n=== Testing read_world_data ===")
    test_supabase_tool("read_world_data")

if __name__ == "__main__":
    print(f"Testing Claude Desktop MCP integration for Zeitklingen Supabase...")
    print(f"iCloud-Pfad: {ICLOUD_PATH}")
    
    # Führe die Tests durch
    test_all_tools()
