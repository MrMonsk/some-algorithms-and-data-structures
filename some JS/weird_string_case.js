function toWeirdCase(string) {
  return string.split(' ').map(function (word) {
    var index = 0;
    return word.split('').map(function (letter, index) {
      if (index === 0 || index % 2 === 0) {
        index++;
        return letter.toUpperCase();
      }
      index++;
      return letter.toLowerCase();
    }).join('');
  }).join(' ');
}