import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash"
export default class extends Controller {
  static targets = ['flash-container']

  connect() {
    this.element.animate({
      opacity: 0
    }, 3000);
    setTimeout(() => this.element.remove(), 2980);
  }
}
