import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "assignTask" ]

  openModal() {
    this.assignTaskTarget.classList.remove('hidden')
  }
}