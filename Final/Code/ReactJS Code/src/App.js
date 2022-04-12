import React, {  useState } from 'react';
import './App.css';
import Navbar from './components/Navbar';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Login from './pages/Login';
import Home from './pages/Home';
import OwnerProfile from './pages/OwnerProfile';
import Club from './pages/Club';
import Court from './pages/Court';
import TransactionDetails from './pages/TransactionDetails';
import LogOut from './pages/LogOut';

import { Provider, useSelector } from 'react-redux';
import store from './pages/store';


// import NavbarUser from './components/NavbarUser';
// import Reports from './pages/Reports';
// import Products from './pages/Products';



function App() {
  
  const ownerObject = useSelector((state)=>{ return state.ownerObject})
  const [changes, setChanges] = useState(0);

  function change(){
      let a = changes;
      setChanges(a++);
  }
  
  return (
    <>

      <Router>
        
        <Navbar />

        <Routes>
          <Route path='/' exact element={<Login change={change}/>}></Route>

          <Route path='/home' exact element={<Home change={change} name={"Gaurav Bhavsar"}/>}></Route>

          <Route path='/profile' exact element={<OwnerProfile change={change}/>}></Route>

          <Route path='/club' exact element={<Club change={change}/>}></Route>

          <Route path='/court' exact element={<Court change={change}/>}></Route>

          <Route path='/transactiondetails' exact element={<TransactionDetails change={change}/>}></Route>

          <Route path='/logout' exact element={<LogOut change={change}/>}></Route>
          
          {/* <Route path='/products' exact element={<Products change={change}/>}></Route> */}
        </Routes>
      </Router>

    </>
  );
}

export default App;
