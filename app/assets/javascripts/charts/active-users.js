active_30.unshift('Active30');
active_60.unshift('Active60');
active_90.unshift('Active90');

var chart = c3.generate({
  bindto: '#chart-active-users',
  data: {
    columns: [
      active_90,
      active_60,
      active_30
    ]
  },
  axis: {
    x: {
      label: 'Time'
    },
    y: {
      label: '# of Users'
    }
  },
  legend: {
    position: 'right'
  }
});
