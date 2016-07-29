var chart = c3.generate({
  bindto: '#chart',
  data: {
    columns: [
      ['data30', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
      ['data60', 2, 4, 8, 6, 3, 2, 9, 12, 7, 11, 11, 10]
    ],
    type: 'bar'
  },
  legend: {
    position: 'right'
  },
  bar: {
    width: {
      ratio: 1
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
      }
    }
  }
});
