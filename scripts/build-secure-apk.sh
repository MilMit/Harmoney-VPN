#!/usr/bin/env bash
set -euo pipefail

# Automated secure release APK build script with full Flutter obfuscation
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
APP_DIR="${ROOT_DIR}/apps/flutter"
SYMBOLS_DIR="${ROOT_DIR}/build_symbols"

echo "=== Building Hardened Release APK for Harmoney ==="
echo "Working directory: ${APP_DIR}"
echo "Symbols destination: ${SYMBOLS_DIR}"

mkdir -p "${SYMBOLS_DIR}"
cd "${APP_DIR}"

flutter pub get

# Obfuscate all Dart AOT classes, functions, and string metadata
flutter build apk --release \
  --obfuscate \
  --split-debug-info="${SYMBOLS_DIR}"

echo ""
echo ">>> SUCCESS: Hardened APK built successfully!"
echo ">>> Keep ${SYMBOLS_DIR} private; do NOT publish it with the APK."
