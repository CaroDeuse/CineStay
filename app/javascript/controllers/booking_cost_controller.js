import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["nightsNumber", "totalPrice", "startDate", "endDate"]

  connect() {
    console.log("Hey I'm trying to do some JS")
  }

  updateFields(event) {


    console.log("start date");
    console.log(Date(this.startDateTarget.value));
    console.log(typeof Date(this.startDateTarget.value));
    console.log("end date");
    console.log(Date(this.endDateTarget.value));

    const startDate = new Date(this.startDateTarget.value)
    const endDate = new Date(this.endDateTarget.value)



    this.nightsNumberTarget.innerText = endDate - startDate;
    // this.nightsNumberTarget.innerText = Date(this.endDateTarget.value) - Date(this.startDateTarget.value);
    this.totalPriceTarget.innerText = 6 - 4;

  }
}

/*
In your show page I just added input_html before the data cuz were
targeting the input part of the code and simple form creates a wrapper
around the input and the label the hints ertc etc

In you JS I just added .value to the this.startDateTarget so
that we can see the value added in the form, I advise you to do
the flatpicker first so that your inputs are just one text field
and easier than now were you have 3 different ones and will have
to join three diferents values just to have a date  */
