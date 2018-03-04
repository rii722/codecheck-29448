require './app/main'

main(ARGV)

text = ""
puts "HEllo #{text}!"

"use strict";

const expect = require("chai").expect;
const codecheck = require("codecheck");
const app = codecheck.consoleApp(process.env.APP_COMMAND);

describe("CLI App", () => {
  it("outputs 'Hello #{text}!' when given '#{text}' as an argument", () => {
  	return app.codecheck("#{text}").then( result =>  {
      expect(result.code).to.equal(0, "expected codecheck CLI to exit with status code 0");
      expect(result.stdout.join("")).to.equal("Hello World!");
  	})
  });
