#!/bin/zsh

# ==========================================
# ZEITKLINGEN iCLOUD SYNC SKRIPT
# Version 1.0 - Automatische .env Synchronisation
# ==========================================

# Konfiguration
SOURCE_FILE="$HOME/Library/Mobile Documents/com~apple~CloudDocs/Zeitklingen/.env"
TARGET_DIR="$HOME/Library/Mobile Documents/com~apple~CloudDocs/ZeitklingenConfig"
LOG_FILE="$HOME/Zeitklingen/sync_log.txt"

# Überprüfungen
[ ! -f "$SOURCE_FILE" ] && echo "❌ $(date) - Quelle $SOURCE_FILE nicht gefunden" >> "$LOG_FILE" && exit 1
mkdir -p "$TARGET_DIR"

# Sync-Prozess
if cp -f "$SOURCE_FILE" "$TARGET_DIR/"; then
    # Berechtigungen anpassen
    chmod 600 "$TARGET_DIR/.env"
    
    # Erfolgsmeldung
    echo "✅ $(date) - Erfolgreich gesynct nach $TARGET_DIR" >> "$LOG_FILE"
    echo "✅ Sync erfolgreich"
else
    echo "❌ $(date) - Sync fehlgeschlagen" >> "$LOG_FILE"
    echo "❌ Sync fehlgeschlagen" >&2
    exit 1
fi
