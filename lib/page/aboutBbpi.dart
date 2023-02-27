// ignore_for_file: file_names

import 'package:bbpi/drawer/drawer.dart';
import 'package:flutter/material.dart';

class AboutBbpi extends StatefulWidget {
  const AboutBbpi({Key? key}) : super(key: key);

  @override
  State<AboutBbpi> createState() => _AboutBbpiState();
}

class _AboutBbpiState extends State<AboutBbpi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('About BBPI'),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomDrawer()));
              },
              icon: const Icon(Icons.arrow_back))),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '1. Introduction',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Brahmanbaria Polytechnic Institute is one of the most famous among all polytechnic institutes in Bangladesh. It was started in 2005 with only 48 students in the first semester of Diploma-in-Engineering of Refrigeration and Air Conditioning Technology. Since then the institute is being ever expanded by different emergent technologies. The institute is now offering courses in 4(four) technologies with the expectation of opening more Technologies for future."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '2. Location',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Brahmanbaria Polytechnic Institute is situated in the village Islampur, 30 kilometers northern side from Brahmanbaria town. It is located to the west side adjacent to Dhaka Sylhet High way and middle point from Dhaka to Sylhet. East of it is the Village Islampur; its North side is Conquest Beverage Ltd. and South side is Kazi Shafiqul Islam University college. Different green trees have created a calm, quiet and serene environment in the institute premises."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '3. Operation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Brahmanbaria Polytechnic Institute is governed by the Ministry of Education of the government of the Peoples Republic of Bangladesh acting through the Directorate of Technical Education. The service of all the employees of this institute is conducted by Directorate of Technical Education. Viz. appointment, promotion, transfer, retirement. The academic programs are run by Bangladesh Technical Education Board (BTEB), Agargoan, Sher-E-Banglanagar, Dhaka-1207. Syllabus, Academic Calendar, Examination and final certificate of the learners are offered by BTEB."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '4. Financial Activities',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "All kinds of finance come from the Government of The People’s Republic of Bangladesh through Directorate of Technical Education (DTE) including salaries, pension, stipend for students, all types of bill, purchasing for machinery and tools and raw materials-needed for the institute. The institute has no scope for earning money or making profit by any means. It is totally a welfare sector from the Government."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '5. Programs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                      'The institute offers 4-years Diploma-in-Engineering courses in the following technologies:-'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('a) Architecture and Interior Design Technology.'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('b) Computer Technology.'),
                  SizedBox(
                    height: 5,
                  ),
                  Text("c) Electromedical Technology."),
                  SizedBox(
                    height: 5,
                  ),
                  Text("d) Refrigeration & Air Conditioning Technology."),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "The above mentioned courses are divided into 8(Eight) semesters. Each semester is of six months duration. The result of the examination from 1st semester-3rd semester is declared from the institute and the examination papers are examined and scrutinized by teachers within the institute. Apart from these, the result of the examination of 4th semester to 7th semester is declared by BTEB and examination papers are examined and scrutinized by teachers of different institute arranged by BTEB. According to the BTEB Syllabus a student has to attach to an industry as an apprentice for training in 8th semester to have real practical knowledge prior to job."),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "BBPI has been operating Diploma in engineering courses in two shifts since 2010-11 session: first shift from 8:00am to 1:15pm, while the second shift from 1:30pm to 6:45pm. The enrollment capacity for each shift is 600 students. Technology wise breakdown is as follows:-"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("i) Architecture and Interior Design Technology 120"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("ii) Computer Technology 240"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("iii) Electro medical Technology 120"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("iv) Refrigeration & Air Conditioning 120"),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "The qualifications for admission in the first semester is secondary school certificate (SSC) or its equivalent securing at least GPA 3.5 including Mathematics with same GPA. 3.5. Both male and female candidates are eligible for admission but some seats are preserved for females, freedom fighters dependent and tribes with a certain special ration as per government’s preservation rules."),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '6. Staves',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "The institute has 78 staves with two classes. One is concerned with academic activities and another is administrative. Both are headed by a Principal who is in grade of 4 in accordance with GOB service rule. The Vice-Principal (a 5th grade officer) is responsible to the Principal for the academic activities. There are Chief Instructors (a 6th grade officer), Registrar, Librarian and Instructors both tech & non-tech (a 9th grade officer), Junior Instructors (a 10th grade officer) and Craft instructors & Lab assistants (13th grade) are led by the vice-principal. They are learned, well qualified and sometimes over qualified. The institute also consists of a bunch of general staves like a Head Assistant, an Accountant, a Cashier, a Caretaker, an Electrician cum Pump Operator, a Compounder, a Cash Sarker, a Book Sorter, Cleaners and Security Guards and Sweepers. All are the most important of their respective posts for the institute."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '7. Administrative & Academic Accommodation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "The main campus including two large five storied buildings, two storied buildings is now accommodating the class rooms. Office, Library, Workshops and Laboratories."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '8. Residential Accommodation',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "It has only a one storied “Banglo” for the principal and a 4 storied building for 4th class employees."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '9. Governing Authority',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "The institute has an administrative and academic committee both of it headed by the principal. These committees help the principal to initiate any administrative or financial decision or regulation through meetings. All Chief Instructors/Heads of the Department are the member of the committees and Head Assistant & Registrar are the member secretary of these committees respectively."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '10. Play Ground',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "The institute has a little playground of half an acre land having facility only for mini Football or Hockey or Cricket or Volleyball or Badminton and other outdoor games & Athletic."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '11. Workshop and Laboratory',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "The Workshops and Laboratories are rich and well equipped with modern machines and instruments that grasp excellent opportunity for the training of the learners with practices to make fit for the industries. Requisite amount of money is provided by the government every year to keep the workshops with industrial development of the day."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '12. Library',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "A library consists of well selected up-to-date texts and reference books preserved in it institute. Current trade, industrial and educational journals are also available for the use of the students, staves and teachers. The Library is kept open after institute hours to enable the students to study according to their conveniences."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '13. Study Tour',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "Study tours are arranged by the different technologies for their students in every year in the institute to have recreation and practical experiences."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '14. Stipends',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "In order to inspire the learners to Technical Education the Government offers stipends to 65% of the enrolled students of the institute @ TK=250 per month per student with a lump grand of TK=3000 per annum. The stipends for the student other than 1st semester are awarded on the basis of their results in the final examination of the preceding semester, merits, good conduct, Satisfactory progress and regular attendance in the corresponding semester are considered as criteria for the enlistment for awarding stipend. 10% of the total number of stipends is reserved for female students. In case of eligible female students are not being found, the stipends are awarded to eligible male students. Students failing in any subjects in their final examination of the preceding semester are not entitled to stipends for the semester. First year first semester students are awarded stipends on the basis the result of their S.S.C or equivalent examination."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '15. Scout',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "This institute rears a rover unit. This is one of the best units of Brahmanbaria District. Rover members of our unit took part in rover moot-2009 which was held at Bahadurpur, Gazipur. Besides this, our rover members are used to participate in observing the different national day’s programs and other social development works like distribution of worm’s clothes among the poor, to render the flood affected people etc. There is Unit-2 of Rover Scout comprising with 32 Scouts. There is another group named “Youth Red Crescent Unit”…………………."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '16. Medical Centre',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "The institute has a medical centre having a post of a medical officer and a compounder to ensure the health of the learners. It has now a compounder but no medical officer in service having a prospect to have one for near future."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '17. Scope of Higher Education',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "The graduates from Diploma-in-engineering of this institute have opportunity for higher studies in the Dhaka University of Engineering and Technology (DUET), Gazipur leading to B.Sc. Engineering in the field of Civil, Mechanical, Electrical & Electronics, Computer Science & Engg. Private Universities/Institutes also provide them for study in B.Sc. Engineering in a number of fields. Apart from this, the Diploma-in-engineering Graduates have chance for admission in degree pass course in National University, Bangladesh. Technical Teacher Training College, (TTTC) Dhaka, ensures in-service teacher training course for the teachers of polytechnic and others technical institutes. These are 1-year Diploma-in-Technical Education and 2-years B.Sc. Technical Education. Besides this, pre-service teachers training courses for Diploma-in-engineering graduates are also delivered to the TTTC."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '18. Employment Opportunities',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                  "The needs for qualified and skilled Diploma-in-engineering graduates are rising high due to the rapidly changing technical trends all over the world. However, in Bangladesh, the Diploma-in-engineering graduation are now being employed in various government, semi-government, autonomous and private Organizations including various NGO`s as Sub-assistant Engineers or in equivalent post. In Technical Education system fresh graduates are employed in the post of a junior Instructor in polytechnic institutes/Technical school and colleges. Diploma engineers are recruited in the position of sub-assistant engineer in Govt. Organizations, as class-ii gazetted status. They are in the opportunity for vertical mobility in their position. By this, they may upgrade their position up-to Chief Engineer or Chief Executive officer in GOB services."),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                '19. Administration Set-up facility',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                      "Composition and function of diferent councils and committees."),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "1. i) Administrative council:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      "The administrative council shall be formed by the principal (chairman), Vice-principal, Chief instructor/Departmental Head, Representatives from institute of Diploma-in-engineers, Bangladesh (IDEB), Bangladesh polytechnic Teachers Association (BPTA), Bangladesh polytechnic Shiksak Parishad (BPSP), BAKASIOKAS."),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "2. ii) Academic council:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      "The academic council shall be comprised of the Principal (Chairman), Vice-principal, Chief Instructor/Departmental Head, Representatives from IDEB, BPTA, BPSP,    Registrar (member-secretary). Its function shall be determined to the policies concerning the followings."),
                  SizedBox(
                    height: 8,
                  ),
                  Text("1.The conduct of the learners."),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      "2.The academic criteria/standard & requisites of the learners."),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      "3.The promotion of the learners through examinations within the Institute."),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                      "4.Publication of the result of the examination in the Institute."),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
