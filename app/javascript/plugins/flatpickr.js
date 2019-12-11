import flatpickr from "flatpickr"
import "flatpickr/dist/themes/dark.css"

flatpickr("#datepicker", {
  altInput: true,
  allowInput: true,
  minDate: "today",
  dateFormat: "Y-m-d",
  // disableMobile: "true"
})
