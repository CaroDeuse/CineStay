import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["nightsNumber", "totalPrice", "startDate"]

  connect() {
    console.log("Hey I'm trying to do some JS")
  }

  updateFields(event) {
    console.log(event);
    console.log(this.startDateTarget);
    this.nightsNumberTarget.innerText = "Bingo!";
    this.totalPriceTarget.innerText = "re-Bingo!";
    // how do i update this text? do i need values?


  }
}
