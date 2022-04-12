import React, { Component } from 'react'
import { connect } from 'react-redux';

class Club extends React.Component {

  constructor() {
    super();
    this.state = {
      clubs:[],
      addFlag: false,
    };
  }
  componentDidMount=()=>{
    let ownerId = this.props.ownerObject.ownerId;
    var promise = fetch(`http://localhost:9090/clubDetails/getclubbyownerid/${ownerId}`, {
      method: "GET",
    });
    var anotherpromise = promise.then((response) => {
      return response.json();
    });
    anotherpromise.then((jsondataarr) => {
      this.setState({
        clubs: jsondataarr,
      });
    });

    promise.catch((err) => {
      console.log(err);
    });

    console.log("Heyyyyy Buddy I Am Here");
    // this.setState({clubs:[this.state.club]})
  };


  

  
  showAll = () => {
    let ownerId = this.props.ownerObject.ownerId;
    var promise = fetch(`http://localhost:9090/clubDetails/getclubbyownerid/${ownerId}`, {
      method: "GET",
    });
    var anotherpromise = promise.then((response) => {
      return response.json();
    });
    anotherpromise.then((jsondataarr) => {
      this.setState({
        clubs: jsondataarr,
      });
    });

    promise.catch((err) => {
      console.log(err);
    });
  };

  deleteClub = (i) => {
    fetch(`http://localhost:9090/clubDetails/deleteclub/${i}`, {
      method: "DELETE",
    }).then(this.showAll);
    console.log("delete", i);
  };
  
  updateClub = (clubId,clubName,noCourts,city,pincode,clubAddress,clubStatus) => {
    fetch(`http://localhost:9090/clubDetails/updateclub/${clubId}/${clubName}/${noCourts}/${city}/${pincode}/${clubAddress}/${clubStatus}`, {
      method: "PUT",
    }).then(this.showAll);
  };

  addClub = (clubName, noCourts, city, pincode,clubAddress,ownerId) => {

    fetch(`http://localhost:9090/clubDetails/insertclub/${clubName}/${noCourts}/${city}/${pincode}/${clubAddress}/Open/${ownerId}`, {
      method: "POST",
    }).then(this.showAll);
  };

  add = ()=>{
    let clubName = document.getElementById("clubName").value;
    let noCourts = document.getElementById("noCourts").value;
    let city = document.getElementById("city").value;
    let pincode = document.getElementById("pincode").value;
    let clubAddress = document.getElementById("clubAddress").value;
    let ownerId =  this.props.ownerObject.ownerId; //I Can Get It From Redux Store

    this.addClub(clubName, noCourts, city, pincode,clubAddress,ownerId)
    this.setState({addFlag:false});
  }

  update = (clubId)=>{
    let clubName = document.getElementById("clubName").value;
    let noCourts = document.getElementById("noCourts").value;
    let city = document.getElementById("city").value;
    let pincode = document.getElementById("pincode").value;
    let clubAddress = document.getElementById("clubAddress").value;
    let clubStatus = "Open";
    console.log(clubId,clubName,noCourts,city,pincode,clubAddress,clubStatus);
    this.setState({flagUpdate:false});
  }

  render() {
    return (
      <div>
        <div>
       <h2 style={{ textAlign: "center", margin: "50px" }}>CLUB DETAILS</h2>
      <div style={{ width: "80%", margin: "70px 150px" }}>
      <div>
     <input type="button" style={{marginLeft:"1150px"}} className="btn-success btn-sm" value="Add Club" onClick={()=>{ this.setState({addFlag:true});}} />
     </div>
         <table className="table table-striped table-dark">
           <thead>
             <tr>
               <th scope="col">Club Name</th>
               <th scope="col">Number Of Courts</th>
               <th scope="col">City</th>
               <th scope="col">Pincode</th>
               <th scope="col">Address</th>
               <th scope="col">Status</th>
               <th scope="col">Action</th>
            </tr>
           </thead>
           <tbody>
             {this.state.clubs.map((element,index)=>{return <tr key={index}><td>{element.clubName}</td><td>{element.noCourts}</td><td>{element.city}</td><td>{element.pincode}</td><td>{element.clubAddress}</td><td>{element.clubStatus}</td><td><input type="button" className="btn-danger btn-sm" value="Delete" onClick={()=>{this.deleteClub(element.clubId)}} /></td></tr>})}
             {this.state.addFlag&&<tr><td><input type="text" placeholder='Club Name' id='clubName' name='clubName' /></td><td><input type="text" placeholder='No Of Courts' id='noCourts' name='noCourts' /></td><td><input type="text" placeholder='City' id='city' name='city' /></td><td><input type="text" placeholder='Pincode' id='pincode' name='pincode' /></td><td><input type="text" placeholder='Club Address' id='clubAddress' name='clubAddress' /></td> <td><input type="button" className="btn-success btn-sm" value="Insert Club" onClick={()=>{ this.add(); this.setState({addFlag:false});}} /></td></tr>}
           </tbody>
         </table>
       </div>

     </div>
     

      </div>
    )
  }
}

function mapStateToProps(state){
  const ownerObject = state.ownerObject;
  return{
    ownerObject
  };
}
export default connect(mapStateToProps)(Club);