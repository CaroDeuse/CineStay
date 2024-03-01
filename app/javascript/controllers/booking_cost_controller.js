import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["nightsNumber", "totalPrice"]

  connect() {
    console.log("Hey I'm trying to do some JS")
  }

  updateFields(event) {
    console.log("I'm binding an event");
    console.log(event);
    this.nightsNumberTarget.innerText = "Bingo!";
    this.totalPriceTarget.innerText = "re-Bingo!";
    // how do i update this text? do i need values?


  }
}
