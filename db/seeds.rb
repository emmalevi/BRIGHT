# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "Destroying current database"

Donation.destroy_all
CharityIssue.destroy_all
Issue.destroy_all
User.destroy_all
Charity.destroy_all

user1 = User.create(email: "bob@gmail.com", password: "012345")
user2 = User.create(email: "jake@gmail.com", password:"abc123")
user3 = User.create(email: "ryan@gmail.com", password: "def456")

puts "Creating new issues"

issue1 = Issue.create!(
  name: 'Coronavirus',
  issue_type: 'Pandemic',
  description: 'Health authorities in Wuhan reported a cluster of viral pneumonia cases of unknown case on December 2019, and an investigation was launched in early January 2020. These cases mostly had links to the Huanan Seafood Whosale Market. The virus that caused the outbreak is known as SARS-CoV-2, which has been related with some animals like bat and pangolin.',
  location: 'China',
  origin: 'It spreads between people during contact',
  death_count: '244911',
  impacted_population: 773899
)

issue1_photo = URI.open('https://cdn.images.express.co.uk/img/dynamic/151/590x/Coronavirus-news-WHO-disease-COVOD19-research-coronavirus-cure-update-1249874.jpg?r=1583169163690')
issue1.photo.attach(io: issue1_photo, filename: 'issue1.jpg' , content_type: 'image/jpg')

issue2 = Issue.create!(
  name: 'AIDS',
  issue_type: 'Pandemic',
  description: 'Its first cases were discovered in US in 1981, initial cases were a cluster of injecting drugs users and homosexual men with no known cause of impaired immunity who showed symptoms pneumonia. Soon thereafter, an unexpected number of homosexual men developed a previously rare skin cancer called Kaposis sarcoma. Many more cases of pneumonia and KS emerged, alerting US Center for Disease Control and Prevention and a CDC task force was formed to monitor the outbreak.',
  location: 'Botswana',
  origin: 'It interferes more with the inmune system, increasing the risk of infections such as tuberculosis or other infections',
  death_count: '2389542',
  impacted_population: 7573891
)

issue2_photo = URI.open('https://www.who.int/images/default-source/big-stories/ten-threats-to-global-health/hiv-ru.jpg?sfvrsn=7697577e_14')
issue2.photo.attach(io: issue2_photo, filename: 'issue2.jpg' , content_type: 'image/jpg')

issue3 = Issue.create!(
  name: 'Hiroshima Radiation',
  issue_type: 'Worldwide Issue',
  description: 'Hiroshima was the primary target of the first atomic bombing mission on 6 August. Bombardment Squadron, piloted by Tibbets, took off from North Field about six hours flight from Japan. Enola Gay was accompained by two other B-29s.',
  location: 'Japan',
  origin: 'It was a result of exposure to the blast, heat, or due to radiation',
  death_count: '600404',
  impacted_population: 903589
)

issue3_photo = URI.open('https://images.unsplash.com/photo-1574088768469-53d8a7839bf1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60')
issue3.photo.attach(io: issue3_photo, filename: 'issue3.jpg' , content_type: 'image/jpg')

issue4 = Issue.create!(
  name: 'Children Hunger',
  issue_type: 'Worldwide Issue',
  description: 'There is only one globally recognized approach for defining and measuring hunger that is generally used by those studying or working to relieve hunger as a social problem whether being men, women or children. Causes that explain the chidroom hunger are malnutrition and food insecurity',
  location: 'Yemen',
  origin: 'On average, children in rural areas are more likely to experience food insecurity and lack access to quality health services.',
  death_count: '50000000',
  impacted_population: 46000000
)

issue4_photo = URI.open('https://images.unsplash.com/photo-1507427100689-2bf8574e32d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60g')
issue4.photo.attach(io: issue4_photo, filename: 'issue4.jpg' , content_type: 'image/jpg')

issue5 = Issue.create!(
 name: 'Haiti Earthquake',
 issue_type: 'Natural Disaster',
 description: 'The magnitude 7.0 earthquake ocurred in land on 12 January 2010 at 16:53 approximately 25 km from Port-au-Prince at a depth of 13 km. There is no evidence of surface rupture and based on seismological and geological information data it is thought that the earthquake did not involve significant lateral slip on the main fault. Strong shaking associated with intensity IX on the Modified Mercalli scale was recorded in Port-au-Prince and its suburbs.',
 location: 'Haiti',
 origin: 'The earthquake struck in the most populated area of the location',
 death_count: '316000',
 impacted_population: 670200
)

