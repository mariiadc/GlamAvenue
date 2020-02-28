  const calc = () => {

  let endDateElement = document.querySelector('#start_date');

  endDateElement.addEventListener("input", function() {
    event.preventDefault();

    // setTimeout(function(){

      endDateElement = document.querySelector('#start_date').value;
      let datesString = endDateElement.split(" to ");

      let startString = datesString[0].split("-");

      if (!datesString[1]) {
        return;
      }

      let endString = datesString[1].split("-");

      let startDate = new Date(startString[0], startString[1], startString[2]);
      let endDate = new Date(endString[0], endString[1], endString[2]);

      let days = Math.round((endDate - startDate)/(1000*60*60*24));
      let priceDay = document.getElementById('price').innerText.split(" ")[0];

      let totalPrice = days * priceDay;  // in js.erb you can use ruby code. use that for the price instead of querys

      let paramaterTotal = document.getElementById('show-price');
      let html = `<strong><p>Total price: ${totalPrice} $</p></strong>`;

      paramaterTotal.innerHTML = html;

    // }, 2000);

  });
};
export { calc };
