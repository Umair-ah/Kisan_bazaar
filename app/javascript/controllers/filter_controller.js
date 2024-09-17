// app/javascript/controllers/filter_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["district", "taluka"];

  async updateTalukas() {
    const districtId = this.districtTarget.value;
    if (districtId) {
      const response = await fetch(`/districts/${districtId}/talukas`);
      const talukas = await response.json();

      this.talukaTarget.innerHTML = talukas.map(taluka => 
        `<option value="${taluka}">${taluka}</option>`
      ).join('');
    } else {
      this.talukaTarget.innerHTML = `<option value="">Select Taluka</option>`;
    }
  }
}
