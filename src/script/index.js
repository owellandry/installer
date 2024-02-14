import React, { useState } from 'react';
import './Menu.css';

const Menu = () => {
  const [showOptions, setShowOptions] = useState(false);

  const toggleOptions = () => {
    setShowOptions(!showOptions);
  };

  return (
    <div className={`menu ${showOptions ? 'active' : ''}`} onClick={toggleOptions}>
      <div className="menu-bar"></div>
      <div className="menu-bar"></div>
      <div className="menu-bar"></div>
      {showOptions && (
        <ul className="menu-options">
          <li className="menu-option">Seleccionar Todo</li>
          <li className="menu-option">Descargar</li>
        </ul>
      )}
    </div>
  );
};

export default Menu;
