import React, { useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import { Link } from "react-router-dom";
// import "./Login.css";

export default function Login(props) {
  props.change();

  const ownerObject = useSelector((state)=>{ return state.ownerObject})


  const dispatch = useDispatch();
  const [ownerObj, setOwnerObj] = useState();

  let logInAction = (obj) => {
    dispatch({ type: "login", payload:obj});
  };

  let loginAuthentication = () => {

    let email = document.getElementById("email").value;
    let password = document.getElementById("password").value;


      fetch(`http://localhost:9090/ownerdetails/reactownerlogin/${email}/${password}`, {
        method: "GET",
      }).then((response)=>{
          return response.json();
      }).then((response)=>{
        if(response === true){

            console.log("Authorised");

            var promise = fetch(`http://localhost:9090/ownerdetails/getownerbymail/${email}`, {
              method: "GET",
            });
            var anotherpromise = promise.then((response) => {
              return response.json();
            });
            anotherpromise.then((jsonobj) => {
              
              setOwnerObj(jsonobj);
              logInAction(jsonobj);
              console.log(ownerObject);
              console.log(ownerObject!=null);

            });
        
            promise.catch((err) => {
              console.log(err);
              
            });
        }
        else{
         
          alert("Incorrect Credentials");
        }
      });

  };

  return (
    <>
  <center>
        <div style={{ marginTop: "100px" }}>
          <div className="form-outline mb-4 " style={{ width: "350px" }}>
            <label className="form-label" htmlFor="form2Example1">
              Email address
            </label>
            <input
              type="email"
              id="email"
              name="email"
              className="form-control"
              placeholder="Enter Your Email Id"
            />
          </div>

          <div className="form-outline mb-4 " style={{ width: "350px" }}>
            <label className="form-label" htmlFor="form2Example2">
              Password
            </label>
            <input
              type="password"
              id="password"
              name="password"
              className="form-control"
              placeholder="Enter Password Here"
            />
          </div>

          <Link className="btn btn-primary btn-block mb-4" to="/home" onClick={loginAuthentication}>Sign In</Link>
          {/* <button
            type="button"
            className="btn btn-primary btn-block mb-4"
            onClick={loginAuthentication}
          >
            Sign in
          </button> */}
        </div>
      </center>
    </>
  );
}
