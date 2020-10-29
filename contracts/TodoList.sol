pragma solidity ^0.5.0;

contract TodoList {
  uint public taskCount = 0; //declare state variable

  struct Task {
    uint id;
    string content;
    bool completed;
  }

  //create storage for tasks
  mapping(uint => Task) public tasks;

  event TaskCreated(
    uint id,
    string content,
    bool completed
  );

  //populate todo item
  constructor() public {
    createTask ('Check out markmesina on github!');
  }

  //func to put Task inside storage
  function createTask(string memory _content) public {
    taskCount ++; //creates new taskCount
    tasks[taskCount] = Task(taskCount, _content, false);// reference mapping
    emit TaskCreated(taskCount, _content, false);
  
  
  }

}