import React from 'react';
import { useSelector } from 'react-redux';
import Login from './Login';


function Home(props) {
  props.change();
  const ownerObject = useSelector((state)=>{ return state.ownerObject})

  return (
    <>

   <div style={{textAlign:"right" ,padding:"50px"}}>
      <h5>Welcome To Smash The Court</h5>
      <h2>{ownerObject.firstName+" "+ownerObject.lastName}</h2>
    </div>
  
    </>
  );
}

export default Home;
