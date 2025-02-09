import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="track"
export default class extends Controller {
  static outlets = ['music-player']

  connect() {
    console.log('Connecting to data-controller="track"')
  }

  play() {
    this.musicPlayerOutlet.playMusic(
      this.element.dataset.audioUrl,
      this.element.dataset.audioTitle
    )
  }
}
