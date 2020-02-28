import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
import moment from "moment";

flatpickr("#start_date", {
  altInput: true,
  "plugins": [new rangePlugin({ input: "#end_date"}) ],
   minDate: moment().format("YYYY-MM-DD")
});

