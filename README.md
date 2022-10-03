# Testing

At Salt we value testing very highly since we know that our clients appreciate that our developers are confident in how to test. Testing applications give software development teams a peace of mind, knowing that whenever a bug is about to be introduced, the tests will make sure that it doesn't reach production code. It's simply a question of ensuring the quality of a project.

When testing, there's one golden rule: _Testing should be simple_. As developers, we're already spending a lot of our cognitive energy on the complexity of our production code which is why we want the testing to be easy and pleasant. Naturally, this is not going to be the case if you've never written any code tests before, but practice makes perfect. That's why at Salt, you'll be writing tests in almost every project/test/lab.

## Test runners - Mocha and Jest

There are many testing frameworks suitable for JavaScript code, but some are more widely used and popular than others. At Salt we've decided to focus on [_Mocha_](https://mochajs.org/) and [_Jest_](https://jestjs.io/en/). Both are test runners, but they have their differences.

The major difference between the two is that while Mocha provides a _base test framework_ to which you can add assertion, mocking and spy libraries of choice (like the [_Chai_](https://www.chaijs.com/) assertion library for example), Jest comes with built-in assertion and mocking abilities. Furthermore, since _Jest_ is developed by Facebook, it's highly suitable for testing _React_ applications which we'll do later in the course.

Even though Jest has gained a lot of traction lately, we know that Mocha is still widely used which is why we expect you to become comfortable with both test runners.

## The Test Pyramid

As mentioned above you will be testing extensively at Salt. Most of the tests that you will be writing are so called _Unit Tests_. There are also other kinds of tests and we normally divide tests into the following categories: Unit Tests, Integration Tests and UI Tests (End-to-End Tests). The categories have their respective place within the so called _Test Pyramid_:

<img src="https://miro.medium.com/max/2444/1*Tcj3OsK8Kou7tCMQgeeCuw.png"
     alt="Markdown Monster icon"
     style="float: left; margin-right: 10px; height: 300px" />

As shown in the visualization above, a testing portfolio should normally focus on the unit tests as these are both cheaper and faster to perform. However, some integration and E2E tests are necessary to ensure an applications quality, so even though the main focus will be on unit tests, we we will also focus on integration and E2E tests.

## Testing during the course

At Salt you're expected to set up a test runner in each and every project. You're also expected to write your own tests in most projects. However, initially, in the _Salt Stars_ project, you'll be handed the test files as these will be guiding you throughout the project (but you still need to setup the test runner).

In each lab we'll instruct whether you should set up a Mocha or a Jest test runner, and also if you need to install any further testing tools (like _Supertest_ for example).

To create a basic testing setup with Mocha or Jest run the following command in the root of your project: `npm install [mocha/jest] --save-dev`. Then all you need to do is to create the test command described in the `package.json`s.

For TypeScript to work properly, you need to install some additional types and tools:

```bash
npm i typescript ts-node mocha --save-dev
npm i @types/node [@types/mocha @types/jest] @types/chai --save-dev
```

## This Repository

In this repository we've set up two very bare-bones application structures in which we're using a basic _Mocha_ setup and _Jest_ setup, respectively. Install the dependencies with `npm install` and try out the scripts `npm run test` in each of the projects. Compare the results in of the terminal output with the comments in the `index.js` files to see if you managed to run the tests correctly. Also note the differences in `package.json` setups and in assertion syntax between Mocha and Jest. As mentioned above, this has to do with that Mocha doesn't include a specific assertion library. If you want to use a more semantic assertion library, implement _Chai_ into your tests.

The two application structures are obviously very basic and there are many more features to both test runners. Check out Mocha's and Jest's respective documentations to see what you can do with each of the tools.

## Writing tests

In this repository we've only written a few very straightforward tests. How to write tests is however a very big topic and there's for example different techniques for testing error handling, asynchronous code, http requests etc. We'll touch upon these techniques as we go and we've written a number of blog posts on this topic in the [protips blog](https://appliedtechnology.github.io/protips/). Here are a few of them:

- [TDD](https://appliedtechnology.github.io/protips/tdd)
- [Fail only one test](https://appliedtechnology.github.io/protips/failOnlyOneTest)
- [Have on assert per test](https://appliedtechnology.github.io/protips/oneAssertPerTest)
- [Testing for errors](https://appliedtechnology.github.io/protips/testingErrors)
- [TDD-ing a whole backend](https://appliedtechnology.github.io/protips/tddAllTheWay)

## Conclusion

Testing is very valuable for building quality applications. This is why we will practice testing a lot during this course. The test runners of our choice are _Mocha_ and _Jest_, and you will be using both during the course. Also, the main focus will be on unit tests, but we will also touch upon integration tests and E2E tests.