issue5_photo = URI.open('https://www.dw.com/image/52148088_303.jpg')
issue5.photo.attach(io: issue5_photo, filename: 'issue5.jpg' , content_type: 'image/jpg')

issue6 = Issue.create!(
  name: 'Indian Ocean Earthquake',
  issue_type: 'Natural Disaster',
  description: 'The 2004 Indian Ocean earthquake was initially documented as having a moment magnitude 8.8. In February 2005, scientists revised the estimate of the magnitude 9.0. It was initially large in geographical and geological extent. The tsunami like all others behaved differently in deep water than in shallow water. In deep ocean water, tsunami waves form only a low, broad hump, barely noticeable and harmless, which generally travels at high speed of 500 to 1000 km/h',
  location: 'Indonesia',
  origin: ' One slab of lifting crust essentially rapidly acts as a giant paddle, transferring its energy to the water.',
  death_count: '227898',
  impacted_population: 355437
)

issue6_photo = URI.open('https://images.unsplash.com/photo-1581059686229-de26e6ae5dc4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1352&q=80')
issue6.photo.attach(io: issue6_photo, filename: 'issue6.jpg' , content_type: 'image/jpg')

issue7 = Issue.create!(
  name: 'Cholera',
  issue_type: 'Pandemic',
  description: 'The first cholera pandemic occurred in the Bengal region of India, near Calcutta starting in 1817 through 1824. The disease dispersed from India to Southeast Asia, the Middle East, Europe, and Eastern Africa. The movement of British Army and Navy ships and personnel is believed to have contributed to the range of the pandemic, since the ships carried people with the disease to the shores of the Indian Ocean, from Africa to Indonesia, and north to China and Japan.',
  location: 'India',
  origin: 'The primary symptoms of cholera are profuse diarrhea and vomiting of clear fluid',
  death_count: '28000',
  impacted_population: '130000'
)
issue7_photo = URI.open("https://media.ifrc.org/ifrc/wp-content/uploads/sites/5/2018/03/p-BEN0007-small.jpg")
issue7.photo.attach(io: issue7_photo, filename: 'issue7.jpg', content_type: 'image/jpg')

issue8 = Issue.create!(
  name: 'Zika virus',
  issue_type: 'Pandemic',
  description: 'As early as August 2014, physicians in northeastern Brazil began to investigate an outbreak of illness characterized by a flat pinkish rash, blooshoot eyes, fever, joint pain and headaches while symptoms resembled dengue fever and other potential causes. By March 2015, the illness spread to another three states of the country but the specific event that brought the virus to Brazil was uncertain until March 2016.',
  location: 'Brazil',
  origin: 'The virus spread mainly by the Yellow Fever, which is found throughout the tropical and subtropical Americas. The virus can be transmitted from an infected pregnant woman to her fetus.',
  death_count: '18',
  impacted_population: '711381'
)
issue8_photo = URI.open('https://static01.nyt.com/images/2016/01/16/science/16ZIKASUB2/16ZIKASUB2-superJumbo.jpg')
issue8.photo.attach(io: issue8_photo, filename: 'issue8.jpg', content_type: 'image/jpg')

issue9 = Issue.create(
  name: 'Mexico Earthquake',
  issue_type: 'Natural Disaster',
  description: 'According to the National Seismological Service of Mexico, the epicenter was located 12km southeast of Axochiapan and 120 km from Mexico City. The earthquake was measured at a magnitude of 7.1, ocurring at 13:14:40 Central Daylight Time, at a depth of 51km. The United States Geological Survey placed the epicenter 5km.',
  location: 'Mexico',
  origin: 'The earthquake caused damage in the Mexican states of Puebla and Morelos.',
  death_count: '370',
  impacted_population: '6000'
)
issue9_photo = URI.open('https://cdn.cnn.com/cnnnext/dam/assets/160417112638-02-ecuador-quake-0417-super-169.jpg')
issue9.photo.attach(io: issue9_photo, filename: 'issue9.jpg', content_type: 'image/jpg')

