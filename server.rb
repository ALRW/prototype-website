require 'sinatra'

users = [
  {
    'name' => 'John Doe',
    'avatar' => 'images/muser1.png',
    'description' => '"John Doe" , "John Roe" or "Richard Roe" (for men), "Jane Doe" or "Jane Roe" (for women), and "Baby Doe", "Janie Doe" or "Johnny Doe" (for children), or just "Doe" or "Roe" are multiple-use names that have two distinct usages. Firstly, and especially in the United States, Canada and Ireland, they may refer to an unidentified person, or a party in a legal action whose identity is being withheld officially.[1][2] In the context of law enforcement in the United States, such names are often used to refer to a corpse whose identity is unknown or unconfirmed. Secondly, such names are also often used to refer to a hypothetical "everyman" in other contexts, in a manner similar to "John Q. Public" or "Joe Public"',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 10
  },
  {
    'name' => 'Jane Doe',
    'avatar' => 'images/user1.png',
    'description' => 'The corpse of an unidentified woman is found at the scene of a bloody and bizarre homicide. The sheriff finds no signs of forced entry, suggesting that the victims were trying to escape from the residence.',
    'subscriptionPaid' => false,
    'lifetimeMember' => false,
    'level' => 3
  },
  {
    'name' => 'James Perriwinkle',
    'avatar' => 'images/muser2.png',
    'description' => 'Periwinkle, a common name for a number of gastropod molluscs in the family Littorinidae',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 1
  },
  {
    'name' => 'Dave Barchester',
    'avatar' => 'images/muser3.png',
    'description' => 'Barsetshire is a fictional English county created by Anthony Trollope in the series of novels known as the Chronicles of Barsetshire. The county town and cathedral city is Barchester. Other towns in the novels include Silverbridge, Hogglestock and Greshamsbury.',
    'subscriptionPaid' => false,
    'lifetimeMember' => true,
    'level' => 2
  },
  {
    'name' => 'Sarah Sparkle',
    'avatar' => 'images/user2.png',
    'description' => 'Sparkle may refer to a fire',
    'subscriptionPaid' => false,
    'lifetimeMember' => false,
    'level' => 6
  },
  {
    'name' => 'Tina Tinkle',
    'avatar' => 'images/user3.png',
    'description' => 'Tinkle is an Indian fortnightly magazine, published mainly in India.[1] Originally owned by the India Book House, the Tinkle brand was acquired by ACK Media in 2007.[2] The magazine contains comics, stories, puzzles, quizzes, contests and other features targeted at school children, although its readership includes many adults as well. It is published in English and syndicated in many Indian languages like Malayalam, Assamese, etc.',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 4
  },
  {
    'name' => 'Keiran O\'Brian',
    'avatar' => 'images/muser4.png',
    'description' => 'O\'Brian is an Irish surname and may refer to the name O\'Brian',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 7
  },
  {
    'name' => 'Donald Duck',
    'avatar' => 'images/muser5.png',
    'description' => 'Donald Duck is a cartoon character created in 1934 at Walt Disney Productions. Donald is an anthropomorphic white duck with a yellow-orange bill, legs, and feet. He typically wears a sailor shirt and cap with a bow tie. Donald is most famous for his semi-intelligible speech and his mischievous and temperamental personality. Along with his friend Mickey Mouse, Donald is one of the most popular Disney characters and was included in TV Guide\'s list of the 50 greatest cartoon characters of all time in 2002.[1] He has appeared in more films than any other Disney character,[2] and is the most published comic book character in the world outside of the superhero genre.[3]',
    'subscriptionPaid' => false,
    'lifetimeMember' => true,
    'level' => 5
  },
  {
    'name' => 'Minnie Mouse',
    'avatar' => 'images/user4.png',
    'description' => 'Minnie Mouse is a funny animal cartoon character created by Ub Iwerks and Walt Disney. She and Mickey Mouse were first drawn by Iwerks in 1928. The comic strip story "The Gleam" (published January 19–May 2, 1942) by Merrill De Maris and Floyd Gottfredson first gave her full name as Minerva Mouse, although this is seldom used.',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 8
  },
  {
    'name' => 'Major Mouse',
    'avatar' => 'images/muser6.png',
    'description' => 'A mouse (plural: mice) is a small rodent characteristically having a pointed snout, small rounded ears, a body-length scaly tail and a high breeding rate. The best known mouse species is the common house mouse (Mus musculus). It is also a popular pet. In some places, certain kinds of field mice are locally common. They are known to invade homes for food and shelter.',
    'subscriptionPaid' => false,
    'lifetimeMember' => false,
    'level' => 9
  }
]

get '/' do
  @users = users
  erb :index
end
