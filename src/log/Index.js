// En src/log/index.js
import React, { useState, useEffect } from 'react';
import './Index.css';

const Login = () => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [qrCode, setQRCode] = useState('');
  const [showQR, setShowQR] = useState(false);

  useEffect(() => {
    const generateQRCode = () => {
      const randomQRCode = Math.random().toString(36).substring(7);
      setQRCode(randomQRCode);
    };

    const intervalId = setInterval(generateQRCode, 5000);

    return () => {
      clearInterval(intervalId);
    };
  }, []);

  const handleSubmit = (event) => {
    event.preventDefault();
    setShowQR(true);
  };

  return (
    <div className="login-container">
      {!showQR ? (
        <>
          <div className="form-container">
            <form onSubmit={handleSubmit}>
              <input type="text" placeholder="Usuario" value={username} onChange={(e) => setUsername(e.target.value)} />
              <input type="password" placeholder="Contraseña" value={password} onChange={(e) => setPassword(e.target.value)} />
              <button type="submit">Iniciar Sesión</button>
            </form>
          </div>
          <div className="qr-container">
            {/* Mostrar el código QR generado */}
            <img src={`https://api.qrserver.com/v1/create-qr-code/?data=${qrCode}`} alt="Código QR" />
          </div>
        </>
      ) : (
        <div className="qr-container">
          <img src={`https://api.qrserver.com/v1/create-qr-code/?data=${qrCode}`} alt="Código QR" />
        </div>
      )}
    </div>
  );
};

export default Login;
