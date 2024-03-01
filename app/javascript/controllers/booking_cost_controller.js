import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["nightsNumber", "totalPrice", "startDate", "endDate", "price"]

  updateFields(event) {

    const nightsNumber = (Date.parse(this.endDateTarget.value) - Date.parse(this.startDateTarget.value))/1000/60/60/24;

    this.nightsNumberTarget.innerText = nightsNumber;
    this.totalPriceTarget.innerText = this.priceTarget.innerText * nightsNumber;

  }
}
