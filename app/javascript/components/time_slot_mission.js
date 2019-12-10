const selectTimeSlot = (e) => {
  const timeSlots = document.querySelectorAll('.time-slot-selection-wrapper label');

  timeSlots.forEach((time) => {
    time.classList.remove('time-slot-active');
  });
  e.currentTarget.classList.add('time-slot-active');
};

const listenForTimeSlotSelection = () => {
  const timeSlots = document.querySelectorAll('.time-slot-selection-wrapper label');

  if (timeSlots.length != 0) {
    timeSlots.forEach((time) => {
      time.addEventListener('click', selectTimeSlot)
    });
  }
}

export { listenForTimeSlotSelection };
