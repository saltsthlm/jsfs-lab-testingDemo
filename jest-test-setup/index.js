const testFunction = (names) => {
  const numberOfNamesStartingWithA = names.filter(
    (name) => name.slice(0, 1).toUpperCase() === 'A'
  ).length;
  // return numberOfNamesStartingWithA ? numberOfNamesStartingWithA : 'None';
  // Uncomment line above to pass tests
};

module.exports = testFunction;
