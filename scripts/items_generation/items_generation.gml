// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

artifacts = [
	{ name: "Colosseum", location: "Italy", value: 100 },
	{ name: "Great Pyramid of Giza", location: "Egypt", value: 100 },
	{ name: "Colossus of Rhodes", location: "Greece", value: 100 },
	{ name: "Hanging Gardens of Babylon", location: "Iraq", value: 100 },
	{ name: "Lighthouse of Alexandria", location: "Egypt", value: 100 },
	{ name: "Mausolenum at Halicarnassus", location: "Turkey", value: 100 },
	{ name: "Statue of Zeus", location: "Greece", value: 100 },
	{ name: "Tample of Artemis", location: "Turkey", value: 100 },
	{ name: "Catacombs of Korn el Shoqafa", location: "Egypt", value: 100 },
	{ name: "Great Wall of China", location: "China", value: 100 },
	{ name: "Stonehenge", location: "England", value: 1000 },
	{ name: "Leaning Tower of Pisa", location: "Italy", value: 100 }
];

obstacles = [
	{ name: "rock1" },
	{ name: "rock2" },
	{ name: "rock3" },	
	{ name: "rock4" },
];
distributed = [];


function generateArtifact() {

}

function stealArtifact () {
	var idx = random_range(0, array_length(artifacts));
	var artifact = array_get(artifacts, idx);
	
	array_delete(artifacts, idx, 1);
	return artifact;
}



function distribute(room_height, room_width) {
	var artifacts = array_length(artifacts);
	var rows = [];
	var row_cells = [];

	var idx = 0;

	var possible_cells = room_height * room_width;
	
}