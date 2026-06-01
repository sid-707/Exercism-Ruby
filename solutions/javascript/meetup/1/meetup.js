//
// This is only a SKELETON file for the 'Meetup' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const weekdays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

export const meetup = (year, monthOneBased, descriptor, dayOfWeek) => {
  const month = monthOneBased - 1;
  const firstDateOfMonth = new Date(year, month);
  let date = firstDateOfMonth.getDate();
  let weekdayIndex = firstDateOfMonth.getDay();

  while (weekdays[weekdayIndex] !== dayOfWeek) {
    weekdayIndex += 1;
    date += 1;
    if (weekdayIndex >= weekdays.length) weekdayIndex = 0;
  }

  return getDateFromDescriptor(year, month, date, dayOfWeek, descriptor);
};

const getDateFromDescriptor = (year, month, date, dayOfWeek, descriptor) => {
  if (descriptor === 'teenth') {
    return getDateOfTeenth(year, month, date, dayOfWeek);
  } else {
    switch (descriptor) {
      case 'first':
        return new Date(year, month, date);
      case 'second':
        return new Date(year, month, date + 7);
      case 'third':
        return new Date(year, month, date + 14);
      case 'fourth':
        return new Date(year, month, date + 21);
      case 'fifth':
        return new Date(year, month, date + 28);
      case 'last':
        return lastDateOfMonth(year, month, date, dayOfWeek);
    }
  }
}

const lastDateOfMonth = (year, month, date, dayOfWeek) => {
  const daysArr = [28, 21, 14, 7, 0];
  let i;
  for (i = 0; daysArr.length; i++) {
    const days = daysArr[i];
    const lastDate = new Date(year, month, date + days);
    const lastDay = weekdays[lastDate.getDay()];
    if (lastDay === dayOfWeek && month === lastDate.getMonth()) return lastDate;
  }
}

const getDateOfTeenth = (year, month, date, dayOfWeek) => {
  while (![13, 14, 15, 16, 17, 18, 19].includes(date)) {
    date += 1;
  }

  while (dayOfWeek !== weekdays[(new Date(year, month, date)).getDay()]) {
    date += 1;
  }

  return new Date(year, month, date);
}