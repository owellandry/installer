import React, { useState } from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faDownload } from '@fortawesome/free-solid-svg-icons';
import './Style.css';
import data from '../data/App.json';
import axios from 'axios'; // Importar axios

const ProgramList = () => {
  const [selectedPrograms, setSelectedPrograms] = useState([]);

  const handleProgramClick = (programId) => {
    if (selectedPrograms.includes(programId)) {
      setSelectedPrograms(selectedPrograms.filter(id => id !== programId));
    } else {
      setSelectedPrograms([...selectedPrograms, programId]);
    }
  };

  const handleDownloadSelected = () => {
    axios.post('http://localhost:3001/download', { selectedPrograms })
      .then(response => {
        console.log('Programas descargados:', response.data);
      })
      .catch(error => {
        console.error('Error al descargar los programas:', error);
      });
  };

  return (
    <div className="program-list-container">
      <h1 className="program-list-heading">Lista de Programas de Programación</h1>
      <div className="program-list">
        {data.PROGRAMS.map(program => (
          <div key={program.id} className={`program-card ${selectedPrograms.includes(program.id) ? 'selected' : ''}`} onClick={() => handleProgramClick(program.id)}>
            <div className="program-content">
              <div className='kj-cod-ga'>
                <FontAwesomeIcon icon={faDownload} className="program-icon" />
                <span className="program-name">{program.name}</span>
              </div>
              <p className="program-description">{program.description_short}</p>
            </div>
          </div>
        ))}
      </div>
      {selectedPrograms.length > 0 && (
        <button className="download-button" onClick={handleDownloadSelected}>Descargar</button>
      )}
    </div>
  );
};

export default ProgramList;
