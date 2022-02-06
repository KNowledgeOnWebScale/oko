// Import Tau Prolog core
var pl = require("tau-prolog");

// Import the lists module
require("tau-prolog/modules/lists")(pl);

// Create a session
var session = pl.create(10000);

// Program
var fs = require("fs");
var program = fs.readFileSync("../weye.pl");
program += fs.readFileSync("./dt.pl");

// Goal
var goal = "run([]).";

// Load the program
session.consult(program, {
	success: function() {
		// Query the goal
		session.query(goal, {
			success: function() {
				// Look for answers
				session.answers(x => null);
			}
		});
	}
});
