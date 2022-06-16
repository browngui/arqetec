import {useState} from 'react'
import './App.css';


function App() {
  const [number, setNumber] = useState(0);



  return (
    <div className="App">
      <h1> Value: {number}</h1>
      <button onClick={ () => { setNumber(number - 1)} }> Subtrair</button>
      <button onClick={ () => { setNumber(number + 10)} }> Somar</button>
    </div>
  );
}

export default App;
