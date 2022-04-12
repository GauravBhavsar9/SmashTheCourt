import React, { Component } from "react";
import { connect } from "react-redux";

class Court extends Component {
  constructor() {
    super();
    this.state = {
      courts: [],
      addFlag: false,
      cities: [],
    };
  }
  componentDidMount = () => {
    let ownerId = this.props.ownerObject.ownerId;
    var promise = fetch(
      `http://localhost:9090/courtdetails/getcourtbyownerid/${ownerId}`,
      {
        method: "GET",
      }
    );
    var anotherpromise = promise.then((response) => {
      return response.json();
    });
    anotherpromise.then((jsondataarr) => {
      this.setState({
        courts: jsondataarr,
      });
    });

    promise.catch((err) => {
      console.log(err);
    });

  };

  showAll = () => {
    let ownerId = this.props.ownerObject.ownerId;
    var promise = fetch(
      `http://localhost:9090/courtdetails/getcourtbyownerid/${ownerId}`,
      {
        method: "GET",
      }
    );
    var anotherpromise = promise.then((response) => {
      return response.json();
    });
    anotherpromise.then((jsondataarr) => {
      this.setState({
        courts: jsondataarr,
      });
    });

    promise.catch((err) => {
      console.log(err);
    });
  };

  deleteCourt = (i) => {
    console.log(i);
    fetch(`http://localhost:9090/courtdetails/deletecourt/${i}`, {
      method: "DELETE",
    }).then(this.showAll);
    console.log("delete", i);
  };

  updateCourt = (
    clubId,
    clubName,
    noCourts,
    city,
    pincode,
    clubAddress,
    clubStatus
  ) => {
    fetch(
      `http://localhost:9090/clubDetails/updateclub/${clubId}/${clubName}/${noCourts}/${city}/${pincode}/${clubAddress}/${clubStatus}`,
      {
        method: "PUT",
      }
    ).then(this.showAll);
  };

  addCourt = (clubName, courtNo, startTime, endTime, description, charges) => {
    fetch(
      `http://localhost:9090/courtdetails/insertcourt/${courtNo}/${startTime}/${endTime}/${description}/${charges}/${clubName}`,
      {
        method: "POST",
      }
    ).then(this.showAll);
  };

  add = () => {
    let clubName = document.getElementById("clubName").value;
    let courtNo = document.getElementById("courtNo").value;
    let startTime = document.getElementById("startTime").value;
    let endTime = document.getElementById("endTime").value;
    let description = document.getElementById("description").value;
    let charges = document.getElementById("charges").value;
    console.log("Add Called");
    this.addCourt(clubName, courtNo, startTime, endTime, description, charges);
    this.setState({ addFlag: false });
  };

  update = (clubId) => {
    let clubName = document.getElementById("clubName").value;
    let noCourts = document.getElementById("noCourts").value;
    let city = document.getElementById("city").value;
    let pincode = document.getElementById("pincode").value;
    let clubAddress = document.getElementById("clubAddress").value;
    let clubStatus = "Open";
    console.log(
      clubId,
      clubName,
      noCourts,
      city,
      pincode,
      clubAddress,
      clubStatus
    );
    this.setState({ flagUpdate: false });
  };

  render() {
    return (
      <div>
        <div>
          <h2 style={{ textAlign: "center", margin: "50px" }}>COURT DETAILS</h2>

          <div style={{ width: "80%", margin: "70px 150px" }}>
            <div>
              <input
                type="button"
                style={{ marginLeft: "1150px" }}
                className="btn-success btn-sm"
                value="Add Court"
                onClick={() => {
                  this.setState({ addFlag: true });
                }}
              />
            </div>
            <table className="table table-striped table-dark">
              <thead>
                <tr>
                  <th scope="col">Court No</th>
                  <th scope="col">Court Opening Time</th>
                  <th scope="col">Court Closing Time</th>
                  <th scope="col">Desciption</th>
                  <th scope="col">Charges</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
                {this.state.courts.map((element, index) => {
                  return (
                    <tr key={index}>
                      <td>{element.courtNo}</td>
                      <td>{element.startTime}</td>
                      <td>{element.endTime}</td>
                      <td>{element.description}</td>
                      <td>{element.charges}</td>
                      <td>
                        <input
                          type="button"
                          className="btn-primary btn-sm"
                          value="Delete"
                          onClick={() => {
                            this.deleteCourt(element.courtId);
                          }}
                        />
                      </td>
                    </tr>
                  );
                })}
                {this.state.addFlag && (
                  <tr>
                    <td>
                      <input
                        type="text"
                        placeholder="Club Name"
                        id="clubName"
                        name="clubName"
                      />
                    </td>
                    <td>
                      <input
                        type="text"
                        placeholder="Court No"
                        id="courtNo"
                        name="courtNo"
                      />
                    </td>
                    <td>
                      <input
                        type="text"
                        placeholder="Opening   Time"
                        id="startTime"
                        name="startTime"
                      />
                    </td>
                    <td>
                      <input
                        type="text"
                        placeholder="Court Closing Time"
                        id="endTime"
                        name="endTime"
                      />
                    </td>
                    <td>
                      <input
                        type="text"
                        placeholder="Description"
                        id="description"
                        name="description"
                      />
                    </td>
                    <td>
                      <input
                        type="text"
                        placeholder="Charges"
                        id="charges"
                        name="charges"
                      />
                    </td>{" "}
                    <td>
                      <input
                        type="button"
                        className="btn-success btn-sm"
                        value="Insert Court"
                        onClick={() => {
                          this.add();
                        }}
                      />
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
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
export default connect(mapStateToProps)(Court);
