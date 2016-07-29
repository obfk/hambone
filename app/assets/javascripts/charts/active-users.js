var chart = c3.generate({
  bindto: '#chart-active-users',
  data: {
    columns: [
      ['Active30', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      ['Active60', 2, 4, 8, 6, 3, 2, 9, 12, 7, 11, 11, 10],
      ['Active90', 5, 1, 9, 12, 4, 2, 5, 3, 20, 1, 2, 11],
    ],
    type: 'bar'
  },
  legend: {
    position: 'right'
  },
  bar: {
    width: {
      ratio: 1.01
    }
  },
  axis: {
    y: {
      label: {
        text: '# of Users',
        position: 'outer-middle'
      }
    },
    x: {
      label: {
        text: 'Month',
        position: 'outer-center'
      },
      tick: {
        values: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
      }
    }
  }
});
