class Project {
  final String? title, description, image, note, features, githubLink, androidLink;

  Project({
    this.title,
    this.description,
    this.image,
    this.note,
    this.features,
    this.githubLink,
    this.androidLink
  });
}

List<Project> demoProjects = [
  Project(
    androidLink: 'https://drive.google.com/file/d/1SEwztoxhaJaA1iiMox6vry6suurrzPNF/view?usp=sharing',
    githubLink: 'https://github.com/AltSaint/tic_tac_toe',
      image: 'assets/images/xo_phone.png',
      title: "Tic-Tac-Toe",
      description:
          "A game in which two players seek in alternate turns to complete a row, a column, or a diagonal with either three O's or three X's drawn in the spaces of a grid of nine squares; noughts and crosses.",
      note: 'Only for 2 players!',
      features: '''- Retro gaming style

      - Some feature

      - Some feature

      - Some feature'''),
  Project(
    androidLink: 'https://drive.google.com/file/d/1VwkLGBaz13TChsbYJ2YYuhLUbSZ12elb/view?usp=sharing',
    githubLink: 'https://github.com/AltSaint/bmi_calculator',
      image: 'assets/images/bmi_phone.png',
      title: "BMI Calculator",
      description:
          "With this BMI Calculator you can calculate and evaluate your Body Mass Index (BMI) based on the relevant information on body weight, height, age and sex. Check your body stats to find your ideal weight, because overweight and obesity are risk factors for diseases such as hypertension, heart disease and diabetes. It can also be used to find your healthy weight if you want to lose weight or are on diet.",
      note:
          'This app is only demonstration purposes, DO NOT use it for medical purposes!',
      features: '''- Glassmorphic design

      - Some feature

      - Some feature
      
      - Some feature'''),
];
