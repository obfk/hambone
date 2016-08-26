active_date.unshift('x');

active_30.unshift('last 30 days');
active_60.unshift('last 60 days');
active_90.unshift('last 90 days');

var chart = c3.generate({
  bindto: '#chart-active-users',
  data: {
    x: 'x',
    columns: [
      active_date,
      active_30,
      active_60,
      active_90
    ],
    colors: {
      'last 30 days': '#672935',
      'last 60 days': '#E75A2C',
      'last 90 days': '#009A72'
    }
  },
  axis: {
    x: {
      type: 'timeseries',
      tick: {
        format: '%m/%Y',
        count: 8
      }
    },
    y: {
      label: '# of users'
    }
  }
});
