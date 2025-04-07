#!/bin/bash

echo "🔧 Starte Zeitklingen MCP Server…"
cd "/Users/exqbitmac/Library/Mobile Documents/com~apple~CloudDocs/Zeitklingen/Tools/mcp-servers/src/filesystem"
node dist/index.js "/Users/exqbitmac/Library/Mobile Documents/com~apple~CloudDocs/Zeitklingen" & 
SERVER_PID=$!

echo "<0001f9e0> Windsurf starten (wenn noch nicht offen)…"
open -a "Windsurf"

echo "✅ MCP Server läuft (PID: $SERVER_PID)"
echo "⏹️  Mit 'kill $SERVER_PID' kannst du ihn später beenden."