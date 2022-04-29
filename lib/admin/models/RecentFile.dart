class RecentFile {
  final String? icon, title, date, chefprojectname;

  RecentFile({this.icon, this.title, this.date, this.chefprojectname});
}

List demoRecentProject = [
  RecentFile(
    icon: "assets/icons/Figma_file.svg",
    title: "Biat Project",
    date: "27-02-2021",
    chefprojectname: "foulen ben foulen",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "ATB Project",
    date: "23-02-2021",
    chefprojectname: "foulen ben foulen",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "Other project",
    date: "21-02-2021",
    chefprojectname: "foulen ben foulen",
  )
];
