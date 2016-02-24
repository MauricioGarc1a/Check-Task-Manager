Task.destroy_all
Task.create!([
  {task_description: "Buy Some food", duedate: "2017-01-01", status: false},
  {task_description: "Buy Some milk", duedate: "2017-02-02", status: true},
  {task_description: "Buy Some bread", duedate: "2017-03-03", status: false},
  {task_description: "Buy Some guacamole", duedate: "2017-04-04", status: true}
])
