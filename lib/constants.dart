import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_screen/models/custom_list_tile_model.dart';
import 'package:flutter_profile_screen/models/profile_completion_card.dart';

const List<ProfileCompletionCard> profileCompilationCard = [
  ProfileCompletionCard(
      icon: CupertinoIcons.person_circle,
      title: 'Set Your Profile Details',
      buttonText: "Continue"),
  ProfileCompletionCard(
      icon: CupertinoIcons.doc,
      title: 'Upload Your Resume',
      buttonText: "Upload"),
  ProfileCompletionCard(
      icon: CupertinoIcons.square_list,
      title: 'Add Your Skills',
      buttonText: "Add"),
];

const List<CustomListTile> customListTile = [
  CustomListTile(
    title: 'Activity',
    leadingIcon: Icons.insights,
  ),
  CustomListTile(
    title: 'Locations',
    leadingIcon: Icons.location_on_outlined,
  ),
  CustomListTile(
    title: 'Notifications',
    leadingIcon: CupertinoIcons.bell,
  ),
  CustomListTile(
    title: 'Logout',
    leadingIcon: CupertinoIcons.arrow_right_arrow_left,
  ),
];
