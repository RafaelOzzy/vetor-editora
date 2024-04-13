// app/javascript/controllers/unique_selection_controller.js

import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static values = { dropdownsSelector: String };

  connect() {
    this.dropdowns = this.element.querySelectorAll(this.dropdownsSelectorValue);
    this.setupEventListeners();
  }

  setupEventListeners() {
    this.dropdowns.forEach((dropdown) => {
      dropdown.addEventListener("change", () => {
        const selectedValue = dropdown.value;
        this.updateOptions(selectedValue);
      });
    });
  }

  updateOptions(selectedValue) {
    this.dropdowns.forEach((dropdown) => {
      if (dropdown.value !== selectedValue) {
        const options = dropdown.querySelectorAll("option");
        options.forEach((option) => {
          option.disabled = option.value === selectedValue;
        });
      }
    });
  }
}
