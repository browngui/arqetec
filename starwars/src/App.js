import './App.css';
import Main from './pages/Main';
import Carousel from './components/Carousel';
import Clone from './components/Carousel/clone';
import Card from './components/Card';
import cloneCard from './components/Card/cloneCard';
import Header from './components/Header';
import cloneHeader from './components/Header/cloneHeader';
import {BrowserRouter, Route, Routes} from 'react-router-dom';
import ProtectedRouter from './protectedRouter';


function App() {
  return (
      <BrowserRouter>
        
          <Routes>
          {/* <Route path='/login' element={<Login/>}/> */}

            <Route element={<ProtectedRouter/>}> {/* Vai puxar a autenticação do usuário*/}
            <Route path='/' element={<Main/>} />
            <Route path='/Carousel' element={<Carousel/>} />
            <Route path='/Card' element={<Card/>} />
            <Route path='/Clone' element={<cloneCard/>} />
            </Route>

            {/* <Route path='*'element={<Error/>} /> */}
          </Routes>
      </BrowserRouter>




    // <div className="App">
    //   <Main/>
    // </div>
  );
}

export default App;
