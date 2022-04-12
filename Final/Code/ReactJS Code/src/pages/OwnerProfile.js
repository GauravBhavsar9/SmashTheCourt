import React, { Component } from "react";
import { connect } from "react-redux";

class OwnerProfile extends Component {
  updateProfile = (
    ownerId,
    firstName,
    lastName,
    email,
    password,
    mobileNo,
    question,
    questionAns,
    isActive
  ) => {

    // `http://localhost:9090/ownerdetails/updateowner/${ownerId}/${firstName}/${lastName}/${email}/${password}/${mobileNo}/${question}/${questionAns}/1`
    // let url = "http://localhost:9090/ownerdetails/updateowner/"+ownerId+"/"+firstName+"/"+lastName+"/"+email+"/"+password+"/"+mobileNo+"/"+question+"/"+questionAns+"/"+1;

    fetch(
      `http://localhost:9090/ownerdetails/updateowner/${ownerId}/${firstName}/${lastName}/${email}/${password}/${mobileNo}/" "/${questionAns}/1`,
      {
        method: "POST",
        mode: 'no-cors',
      }
    );
  };
  update = () => {
    let ownerId = this.props.ownerObject.ownerId;
    let email = this.props.ownerObject.email;
    let question = this.props.ownerObject.question;
    let firstName = this.props.ownerObject.firstName;
    let lastName = this.props.ownerObject.lastName;
    let password = this.props.ownerObject.password;
    let mobileNo = this.props.ownerObject.mobileNo;
    let questionAns = this.props.ownerObject.questionAns;
    let isActive = 1;
    if (document.getElementById("firstName").value !== "") {
      firstName = document.getElementById("firstName").value;
    }
    if (document.getElementById("lastName").value !== "") {
      lastName = document.getElementById("lastName").value;
    }
    if (document.getElementById("password").value !== "") {
      password = document.getElementById("password").value;
    }
    if (document.getElementById("mobileNo").value !== "") {
      mobileNo = document.getElementById("mobileNo").value;
    }
    if (document.getElementById("questionAns").value !== "") {
      questionAns = document.getElementById("questionAns").value;
    }

    console.log(ownerId, firstName, lastName, email, password, mobileNo, question, questionAns, isActive);
    this.updateProfile(ownerId, firstName, lastName, email, password, mobileNo, question, questionAns, isActive);
    alert("Data Updated Successfully !!!!!");
  };

  render() {
    return (
      <div>
        <div style={{ marginLeft: "500px" }}>
          <div className="col-md-5 border-right">
            <div className="p-3 py-5">
              <div className="d-flex justify-content-between align-items-center mb-3">
                <h4 className="text-right">Profile Settings</h4>
              </div>

              <div className="row mt-2">
                <div className="col-md-6">
                  <label className="labels">First Name</label>
                  <input
                    type="text"
                    className="form-control"
                    id="firstName"
                    name="firstName"
                    placeholder={this.props.ownerObject.firstName}
                  />
                </div>

                <div className="col-md-6">
                  <label className="labels">Last Name</label>
                  <input
                    type="text"
                    className="form-control"
                    id="lastName"
                    name="lastName"
                    placeholder={this.props.ownerObject.lastName}
                  />
                </div>

                <div className="col-md-12">
                  <label className="labels">Email ID</label>
                  <input
                    type="text"
                    className="form-control"
                    id="email"
                    name="email"
                    placeholder={this.props.ownerObject.email}
                    readOnly
                  />
                </div>
              </div>
              <div className="row mt-3">
                <div className="col-md-12">
                  <label className="labels">Mobile Number</label>
                  <input
                    type="text"
                    className="form-control"
                    id="mobileNo"
                    name="mobileNo"
                    placeholder={this.props.ownerObject.mobileNo}
                  />
                </div>

                <div className="col-md-12">
                  <label className="labels">Password</label>
                  <input
                    type="text"
                    className="form-control"
                    id="password"
                    name="password"
                    placeholder={this.props.ownerObject.password}
                  />
                </div>

                <div className="col-md-12">
                  <label className="labels">Security Question</label>
                  <input
                    type="text"
                    className="form-control"
                    id="question"
                    name="question"
                    placeholder={this.props.ownerObject.question}
                    readOnly
                  />
                </div>
                <div className="col-md-12">
                  <label className="labels">Answer</label>
                  <input
                    type="text"
                    className="form-control"
                    id="questionAns"
                    name="questionAns"
                    placeholder={this.props.ownerObject.questionAns}
                  />
                </div>
              </div>

              <div className="mt-5 text-center">
                <button
                  className="btn btn-primary profile-button"
                  type="button"
                  onClick={this.update}
                >
                  Update Profile
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

function mapStateToProps(state) {
  const ownerObject = state.ownerObject;
  return {
    ownerObject,
  };
}
export default connect(mapStateToProps)(OwnerProfile);
