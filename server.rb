require 'sinatra'

users = [
  {
    'name' => 'John Doe',
    'avatar' => 'images/muser1.png',
    'description' => '"John Doe" , "John Roe" or "Richard Roe" (for men), are multiple-use names that especially in the United States, Canada and Ireland, may refer to an unidentified person, or a party in a legal action whose identity is being withheld officially.',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 10
  },
  {
    'name' => 'Jane Doe',
    'avatar' => 'images/user1.png',
    'description' => 'John Doe\' erstwhile partner in crime!',
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
    'description' => 'Gets her name from Tinkle an Indian fortnightly magazine, published mainly in India. The magazine contains comics, stories, puzzles, quizzes, contests and other features targeted at school children, although its readership includes many adults as well.',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 4
  },
  {
    'name' => 'Keiran O\'Brian',
    'avatar' => 'images/muser4.png',
    'description' => 'O\'Brian is an Irish surname and may refer to the name O\'Brian, Keiran is of course Irish.',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 7
  },
  {
    'name' => 'Donald Duck',
    'avatar' => 'images/muser5.png',
    'description' => 'Donald Duck is a cartoon character created in 1934 at Walt Disney Productions. Donald is an anthropomorphic white duck with a yellow-orange bill, legs, and feet. He typically wears a sailor shirt and cap with a bow tie. Donald is most famous for his semi-intelligible speech and his mischievous and temperamental personality.',
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
    'description' => 'Minie and Mickey\'s military uncle',
    'subscriptionPaid' => false,
    'lifetimeMember' => false,
    'level' => 9
  },
  {
    'name' => 'Daffy Duck',
    'avatar' => 'images/user5.png',
    'description' => 'Daffy Duck is an animated cartoon character produced by Warner Bros. Styled as an anthropomorphic black duck, the character has appeared in cartoon series such as Looney Tunes and Merrie Melodies, where he usually has been depicted as the best friend and occasional arch-rival of Bugs Bunny',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 11
  },
  {
    'name' => 'Angelica Pickles',
    'avatar' => 'images/user6.png',
    'description' => 'This bumptious four-year-old is, undoubtedly, a brat. But Angelica probably has more Rugrats fans than her bald, heroic baby cousin Tommy for her temper tantrums, plastic sidekick Cynthia and ferocious cookie habit. Angelica may be the Babies’ antagonist, but it’s undeniable that her complex schemes, world-weary wisdom and upbringing under a mobile phone-toting working mother would put her in good stead for being Grown-up.',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 12
  }
]



get '/' do
  @users = users
  erb :index
end
