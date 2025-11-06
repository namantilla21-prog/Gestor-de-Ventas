

---

## Personalización realizada
He personalizado esta entrega para **Nelson Mantilla**.  
Incluye:
- Instrucciones paso a paso para desplegar en Firebase.
- Plantillas para SendGrid y FCM en `functions/`.
- Scripts auxiliares para preparar el repo y desplegar.

## Pasos recomendados (rápido)
1. Descomprime el ZIP.
2. Reemplaza `src/firebase.js` con tu `firebaseConfig`.
3. Configura variables en Functions:
   ```bash
   firebase functions:config:set sendgrid.key="YOUR_SENDGRID_KEY"
   firebase functions:config:set fcm.key="YOUR_FCM_SERVER_KEY"
   ```
4. Para probar localmente:
   ```bash
   npm install
   npm start
   ```
5. Para deploy (Hosting + Functions):
   ```bash
   npm run build
   firebase deploy --only hosting,functions
   ```
