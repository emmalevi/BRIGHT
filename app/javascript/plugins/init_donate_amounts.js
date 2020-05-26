const initDonateAmounts = () => {
  // add listeners to all amount buttons
  const btnAmounts = document.querySelectorAll('.donate-amount-fixed')
  btnAmounts.forEach((btn) => {
    btn.addEventListener('click', (e) => {
      e.preventDefault()
      // get the amount from the button
      const amount = btn.dataset.amount
      // fill the text field with the amount
      const txtAmount = document.querySelector('.donate-amount')
      txtAmount.value = amount
    })
  })
}

export { initDonateAmounts }
