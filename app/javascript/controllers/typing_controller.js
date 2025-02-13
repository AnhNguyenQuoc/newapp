import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="typing"
export default class extends Controller {
  static targets = ["text"]

  connect() {
    const text = this.textTarget.textContent
    this.textTarget.textContent = ''
    
    let index = 0
    const typeWriter = () => {
      if (index < text.length) {
        this.textTarget.textContent += text.charAt(index)
        index++
        setTimeout(typeWriter, 100) // Adjust typing speed here (ms)
      }
    }
    
    typeWriter()
  }
}
