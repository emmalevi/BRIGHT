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


issue1_photo = URI.open('https://blog.scopus.com/sites/default/files/coronavirus-image-iStock-628925532-full-width-wide_0.jpg')
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


puts "Creating new charities"

charity1 = Charity.create!(
  name: 'Red Cross',
  description: 'An international humanitarian movement with approximately 97 million volunteers, members and staff worldwide which was founded to protect human life and health, to ensure respect for all human beings, and to prevent and alleviate human suffering.',
  issues: [issue2],
  total_donations: 28382344,
  rating: "5"
)

charity2 = Charity.create!(
  name: 'Kids Wish Network',
  description: 'Kids Wish Network is a 501 non-profit organization that grants wishes to children with life-threatening medical conditions. It has been the subject of negative publicity throughout its history, including accusations of trademark infringement, tax avoidance and inefficient fundraising practices.',
  issues: [issue4],
  total_donations: 38484732,
  rating: "3"
)

charity3 = Charity.create!(
  name: 'Tsunami Relief Aid',
  description: 'When disaster strikes, UNICEF is always among those first on the ground and the last to leave. This unprecedented catastrophe was no different. In the immediate aftermath, UNICEF teams worked on the frontline in eight countries — Indonesia, Thailand, Myanmar, Malaysia, Sri Lanka, the Maldives, India and Somalia — delivering safe drinking water to protect children and their families from deadly water-borne diseases.',
  issues: [issue5],
  total_donations: 29349322,
  rating: "3"
)


charity4 = Charity.create!(
  name: 'Worldwide CARE',
  description: 'Taking care of human disasters.',
  issues: [issue6],
  total_donations: 185000000,
  rating: "4"
)

charity5 = Charity.create!(
  name: 'Direct Relief',
  description: 'Humanitarian organization, active in all 50 states and more than 80 countries.',
  issues: [issue1],
  total_donations: 259723786,
  rating: "4"
)

charity6 = Charity.create!(
 name: 'Radiation Effects Research Foundation',
 description: 'Binational research organization which investigates the health effects of atomic bomb radiation among survivors in Hiroshima and Nagasaki',
 issues: [issue3],
 total_donations: 0,
 rating: "2"
)

charity7 = Charity.create!(
  name: 'International Rescue Comitee',
  description: ' It responds to the world humanitarian crises, helping restore health, safety, economic well being and power to people devastated by conflict and disaster.',
  issues: [issue1],
  total_donations: 278589143,
  rating: "4"
)

charity8 = Charity.create!(
  name: 'CDC Foundation',
  description: 'Independent non-profit and the sole entity created by Congress to mobilize philantropic and private-sector resources to support the Centers for Disease Control and Prevention health protection work',
  issues: [issue1],
  total_donations: 52872451,
  rating: "4"
)

charity9 = Charity.create!(
  name: 'AIDS United',
  description: 'It was established in 1980s in response to the government on-going inaction to the AIDS crisis',
  issues: [issue2],
  total_donations: 11794750,
  rating: "3"
)

charity10 = Charity.create!(
  name: 'amfAR',
  description: 'It is one of the most important funders of HIV research in the world',
  issues: [issue2],
  total_donations: 47731778,
  rating: "3"
)

charity11 = Charity.create!(
  name: 'American Friends Service Committee',
  description: 'It commemorates some historic facts',
  issues: [issue3],
  total_donations: 0,
  rating: "1"
)

charity12 = Charity.create!(
  name: 'Atomic Heritage Foundation',
  description: 'It has too much history about actomic bomb used in wars',
  issues: [issue3],
  total_donations: 0,
  rating: "2"
)

charity13 = Charity.create!(
  name: 'Mealshare',
  description: 'Committed to ending youth hunger within their lifetime. Their methods enable and empower people everywhere to join their mission without asking for participants to make changes in their own lives.',
  issues: [issue4],
  total_donations: 3681209,
  rating: "3"
)

charity14 = Charity.create!(
  name: 'No Kid Hungry',
  description: 'No Kid Hungry is all about education. They work to educate kids and parents that encourage and empower American families to stretch every dollar into more meals and healthier meals at home.',
  issues: [issue4],
  total_donations: 57600000,
  rating: "4.5"
)

charity15 = Charity.create!(
  name: 'Direct Relief',
  description: 'Direct Relief is a humanitarian organization, active in all 50 states and more than 80 countries, with a mission to improve the health and lives of people affected by poverty or emergencies.',
  issues: [issue5],
  total_donations: 2000000,
  rating: "4"
)

charity16 = Charity.create!(
  name: 'Haitian Health Foundation',
  description: 'Its mission is to improve the health and well-being of women, children, familes and communities living through healthcare, education and community development.',
  issues: [issue5],
  total_donations: 2938579,
  rating: "3.5"
)

charity17 = Charity.create!(
  name: 'American Jewish Committee',
  description: 'Jewish advocacy group established in 11 November 1906. It is one of the oldest Jewish organizations.',
  issues: [issue6],
  total_donations: 450000,
  rating: "3"
)

charity18 = Charity.create!(
  name: 'Humanity First',
  description: 'International charity that provides disaster relief and long term development assistance to vulnerable communities in 52 countries across 6 continents.',
  issues: [issue6],
  total_donations: 1500000,
  rating: "3"
)


puts "Seeds completed!"
