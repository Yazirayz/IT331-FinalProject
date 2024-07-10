import 'package:flutter/material.dart';

// Main entry point of the application
void main() {
  runApp(MyProfileApp());
}

// Root widget of the application
class MyProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFD1C4B2), // Sets primary color to a nude shade
        fontFamily: 'Poppins-Medium', // Set custom font family
        scaffoldBackgroundColor:
            Color(0xFFF5ECE3), // Sets background color to a light nude shade
        appBarTheme: AppBarTheme(
          color: Color(0xFFD1C4B2), // Sets app bar color to a nude shade
        ),
      ),
      debugShowCheckedModeBanner: false, // To disable the debug banner
      home: MyProfileTabs(), // Set the home widget
    );
  }
}

// Widget for the tab bar with multiple tabs
class MyProfileTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('MY PROFILE'),
          centerTitle: true, // Center the title
          bottom: TabBar(
            indicatorColor: Colors.white, // Set indicator color to white
            indicatorWeight: 4.0, // Set indicator weight
            labelColor: Colors.white, // Set selected label color to white
            unselectedLabelColor:
                Colors.grey, // Set unselected label color to grey
            labelStyle: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold), // Set label text style
            tabs: [
              CustomTab(
                  // Tab for Personal Information
                  icon: Icons.person,
                  text: 'Personal',
                  color: Color(0xFFE4D9C3)),
              CustomTab(
                  // Tab for Education
                  icon: Icons.school,
                  text: 'Education',
                  color: Color(0xFFD9C4A9)),
              CustomTab(
                  // Tab for Skills
                  icon: Icons.star,
                  text: 'Skills',
                  color: Color(0xFFD1BFA7)),
              CustomTab(
                  // Tab for Interests
                  icon: Icons.interests_rounded,
                  text: 'Interests',
                  color: Color(0xFFF2E4D4)),
              CustomTab(
                  // Tab for Contact
                  icon: Icons.contact_mail,
                  text: 'Contact',
                  color: Color(0xFFE0CFC4)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PersonalInformationTab(), // Tab content for Personal Information
            EducationalBackgroundTab(), // Tab content for Education
            SkillsTab(), // Tab content for Skills
            InterestsTab(), // Tab content for Interests
            ContactDetailsTab(), // Tab content for Contact
          ],
        ),
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  CustomTab({required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(width: 8.0),
            Text(text, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

// Widget for the Personal Information tab content
class PersonalInformationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF2E4D4), // Background color of the tab content
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width *
              0.8, // Container width is 80% of screen width
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: AssetImage('assets/photos/rayz.jpg'),
                    fit: BoxFit.cover, // Fit the image within the container
                  ),
                ),
              ),
              SizedBox(width: 40), // Space between image and text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Riazel Alvarez Lipata',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 30.0), // Space between name and age
                    Text(
                      'Age: 21 years old',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 20.0), // Space between age and bio
                    Text(
                      'Hi! I am Rayz and I always try to stay determined as much as possible despite of different uncertainties. I have social anxiety, hence, it is kinda hard for me to deal with other people except of my closest friends but I am working on it. Also, I am fond of fantasies, nature, adventures, service, music, a little bit of science, and any Harry Potter-related things.',
                      textAlign: TextAlign.left, // Align text to the left
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget for the Educational Background tab content
class EducationalBackgroundTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5ECE3), // Background color of the tab content
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'EDUCATIONAL BACKGROUND',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40.0), // Space between title and first entry
            _buildEducationItem(
              context,
              'assets/photos/batstateu.png', // image path
              'BATANGAS STATE UNIVERSITY - THE NATIONAL ENGINEERING UNIVERSITY',
              'Bachelor of Science in Information Technology (2021 - 2024)',
            ),
            SizedBox(height: 20.0),
            _buildEducationItem(
              context,
              'assets/photos/lemeryshs.png', // image path
              'LEMERY SENIOR HIGH SCHOOL',
              'Information and Communications Technology (2019 - 2021)',
            ),
            SizedBox(height: 20.0),
            _buildEducationItem(
              context,
              'assets/photos/gflmnhs.png', // image path
              'GOVERNOR FELICIANO LEVISTE MEMORIAL NATIONAL HIGH SCHOOL',
              '(2015 - 2019)',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationItem(
      BuildContext context, String imagePath, String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFD9C4A9), // Uniform nude color
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 30.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget for the Skills tab content
class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF2E4D4), // Background color of the tab content
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'SKILLS',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 50.0), // Space between title and skill cards
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Technical Skills',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 18.0),
                    _buildSkillItem(
                      context,
                      Icons.storage,
                      'Database Management',
                      'Knowledge of SQL databases.',
                    ),
                    SizedBox(height: 14.0),
                    _buildSkillItem(
                      context,
                      Icons.language,
                      'Web Development',
                      'Knowledge in HTML/CSS and JavaScript.',
                    ),
                    SizedBox(height: 14.0),
                    _buildSkillItem(
                      context,
                      Icons.desktop_windows,
                      'Operating Systems',
                      'Familiarity with Windows or macOS environments.',
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50.0),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Non-Technical Skills',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 18.0),
                    _buildSkillItem(
                      context,
                      Icons.people,
                      'Communication',
                      'Can clearly communicate with other people.',
                    ),
                    SizedBox(height: 14.0),
                    _buildSkillItem(
                      context,
                      Icons.group_work,
                      'Collaboration',
                      'Can effectively collaborate with others.',
                    ),
                    SizedBox(height: 14.0),
                    _buildSkillItem(
                      context,
                      Icons.adb,
                      'Adaptability',
                      'Willingness to learn new things and adapt to changes.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSkillItem(
      BuildContext context, IconData icon, String title, String subtitle) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5, // Adjust width as needed
      decoration: BoxDecoration(
        color: Color(0xFFD1BFA7),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(icon, size: 40.0, color: Colors.white),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget for the Interests tab content
class InterestsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5ECE3), // Background color of the tab content
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INTERESTS',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 100.0),
            _buildInterestItem(
              context,
              Icons.bar_chart,
              'Data Science and Analytics',
              'Interests: Extracting meaningful insights from large datasets.\n'
                  'Specializations: Statistical analysis, data mining, big data technologies.\n'
                  'Research Areas: Predictive modeling, data visualization, data applications in business and decision-making.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInterestItem(
      BuildContext context, IconData icon, String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFD9C4A9),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: [
          Icon(icon, size: 50.0, color: Colors.white),
          SizedBox(height: 20.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// Widget for the Contact Details tab content
class ContactDetailsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF2E4D4),
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CONTACT DETAILS',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, size: 20.0, color: Colors.black54),
                SizedBox(width: 8.0),
                Text(
                  'riazellipata@gmail.com',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(width: 20.0),
                Icon(Icons.phone, size: 20.0, color: Colors.black54),
                SizedBox(width: 8.0),
                Text(
                  '09125127755',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.0),
            _buildContactItem(
              context,
              Icons.camera_alt,
              'Instagram',
              '@yazirayz',
            ),
            SizedBox(height: 30.0),
            _buildContactItem(
              context,
              Icons.facebook,
              'Facebook',
              'Riazel Alvarez Lipata',
            ),
            SizedBox(height: 30.0),
            _buildContactItem(
              context,
              Icons.tiktok,
              'TikTok',
              '@yazirayz_',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem(
      BuildContext context, IconData icon, String title, String subtitle) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 30.0, color: Colors.black54),
        SizedBox(width: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
