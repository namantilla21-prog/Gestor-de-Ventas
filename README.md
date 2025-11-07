# GestorVentasWeb - Prototipo Completo

**Qué contiene**
- Aplicación web en React (CRA) para registrar ventas, metas, recordatorios y seguimiento posventa.
- Autenticación con Firebase (email/password).
- Dashboard con cálculo de cumplimiento frente a meta mensual.
- Registro de recordatorios y notificaciones in-app.
- Export simple a CSV desde el frontend.
- Plantilla de Cloud Functions (functions/) para enviar notificaciones por correo (SendGrid) y push (FCM).
- Instrucciones para desplegar en Firebase Hosting y Functions.
- Licencia: MIT (modifica a tu gusto).

**Estructura**
```
gestor_ventas_web/
├─ public/
│  └─ index.html
├─ src/
│  ├─ App.jsx
│  └─ firebase.js
├─ functions/
│  ├─ package.json
│  └─ index.js
├─ package.json
├─ firebase.json
├─ .firebaserc
└─ README.md
```

## Cómo probar localmente (resumen)
1. Tener Node.js (v18+ recomendado) y npm instalados.
2. Descomprime este ZIP.
3. Reemplaza la configuración de Firebase en `src/firebase.js` con tu `firebaseConfig`.
4. En la raíz del proyecto:
   ```bash
   npm install
   npm start
   ```
5. Para funciones (opcional):
   ```bash
   cd functions
   npm install
   # configura SENDGRID_API_KEY, FCM_SERVER_KEY y FIREBASE_ADMIN_* vars según tu proyecto
   firebase deploy --only functions
   ```

## Deploy a Firebase (Hosting + Functions)
1. Instala CLI: `npm install -g firebase-tools`
2. `firebase login`
3. `firebase init` -> selecciona Hosting y Functions (React build dir = build)
4. Reemplaza env vars en Functions con `firebase functions:config:set sendgrid.key="..." fcm.key="..."`
5. `npm run build` y `firebase deploy --only hosting,functions`

## Notas importantes
- Las notificaciones push requieren configurar Firebase Cloud Messaging y el servidor (FCM) con la clave correspondiente.
- Para envíos de correo se provee integración con SendGrid (reemplaza la clave en functions config).
- Este repositorio es un prototipo: ajustar reglas de Firestore y seguridad antes de producción.