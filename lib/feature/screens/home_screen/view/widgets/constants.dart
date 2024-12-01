import 'dart:ui';

import 'package:flutter/material.dart';

//Colors
const Color white = Colors.white;
Color lightGrey = Colors.grey.shade800;
const Color lightGreyshade500 = Colors.grey;
Color lightGreyshade100 = Colors.grey.shade100;
Color lightGreyshade200 = Colors.grey.shade200;
final Color lightGreyshade600 = Colors.grey.shade600;
final Color lightGreyshade800 = Colors.grey.shade800;
final Color lightGreyshade700 = Colors.grey.shade700;
final Color lightGreyshade400 = Colors.grey.shade400;
const Color darkGrey = Color(0xFF474747);
const darkestGrey = Color.fromARGB(255, 39, 39, 39);
const Color black = Color.fromARGB(255, 0, 0, 0);
const Color green = Colors.green;
const orange = Colors.orange;
const blue = Colors.blue;
//Strings
const String research = 'Research';
const String newProject = 'New Project';
const String myProjects = 'My Projects';
const String team = 'Team';
const String laboratory = 'Laboratory';
const String task = 'Task';
const String data = 'Data';
const String discussion = 'Discussion';
const String publish = 'Publish';
const String expense = 'Expense';
const String setting = 'Setting';
const String ticketing = 'Ticketing';
const String comingSoon = 'Coming Soon';
const userName = 'Mohsin Faraz';
const searchTitle = 'Test Project with Mohsin ';
const userDesignation = 'Senior Research Associate';
const userInvolved = 'User Involved';
const equipmentAvailable = 'Equipments Available';
const taskCompleted = 'Task Completed';
const taskPending = 'Task Pending';
const markAsRead = 'Mark as Read';
const completed = 'Completed';
const delayed = 'Delayed';
const onGoing = 'On Going';
const projectUpdate =
    'Your Cheetah Noman Raza 115 / LHR has now picked up your order and is speeding your way. '
    'You can reach him 03000090909. To ensure your health and safety, we have tested Noman Raza '
    '115 / LHR\'s temperature in the morning and it was 98 degrees Fahrenheit.';
const date = 'Mon, 10 July 2022';
const update = 'Update';
const safteyText = 'To ensure your health saftey... ';
const taskQuickView = 'Task Quick View';
const needHelp = 'Need Help';
const home = 'Home';
const quickAction = 'Quick Action';
const projectUpdateText = 'Project Update';
const number = '1125';
const researchName = 'Research name';
const status = 'Status';
const projectlist = 'Project List';
const resetFilters = 'Reset Filters';
const search = 'Search';
const teamName = 'Team Name';
const creator = 'Creator';
const assignedTo = 'Assigned To';
//Lists
List<List<String>> drawerItems = [
  [research, researchIcon],
  [team, teamIcon],
  [laboratory, laboratoryIcon],
  [task, taskIcon],
  [data, dataIcon],
  [discussion, discussionIcon],
  [publish, publishIcon],
  [expense, expenseIcon],
  [setting, settingIcon],
  [ticketing, ticketingIcon],
];

List<List<String>> taskItems = [
  [teamIcon, userInvolved],
  [bagIcon, equipmentAvailable],
  [taskCompletedIcon, taskCompleted],
  [taskCompletedIcon, taskPending],
];

//IconData

const IconData newProjectIcon = Icons.rocket_launch_outlined;

//Strings
const path = 'assets/images/';
const String researchIcon = '${path}research.png';
const String myProjectsIcon = '${path}myprojects.png';
const String teamIcon = '${path}team.png';
const String laboratoryIcon = '${path}laboratory.png';
const String taskIcon = '${path}task.png';
const String dataIcon = '${path}data.png';
const String discussionIcon = '${path}discussion.png';
const String publishIcon = '${path}publish.png';
const String expenseIcon = '${path}expense.png';
const String settingIcon = '${path}setting.png';
const String ticketingIcon = '${path}ticketing.png';
const String profileIcon = '${path}profile.png';
const taskCompletedIcon = '${path}taskcompleted.png';
const bagIcon = '${path}bag.png';
const needHelpIcon = '${path}needhelp.png';
const homeIcon = '${path}home.png';
const updownIcon = '${path}updown.png';
const moshin = '${path}mohsin.png';
const firstPerson = '${path}firstperson.png';
const secondPerson = '${path}secondperson.png';
