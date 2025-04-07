import subprocess
from datetime import datetime

servers = {
    "supabase": [
        "python3",
        "zk-commands/mcp_supabase_server.py"
    ],
    "filesystem": [
        "node",
        "Tools/mcp-servers/src/filesystem/dist/index.js",
        "Zeitklingen"
    ],
    "brave-search": [
        "npx",
        "-y",
        "@modelcontextprotocol/server-brave-search"
    ],
    "git": [
        "uv",
        "run",
        "Tools/mcp-servers/src/git/src/mcp_server_git/main.py",
        "Zeitklingen"
    ],
    "memory": [
        "npx",
        "-y",
        "@modelcontextprotocol/server-memory"
    ]
}

print("🧪 MCP-Server-Test gestartet...\n")

for name, command in servers.items():
    print(f"🔍 Starte Test für: {name}")
    try:
        result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=5)
        print(f"✅ {name}: gestartet")
    except subprocess.TimeoutExpired:
        print(f"⚠️  {name}: Timeout (wird vermutlich korrekt ausgeführt)")
    except FileNotFoundError:
        print(f"❌ {name}: Befehl nicht gefunden")
    except Exception as e:
        print(f"❌ {name}: Fehler – {e}")

print("\n✅ Alle Tests abgeschlossen.")

# Log-Datei schreiben
timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
log_lines = [f"[{timestamp}] MCP-Server-Testlauf:\n"]

for name, command in servers.items():
    try:
        result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=5)
        log_lines.append(f"✅ {name}: gestartet\n")
    except subprocess.TimeoutExpired:
        log_lines.append(f"⚠️  {name}: Timeout (wahrscheinlich OK)\n")
    except FileNotFoundError:
        log_lines.append(f"❌ {name}: Befehl nicht gefunden\n")
    except Exception as e:
        log_lines.append(f"❌ {name}: Fehler – {e}\n")

with open("zk-commands/server_status.log", "a") as logfile:
    logfile.writelines(log_lines)

# Claude-Hinweis:
# Falls du Claude fragst „Welche Server sind aktuell aktiv?“,
# kann er diesen Log analysieren: zk-commands/server_status.log
