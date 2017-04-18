var colors = ["red", "blue", "yellow", "orange"];
var horses = ["Tom", "Ed", "Becky", "Gary"];

colors.push("brown");
horses.push("Sally");

// console.log(colors);
// console.log(horses);


var horse_colors = {}
for (var i = 0; i < horses.length; i++) {
	horse_colors[horses[i]] = colors[i];
}

console.log(horse_colors);


////////

// function Car(make, model, fuel_efficient) {
// 	console.log("We are creating multiple cars...");
// 	console.log("new car", this);
// 	this.make = make
// 	this.model = model
// 	this.fuel_efficient = fuel_efficient

// 	this.honk = function() { console.log("Beep!"); };
// }

// var first_car = new Car("Bugatti", "Veyron", true);

// console.log(first_car);
// console.log("Our car can beep!");
// first_car.honk(); 

// var second_car = new Car("Mercedes", "E Series", true);

// console.log(second_car);
// console.log("Our car can beep!");
// second_car.honk();