issue10 = Issue.create!(
  name: 'Ebola',
  issue_type: 'Pandemic',
  description: 'The disease was identified in 1976 in two simultaneous outbreaks: one in Nazara, town which is located in South Sudan and the other in Yambuku, DRC. From 1976 through 2013, the World Health Organization reported 2387 confirmed cases with 1590 overall fatalities. The largest outbreak to date was the Ebola virus epidemic in West Africa, which caused a large number of deaths in Guinea, Sierra Leone and Liberia.',
  location: 'Democratic Republic of Congo',
  origin: 'It spreads through direct contact with body fluids, such as blood from infected humans or other animals.',
  death_count: '11323',
  impacted_population: '28646'
)
issue10_photo = URI.open('https://cadenaser00.epimg.net/ser/imagenes/2014/08/08/sociedad/1407464009_740215_0000000000_noticia_normal.jpg')
issue10.photo.attach(io: issue10_photo, filename: 'issue10.jpg', content_type: 'image/jpg')

issue11 = Issue.create!(
  name: 'Japan Tsunami',
  issue_type: 'Natural Disaster',
  description: 'An upthrust of 6 to 8 meters along 180 km wide seabed at 60 km offshore from the east coast of Tohoku resulted in a major tsunami that brought destruction along the Pacific coastline of Japanese northern islands. Thousands of live were lost and entire towns were devastated.',
  location: 'Japan',
  origin: 'The tsunami swept the Japanese mainland and killed over ten thousand people, mainly through drowing, though blunt trauma also caused many deaths.',
  death_count: '15899',
  impacted_population: '6157'
)
issue11_photo = URI.open('https://cdn.theatlantic.com/thumbor/1YvKw1Pa6UCKYkNqv8nY4lGXjB0=/1200x797/media/img/photo/2016/03/5-years-since-the-2011-great-east-j/q01_RTR2JTXO/original.jpg')
issue11.photo.attach(io: issue11_photo, filename: 'issue11.jpg', content_type: 'image/jpg')

issue12 = Issue.create!(
  name: 'Malaria',
  issue_type: 'Pandemic',
  description: 'Malaria parasites belong to the genus Plasmodium, which in majority is caused in humans. Among those infected, falciparum is most common species identified followed by vivax. Althrough falciparum traditionally accounts for the majority of deaths, recent evidence suggests that vivax malaria is associated with potentially life-threatening conditions about as often as with diagnosis of falciparum infection.',
  location: 'Sub-Saharan Africa',
  origin: 'It causes symptoms that typically include fever, tiredness, vomiting and headaches.',
  death_count: '405000',
  impacted_population: '228000000'
)
issue12_photo = URI.open('https://cusointernational.org/wp-content/uploads/2018/12/Asosa__286.jpg')
issue12.photo.attach(io: issue12_photo, filename: 'issue12.jpg', content_type: 'image/jpg')
puts "Creating new charities"

charity1 = Charity.create!(
  name: 'Red Cross',
  description: 'An international humanitarian movement with approximately 97 million volunteers, members and staff worldwide which was founded to protect human life and health, to ensure respect for all human beings, and to prevent and alleviate human suffering.',
  issues: [issue2],
  total_donations: 28382344,
  rating: "5"
)
charity1_photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/Flag_of_the_ICRC.svg/1200px-Flag_of_the_ICRC.svg.png')
charity1.photo.attach(io: charity1_photo, filename: 'charity2.jpg', content_type: 'image/jpg')

charity2 = Charity.create!(
  name: 'Kids Wish Network',
  description: 'Kids Wish Network is a 501 non-profit organization that grants wishes to children with life-threatening medical conditions. It has been the subject of negative publicity throughout its history, including accusations of trademark infringement, tax avoidance and inefficient fundraising practices.',
  issues: [issue4],
  total_donations: 38484732,
  rating: "3"
)
charity2_photo = URI.open('https://images.squarespace-cdn.com/content/v1/566b210340667a1cc1623840/1581112819783-X9I8PQAUNESMJ2AXK8LQ/ke17ZwdGBToddI8pDm48kL6Gv8ZO6JV7Z4ifWuMgNDp7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UfwSeTrjJXgRaFvmKmLknDKbcrwOXCbPKyMoGFGIZIboOpYghpI-Ha_TwZsqqmJXng/kwn_circle_logo_large.png.jpg')
charity2.photo.attach(io: charity2_photo, filename: 'charity2.jpg', content_type: 'image/jpg')

