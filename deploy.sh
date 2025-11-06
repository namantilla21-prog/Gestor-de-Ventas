#!/usr/bin/env bash
set -e
echo "1. Reemplaza src/firebase.js con tu firebaseConfig antes de continuar."
echo "2. Asegúrate de haber hecho 'firebase login' y tener firebase-tools instalado."

npm install
npm run build

# Deploy hosting and functions
firebase deploy --only hosting,functions
