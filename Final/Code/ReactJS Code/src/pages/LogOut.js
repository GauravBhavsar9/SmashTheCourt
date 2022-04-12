import React from 'react'
import { useDispatch, useSelector } from 'react-redux';

export default function Logout() {

    const ownerObject = useSelector((state)=>{ return state.ownerObject})
    const dispatch = useDispatch();

    let logOutAction = () => {
        dispatch({ type: "logout" });
    };

    logOutAction();

  return (
    <div>
        <h1>You Have Logged Out Successfully</h1>
        <a href="http://localhost:9090/"><h1>Home Page</h1></a>
    </div>
  )
}