charity3 = Charity.create!(
  name: 'Tsunami Relief Aid',
  description: 'When disaster strikes, UNICEF is always among those first on the ground and the last to leave. This unprecedented catastrophe was no different. In the immediate aftermath, UNICEF teams worked on the frontline in eight countries — Indonesia, Thailand, Myanmar, Malaysia, Sri Lanka, the Maldives, India and Somalia — delivering safe drinking water to protect children and their families from deadly water-borne diseases.',
  issues: [issue5],
  total_donations: 29349322,
  rating: "3"
)
charity3_photo = URI.open('https://www.unicef.org/sites/default/files/styles/hero_mobile/public/UN0251766.jpg')
charity3.photo.attach(io: charity3_photo, filename: 'charity3.jpg', content_type: 'image/jpg')

charity4 = Charity.create!(
  name: 'Worldwide CARE',
  description: 'Taking care of human disasters.',
  issues: [issue6],
  total_donations: 185000000,
  rating: "4"
)
charity4_photo = URI.open('https://www.care.org/sites/all/themes/CARE/images/care-social-image.png')
charity4.photo.attach(io: charity4_photo, filename: 'charity4.jpg', content_type: 'image/jpg')

charity6 = Charity.create!(
 name: 'Radiation Effects Research Foundation',
 description: 'Binational research organization which investigates the health effects of atomic bomb radiation among survivors in Hiroshima and Nagasaki',
 issues: [issue3],
 total_donations: 0,
 rating: "2"
)
charity6_photo = URI.open('https://i1.wp.com/gethiroshima.com/wp-content/uploads/2017/07/RERF.jpg')
charity6.photo.attach(io: charity6_photo, filename: 'charity6.jpg', content_type: 'image/jpg')

charity7 = Charity.create!(
  name: 'International Rescue Commitee',
  description: 'It responds to the world humanitarian crises, helping restore health, safety, economic well being and power to people devastated by conflict and disaster.',
  issues: [issue1],
  total_donations: 278589143,
  rating: "4"
)
charity7_photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/7/71/International_Rescue_Committee_Logo.svg/1200px-International_Rescue_Committee_Logo.svg.png')
charity7.photo.attach(io: charity7_photo, filename: 'charity7.jpg', content_type: 'image/jpg')

charity8 = Charity.create!(
  name: 'CDC Foundation',
  description: 'Independent non-profit and the sole entity created by Congress to mobilize philantropic and private-sector resources to support the Centers for Disease Control and Prevention health protection work',
  issues: [issue1],
  total_donations: 52872451,
  rating: "4"
)
charity8_photo = URI.open('https://www.mip-consortium.org/sites/mip/files/styles/grid-6-mobile-logo-16x9/public/content/organisation/logos/2017-12-11/cdc.png')
charity8.photo.attach(io: charity8_photo, filename: 'charity8.jpg', content_type: 'image/jpg')

charity9 = Charity.create!(
  name: 'AIDS United',
  description: 'It was established in 1980s in response to the government on-going inaction to the AIDS crisis',
  issues: [issue2],
  total_donations: 11794750,
  rating: "3"
)
charity9_photo = URI.open('https://www.dallasweekly.com/wp-content/uploads/images/2013-09-13/299855e47968235d2d81dbd430d0ce2f.jpg')
charity9.photo.attach(io: charity9_photo, filename: 'charity9.jpg', content_type: 'image/jpg')

charity10 = Charity.create!(
  name: 'amfAR',
  description: 'It is one of the most important funders of HIV research in the world',
  issues: [issue2],
  total_donations: 47731778,
  rating: "3"
)
charity10_photo = URI.open('https://www.abddirect.com/wp-content/uploads/2013/10/Amfar.png')
charity10.photo.attach(io: charity10_photo, filename: 'charity10.jpg', content_type: 'image/jpg')

charity11 = Charity.create!(
  name: 'American Friends Service Committee',
  description: 'It commemorates some historic facts',
  issues: [issue3],
  total_donations: 0,
  rating: "1"
)
charity11_photo = URI.open('https://idcoalition.org/wp-content/uploads/2016/01/American-Friends-Service-Committee.jpg')
charity11.photo.attach(io: charity11_photo, filename: 'charity11.jpg', content_type: 'image/jpg')

