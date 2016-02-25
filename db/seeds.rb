Project.create!([
  {name: "Project Manhanttan", description: "Normally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I'm in a transitional period so I don't wanna kill you, I wanna help you. But I can't give you this case, it don't belong to me. Besides, I've already been through too much shit this morning over this case to hand it over to your dumb ass."},
  {name: "Project Telletubies", description: "Proin suscipit luctus orci placerat fringilla. Donec hendrerit laoreet risus eget adipiscing. Suspendisse in urna ligula, a volutpat mauris. Sed enim mi, bibendum eu pulvinar vel, sodales vitae dui. Pellentesque sed sapien lorem, at lacinia urna. In hac habitasse platea dictumst. Vivamus vel justo in leo laoreet ullamcorper non vitae lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin bibendum ullamcorper rutrum. "}
])
Task.create!([
  {task_description: "Buy Some food", duedate: "2017-01-01", status: false, project_id: 1},
  {task_description: "Buy Some milk", duedate: "2017-02-02", status: true, project_id: 2},
  {task_description: "Buy Some bread", duedate: "2017-03-03", status: false, project_id: 2},
  {task_description: "Buy Some guacamole", duedate: "2017-04-04", status: true, project_id: 1}
])
