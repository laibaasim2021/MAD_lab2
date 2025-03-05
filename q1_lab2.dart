import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('\nTo-Do List App');
    print('1. Add Task');
    print('2. View Tasks');
    print('3. Remove Task');
    print('4. Exit');
    stdout.write('Choose an option: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter the task: ');
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          tasks.add(task);
          print('Task added successfully!');
        } else {
          print('Invalid task. Please try again.');
        }
        break;

      case '2':
        if (tasks.isEmpty) {
          print('No tasks available.');
        } else {
          print('\nYour Tasks:');
          for (int i = 0; i < tasks.length; i++) {
            print('${i + 1}. ${tasks[i]}');
          }
        }
        break;

      case '3':
        if (tasks.isEmpty) {
          print('No tasks to remove.');
          break;
        }
        stdout.write('Enter the task number to remove: ');
        String? indexInput = stdin.readLineSync();
        int? index = int.tryParse(indexInput ?? '');

        if (index != null && index > 0 && index <= tasks.length) {
          print('Task removed: ${tasks.removeAt(index - 1)}');
        } else {
          print('Invalid index. Please try again.');
        }
        break;

      case '4':
        print('Exiting the program. Goodbye!');
        return;

      default:
        print('Invalid option. Please choose again.');
    }
  }
}
