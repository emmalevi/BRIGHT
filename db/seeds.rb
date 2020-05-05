# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "Destroying current database"

Issue.destroy_all
User.destroy_all
Charity.destroy_all

user1 = User.create!(name: "Bob", email: "bob@gmail.com", password: "012345")
user2 = User.create!(name: "Jake", email: "jake@gmail.com", password:"abc123")
user3 = User.create!(name: "Ryan", email: "ryan@gmail.com", password: "def456")

puts "Creating new issues"

issue1 = Issue.create!(
  name: 'Coronavirus'
  picture_url: 'https://images.unsplash.com/flagged/photo-1584036561584-b03c19da874c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  origin: 'Health authorities in Wuhan reported a cluster of viral pneumonia cases of unknown case on December 2019, and an investigation was launched in early January 2020.
  These cases mostly had links to the Huanan Seafood Whosale Market. The virus that caused the outbreak is known as SARS-CoV-2, which has been related with some animals like bat and pangolin.'
  country: 'China'
  description: 'It spreads between people during contact'
  death_count: '244.911 people'
)

issue2 = Issue.create!(
  name: 'AIDS'
  picture_url: 'https://images.pexels.com/photos/3900425/pexels-photo-3900425.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
  origin: 'Its first cases were discovered in US in 1981, initial cases were a cluster of injecting drugs users and homosexual men with no known cause of impaired immunity who showed symptoms pneumonia. Soon thereafter, an unexpected number of homosexual men developed a previously rare skin cancer called Kaposis sarcoma.
  Many more cases of pneumonia and KS emerged, alerting US Center for Disease Control and Prevention and a CDC task force was formed to monitor the outbreak.'
  country: 'World'
  description: 'It interferes more with the inmune system, increasing the risk of infections such as tuberculosis or other infections'
  death_count: 'Between 1 and 2 million people'

)

issue3 = Issue.create!(
  name: 'Hiroshima Radiation'
  picture_url: 'https://ichef.bbci.co.uk/news/800/cpsprodpb/12659/production/_101235357_hi023345454.jpg'
  origin: 'Hiroshima was the primary target of the first atomic bombing mission on 6 August. Bombardment Squadron, piloted by Tibbets, took off from North Field about six hours flight from Japan. Enola Gay was accompained by two other B-29s.'
  country: 'Japan'
  description: 'It was a result of exposure to the blast, heat, or due to radiation'
  death_count: '60.000'
)

issue4 = Issue.create!(
  name: 'Childroom Hunger'
  picture_url: 'https://images.unsplash.com/photo-1507427100689-2bf8574e32d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
  origin: 'There is only one globally recognized approach for defining and measuring hunger that is generally used by those studying or working to relieve hunger as a social problem whether being men, women or children. Causes that explain the chidroom hunger are malnutrition and food insecurity'
  country: 'World'
  description: 'It is always in constant growth'
  death_count: '50.000.000'
)

issue5 = Issue.create!(
 name: 'Haiti Earthquake'
 picture_url: 'https://xmagazinenews.files.wordpress.com/2010/12/2004-tsunami.jpg?w=320&h=210'
 origin: 'The magnitude 7.0 earthquake ocurred in land on 12 January 2010 at 16:53 approximately 25 km from Port-au-Prince at a depth of 13 km. There is no evidence of surface rupture and based on seismological and geological information data it is thought that the earthquake did not involve significant lateral slip on the main fault.
 Strong shaking associated with intensity IX on the Modified Mercalli scale was recorded in Port-au-Prince and its suburbs. '
 country: 'Haiti'
 description: 'The earthquake struck in the most populated area of the country'
 death_count: '316.000'
)

issue6 = Issue.create!(
  name: 'Indian Ocean Earthquake and Tsunami'
  picture_url: 'https://static2.diariouno.com.ar/media/2019/12/Tsunami-%C3%8Dndico-2004-fotos-700x395.jpg'
  origin: 'The 2004 Indian Ocean earthquake was initially documented as having a moment magnitude 8.8. In February 2005, scientists revised the estimate of the magnitude 9.0. It was initially large in geographical and geological extent. The tsunami like all others behaved differently in deep water than in shallow water. In deep ocean water, tsunami waves form only a low, broad hump, barely noticeable and harmless, which generally travels at high speed of 500 to 1000 km/h'
  country: 'India', 'Indonesia', 'Malaysia', 'Maldives', 'Somalia', 'Sri Lanka', 'Thailand'
  description: 'Some films talk about more or less about the disaster'
  death_count: '227.898'
)

puts "Creating new charities"

charity1 = Charity.create!(
  name: 'Bob'
  charity_issues: 'Chrildroom Hunger', 'Hiroshima Radiation'
  donations: '20$'
  rating: '5 of 5'
)

charity2 = Charity.create!(
  name: 'Jake'
  charity_issues: 'Haiti Earthquake'
  donations: '40$'
  rating: '3 of 5'
)

charity3 = Charity.create!(
  name: 'Ryan'
  charity_issues: 'AIDS'
  donations: '80$'
  rating: '3 of 5'
)
