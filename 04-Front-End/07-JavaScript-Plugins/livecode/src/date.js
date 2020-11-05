import utc from 'dayjs/plugin/utc';
import dayjs from 'dayjs';

dayjs.extend(utc);

const formatDate = (date, offset) => dayjs(date).utcOffset(offset / 60).format('DD MMMM YYYY');

export {
  formatDate
};
