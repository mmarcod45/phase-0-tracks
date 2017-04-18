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

function Car(make, model, fuel_efficient) {
	console.log("We are creating multiple cars...");
	console.log("new car", this);
	this.make = make
	this.model = model
	this.fuel_efficient = fuel_efficient

	this.honk = function() { console.log("Beep!"); };
}

var first_car = new Car("Bugatti", "Veyron", true);

console.log(first_car);
console.log("Our car can beep!");
first_car.honk(); 

var second_car = new Car("Mercedes", "E Series", true);

console.log(second_car);
console.log("Our car can beep!");
second_car.honk();

// var colors = ["red", "blue", "green", "purple"]
// var horses = ["Ed", "Max", "Giddy", "Buckaroo"]

// colors.push("silver");
// horses.push("Steve");

// console.log(colors)
// console.log(horses)


// var new_object = {};
// for (var i = 0; i < colors.length; i++)
// 	new_object[horses[i]] = colors[i]; 

// console.log(new_object);




// function Car(model, make, isCarReliable) {

// 	console.log("Our new car:", this);

// 	this.model = model;
// 	this.make = make;
// 	this.isCarReliable = isCarReliable;
	

// 	this.honk = function() { console.log("Honk!"); };
// 	this.turn_left = function() { console.log("Turn left!"); };
// 	console.log("CAR INITIALIZATION COMPLETE");
// }

// console.log("Let's make a car ...");

// var anotherCar = new Car("Honda", "Accord", true);
// console.log(anotherCar);
// console.log("Our car can honk:");
// anotherCar.honk();
// anotherCar.turn_left();
// console.log("----");

// console.log("Let's make another car ...");
// var yetAnotherCar = new Car("Mazda", "6", false);
// console.log(yetAnotherCar);
// console.log(yetAnotherCar.model);
// console.log("This new car can honk, too:");
// yetAnotherCar.honk();
// console.log("----")