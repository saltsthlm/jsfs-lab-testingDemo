const assert = require('assert');
const testFunction = require('./index');

describe('testFunction', () => {
  it('should return the number of names with first letter "A"', () => {
    // Arrange
    const testData = ['Adam', 'Mies', 'Zachary', 'Marcus', 'John'];

    // Act
    const result = testFunction(testData);

    // Assert
    assert.equal(result, 1);
  });
  it('should return "None" if no name has A as first letter', () => {
    // Arrange
    const testData = ['Mies', 'Zachary', 'Marcus', 'John'];

    // Act
    const result = testFunction(testData);

    // Assert
    assert.equal(result, 'None');
  });
});
