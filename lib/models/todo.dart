// TODO Complete the model class Todo.
//-----------------------------------------------------------------------------------------------------------------------------
//? Things to do:
// Define the following methods:
//   a. all the getters and setters
//   b. the 'copy' constructor
//   c. the 'fromJson' constructor
//   d. the 'toJson' method
//-----------------------------------------------------------------------------------------------------------------------------

class Todo {
  String _title;
  String _description;
  bool _done;
  int _id;
  int _user;

// Things to do:
// We Define the following methods:

//   a. all the getters and setters
  get title => _title;
  set title(value) => _title = value;

  get description => _description;
  set description(description) => _description = description;

  get done => _done;
  set done(done) => _done = done;

  get id => _id;
  set id(id) => _id = id;

  get user => _user;
  set user(user) => _user = user;

  Todo(
      {String title = '',
      String description = '',
      bool done = false,
      int id,
      int user})
      : _title = title,
        _description = description,
        _done = done,
        _id = id,
        _user = user;

//   b. the 'copy' constructor
  Todo.copy(Todo from)
      : this(
            title: from.title,
            description: from.description,
            done: from.done,
            id: from.id,
            user: from.user);

//   c. the 'fromJson' constructor
  Todo.fromJson(Map<String, dynamic> map)
      : this(
            title: map['title'],
            description: map['description'],
            done: map['done'],
            id: map['id'],
            user: map['user']);

//   d. the 'toJson' method
  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'done': done,
        'id': id,
        'user': user,
      };
}
