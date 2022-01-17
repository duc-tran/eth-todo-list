pragma solidity ^0.5.0;

contract Todolist {
	uint public taskCount = 0;

	struct Task {
		uint id;
		string name;
		string description;
		uint256 startTime;
		uint256 endTime;
		bool completed;
	}

	mapping(uint => Task) public tasks;

	constructor() public {
		createTask("Work out!", "Push up");
	}

	function createTask(string memory _name, string memory _description) public {
		taskCount++;
		tasks[taskCount] = Task(taskCount, _name, _description, 0, 0, false);

	}
}