charity12 = Charity.create!(
  name: 'Atomic Heritage Foundation',
  description: 'It has too much history about actomic bomb used in wars',
  issues: [issue3],
  total_donations: 0,
  rating: "2"
)
charity12_photo = URI.open('https://www.atomicheritage.org/sites/default/files/NUC_logo_bw.jpg')
charity12.photo.attach(io: charity12_photo, filename: 'charity12.jpg', content_type: 'image/jpg')

charity13 = Charity.create!(
  name: 'Mealshare',
  description: 'Committed to ending youth hunger within their lifetime. Their methods enable and empower people everywhere to join their mission without asking for participants to make changes in their own lives.',
  issues: [issue4],
  total_donations: 3681209,
  rating: "3"
)
charity13_photo = URI.open('https://scontent.ftlv1-2.fna.fbcdn.net/v/t1.0-9/10710785_628070527311426_8325127363999821504_n.png?_nc_cat=106&_nc_sid=09cbfe&_nc_ohc=jANOEozDBuQAX_gA9JD&_nc_ht=scontent.ftlv1-2.fna&oh=7e970b88780867a9ec94fa06e5f19536&oe=5EF8D64B')
charity13.photo.attach(io: charity13_photo, filename: 'charity13.jpg', content_type: 'image/jpg')

charity14 = Charity.create!(
  name: 'No Kid Hungry',
  description: 'No Kid Hungry is all about education. They work to educate kids and parents that encourage and empower American families to stretch every dollar into more meals and healthier meals at home.',
  issues: [issue4],
  total_donations: 57600000,
  rating: "4.5"
)
charity14_photo = URI.open('https://i7.pngflow.com/pngimage/858/413/png-no-kid-hungry-logo-share-our-strength-hunger-nutrition-month-logo-child-food-text-orange-clipart.png')
charity14.photo.attach(io: charity14_photo, filename: 'charity14.jpg', content_type: 'image/jpg')

charity15 = Charity.create!(
  name: 'Direct Relief',
  description: 'Direct Relief is a humanitarian organization, active in all 50 states and more than 80 countries, with a mission to improve the health and lives of people affected by poverty or emergencies.',
  issues: [issue5, issue1],
  total_donations: 2000000,
  rating: "4"
)
charity15_photo = URI.open('https://i0.wp.com/www.directrelief.org/wp-content/uploads/DirectRelief_Logomark_RGB.png')
charity15.photo.attach(io: charity15_photo, filename: 'charity15.jpg', content_type: 'image/jpg')

charity16 = Charity.create!(
  name: 'Haitian Health Foundation',
  description: 'Its mission is to improve the health and well-being of women, children, familes and communities living through healthcare, education and community development.',
  issues: [issue5],
  total_donations: 2938579,
  rating: "3.5"
)
charity16_photo = URI.open('https://i.pinimg.com/280x280_RS/c0/e6/6a/c0e66ab2ea2898599d3b2a107bf5dc9b.jpg')
charity16.photo.attach(io: charity16_photo, filename: 'charity16.jpg', content_type: 'image/jpg')

charity17 = Charity.create!(
  name: 'American Jewish Committee',
  description: 'Jewish advocacy group established in 11 November 1906. It is one of the oldest Jewish organizations.',
  issues: [issue6],
  total_donations: 450000,
  rating: "3"
)
charity17_photo = URI.open('https://embedwistia-a.akamaihd.net/deliveries/c9d221492c2b6fbbb8a40a2e57eae0a4.webp?image_crop_resized=1280x720')
charity17.photo.attach(io: charity17_photo, filename: 'charity17.jpg', content_type: 'image/jpg')

charity18 = Charity.create!(
  name: 'Humanity First',
  description: 'International charity that provides disaster relief and long term development assistance to vulnerable communities in 52 countries across 6 continents.',
  issues: [issue6],
  total_donations: 1500000,
  rating: "3"
)
charity18_photo = URI.open('https://covid19.humanityfirst.org/wp-content/uploads/2020/03/logo.jpg')
charity18.photo.attach(io: charity18_photo, filename: 'charity18.jpg', content_type: 'image/jpg')

