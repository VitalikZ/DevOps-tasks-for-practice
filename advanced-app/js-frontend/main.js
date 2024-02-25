import React, { useState } from 'react';
import './App.css';

function App() {
  const [quote, setQuote] = useState('');

  const fetchQuote = async () => {
    const response = await fetch('http://localhost:8000/quote');
    const data = await response.json();
    setQuote(data.quote);
  };

  return (
    <div className="App">
      <header className="App-header">
        <p>{quote || "Press the button to get a quote!"}</p>
        <button onClick={fetchQuote}>Random Quote</button>
      </header>
    </div>
  );
}

export default App;
