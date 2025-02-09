import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="music-player"
export default class extends Controller {
  static targets = ['audio', 'title']

  connect() {
    console.log('Connecting to data-controller="music-player"')
  }

  playMusic(source, title) {
    this.audioTarget.src = source
    this.titleTarget.textContent = title
    this.audioTarget.play()
    this.element.classList.remove("hidden")
  }
}