charity19 = Charity.create!(
  name: 'Care USA',
  description: 'Works arpund the globe to save lives, defeat poverty and achieve social justice; seeks a world of hope, tolerance and justice',
  issues: [issue7],
  total_donations: '213000000',
  rating: "5"
)
charity19_photo = URI.open('https://pbs.twimg.com/profile_images/1200359166893871104/_iDQOOAN_400x400.jpg')
charity19.photo.attach(io: charity19_photo, filename: 'charity19.jpg', content_type: 'image/jpg')

charity20 = Charity.create!(
  name: 'Direct Relief Foundation',
  description: 'Taking care of improve the health and lives of people affected by poverty or emergency situations by mobilizing and providing essential medical resources needed for their care.',
  issues: [issue7],
  total_donations: '41000000',
  rating: "4.5"
)
charity20_photo = URI.open('https://w7.pngwing.com/pngs/765/191/png-transparent-direct-relief-charitable-organization-united-states-donation-charity-navigator-united-states-text-orange-logo.png')
charity20.photo.attach(io: charity20_photo, filename: 'charity20.jpg', content_type: 'image/jpg')

charity21 = Charity.create!(
  name: 'Mercy Corps',
  description: 'To alleviate suffering, poverty and oppression by helping people build secure, productive and just communities.',
  issues: [issue7],
  total_donations: '268000000',
  rating: "3"
)
charity21_photo = URI.open('https://w7.pngwing.com/pngs/765/191/png-transparent-direct-relief-charitable-organization-united-states-donation-charity-navigator-united-states-text-orange-logo.png')
charity21.photo.attach(io: charity21_photo, filename: 'charity21.jpg', content_type: 'image/jpg')

charity22 = Charity.create!(
  name: 'Project C.U.R.E.',
  description: 'Founded in 1987 to help bridge staggering health resource gaps in the developing world by matching medical supplies and modern equipment with facilities in need to empower doctors and nurses with the tools they need to treat disease.',
  issues: [issue9],
  total_donations: '78652976',
  rating: "4"
)
charity22_photo = URI.open('https://ability360.org/wp-content/uploads/2017/07/2017-07-05-Project-CURE-WP.jpg')
charity22.photo.attach(io: charity22_photo, filename: 'charity22.jpg', content_type: 'image/jpg')

charity23 = Charity.create!(
  name: 'International Community Foundation',
  description: 'Founded in 1990, seeks to increase charitable giving and volunteerism across U.S. borders to benefit overseas communities and non-profit organizations.',
  issues: [issue9],
  total_donations: '13756399',
  rating: "3.5"
)
charity23_photo = URI.open('https://3i9i2q3n686v427cr941c7do-wpengine.netdna-ssl.com/wp-content/uploads/2015/11/icf-menu-logo.jpg')
charity23.photo.attach(io: charity23_photo, filename: 'charity23.jpg', content_type: 'image/jpg')

charity24 = Charity.create!(
  name: 'Save the Children',
  description: 'Since its founding over 100 years ago, we have changed the lives of over 1 billion children. In the United States and around the world, we work every day to give children a healthy start in life, the opportunity to learn and protection from harm.',
  issues: [issue9],
  total_donations: '494807970',
  rating: "3"
)
charity24_photo = URI.open('https://3i9i2q3n686v427cr941c7do-wpengine.netdna-ssl.com/wp-content/uploads/2015/11/icf-menu-logo.jpg')
charity24.photo.attach(io: charity24_photo, filename: 'charity24.jpg', content_type: 'image/jpg')

charity25 = Charity.create!(
  name: 'Africare',
  description: 'The Africare team is supplying hundreds of community health workers with simplified leaflets on the Do and Donts of Ebola treatments.',
  issues: [issue10],
  total_donations: '100000',
  rating: "2.5"
)
charity25_photo = URI.open('https://3i9i2q3n686v427cr941c7do-wpengine.netdna-ssl.com/wp-content/uploads/2015/11/icf-menu-logo.jpg')
charity25.photo.attach(io: charity25_photo, filename: 'charity25.jpg', content_type: 'image/jpg')

