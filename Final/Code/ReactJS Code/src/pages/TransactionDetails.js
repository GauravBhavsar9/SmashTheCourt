import React from "react";

export default function TransactionDetails() {
  return (
    <div>
      <h2 style={{ textAlign: "center", margin: "50px" }}>TRANSACTION DETAILS</h2>

      <div style={{ width: "80%", margin: "70px 150px" }}>
        <table className="table table-striped table-hover">
          <thead>
            <tr>
              <th scope="col">Id</th>
              <th scope="col">User Id</th>
              <th scope="col">Court Id</th>
              <th scope="col">From</th>
              <th scope="col">To</th>
              <th scope="col">Slot</th>
              <th scope="col">Booking Date</th>
              <th scope="col">Total Amount</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>Mark</td>
              <td>Otto</td>
              <td>Otto</td>
              <td>Otto</td>
              <td>@mdo</td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>Jacob</td>
              <td>Thornton</td>
              <td>@fat</td>
              <td>@fat</td>
              <td>@fat</td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td colspan="2">Larry the Bird</td>
              <td>@twitter</td>
              <td>@twitter</td>
              <td>@twitter</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  );
}