charity26 = Charity.create!(
  name: 'BHP',
  description: 'Mining company founded on September 1860, when its articles of association were approved by a meeting of shareholders in The Hague, Netherlands.',
  issues: [issue10],
  total_donations: '400000',
  rating: "3.5"
)
charity26_photo = URI.open('https://cdn.imgbin.com/11/8/2/imgbin-logo-bhp-billiton-ltd-bulan-sabit-hiQUAHCvqKGSbvg6bBMwFpScn.jpg')
charity26.photo.attach(io: charity26_photo, filename: 'charity26.jpg', content_type: 'image/jpg')

charity27 = Charity.create!(
  name: 'Cigna Foundation',
  description: 'American worldwide health services organization based in Bloomfield, Connecticut. Its insurance subsidiaries are major providers of medical, dental, disability, life and accident insurance and related products and services, the majority of which are offered through employers and other groups.',
  issues: [issue10],
  total_donations: '50000',
  rating: "2.5"
)
charity27_photo = URI.open('https://www.cigna.com/static/www-cigna-com/images/employers-brokers/who-we-serve/government/sponsorships/sponsorships-5-16x9-md.jpg')
charity27.photo.attach(io: charity27_photo, filename: 'charity27.jpg', content_type: 'image/jpg')

charity28 = Charity.create!(
  name: 'ShelterBox',
  description: 'International disaster relief charity established in 2000 in Helston, United Kingdom that provides emergency shelter and other aid items to families around the world who have lost their homes to disaster or conflict.',
  issues: [issue11],
  total_donations: '50000',
  rating: "2"
)
charity28_photo = URI.open('https://www.shelterbox.org/wp-content/uploads/2019/08/ShelterBox_horizontal_logo_RGB.jpg')
charity28.photo.attach(io: charity28_photo, filename: 'charity28.jpg', content_type: 'image/jpg')

charity29 = Charity.create!(
  name: 'Caritas Internationals',
  description: 'Catholic relief, development and social service organizations operating over 200 countries and territories worldwide.',
  issues: [issue11],
  total_donations: '3057370',
  rating: "3.5"
)
charity29_photo = URI.open('https://jliflc.com/wp-content/uploads/2017/01/Caritas-Internationalis-460x247.png')
charity29.photo.attach(io: charity29_photo, filename: 'charity29.jpg', content_type: 'image/jpg')

charity30 = Charity.create!(
  name: 'Something Awful',
  description: 'Comedy website housing a variety of content, including blog entries, forums, feature articles, digitally edited pictures and humorous media reviews.',
  issues: [issue11],
  total_donations: '71750',
  rating: "2.5"
)
charity30_photo = URI.open('https://upload.wikimedia.org/wikipedia/en/4/47/Something_Awful_logo.png')
charity30.photo.attach(io: charity30_photo, filename: 'charity30.jpg', content_type: 'image/jpg')

charity31 = Charity.create!(
  name: 'Freedom From Hunger`s',
  description: 'They give out micro-loans, one of the best way to fight poverty. This empowers women to buy their own nets, while providing some health insurance and savings.',
  issues: [issue12],
  total_donations: '3595872',
  rating: "3"
)
charity31_photo = URI.open('https://www.freedomfromhunger.org/sites/default/files/FFH_ResearchInnovation_102416.jpg')
charity31.photo.attach(io: charity31_photo, filename: 'charity31.jpg', content_type: 'image/jpg')

charity32 = Charity.create!(
  name: 'Against Malaria Foundation',
  description: 'British-based charity that provides long-lasting insecticidal nets to populations at high risk of malaria, primarily in Africa.',
  issues: [issue12],
  total_donations: '117400000',
  rating: "4"
)
charity32_photo = URI.open('https://pbs.twimg.com/profile_images/938722480100843525/WcngtvBa_400x400.jpg')
charity32.photo.attach(io: charity32_photo, filename: 'charity32.jpg', content_type: 'image/jpg')

charity33 = Charity.create!(
  name: 'World Vision',
  description: 'Christian humanitarian organization dedicated to working with children, families and their communities worldwide to reach their full potential by tackling the causes of poverty and injustice.',
  issues: [issue12],
  total_donations: '716808791',
  rating: "3.5"
)
charity33_photo = URI.open('https://junioreurovision.tv/hb-cgi/images/8deda1a5-0276-4b85-9eb7-64318bda0556/hero.jpg')
charity33.photo.attach(io: charity33_photo, filename: 'charity33.jpg', content_type: 'image/jpg')

puts "Seeds completed!"
