require 'sinatra'

users = [
  {
    'name' => 'John Doe',
    'avatar' => 'images/muser1.png',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 10
  },
  {
    'name' => 'Jane Doe',
    'avatar' => 'images/muser1.png',
    'subscriptionPaid' => false,
    'lifetimeMember' => true,
    'level' => 3
  },
  {
    'name' => 'James Perriwinkle',
    'avatar' => 'images/muser1.png',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 1
  },
  {
    'name' => 'Dave Barchester',
    'avatar' => 'images/muser1.png',
    'subscriptionPaid' => false,
    'lifetimeMember' => true,
    'level' => 2
  },
  {
    'name' => 'Sarah Sparkle',
    'avatar' => 'images/muser1.png',
    'subscriptionPaid' => false,
    'lifetimeMember' => false,
    'level' => 6
  },
  {
    'name' => 'Tina Tinkle',
    'avatar' => 'images/muser1.png',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 3
  },
  {
    'name' => 'Keiran O\'Brian',
    'avatar' => 'images/muser1.png',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 8
  },
  {
    'name' => 'Donald Duck',
    'avatar' => 'images/muser1.png',
    'subscriptionPaid' => false,
    'lifetimeMember' => true,
    'level' => 9
  },
  {
    'name' => 'Minnie Mouse',
    'avatar' => 'images/muser1.png',
    'subscriptionPaid' => true,
    'lifetimeMember' => false,
    'level' => 20
  },
  {
    'name' => 'Major Mouse',
    'avatar' => 'images/muser1.png',
    'subscriptionPaid' => false,
    'lifetimeMember' => false,
    'level' => 2
  }
]

get '/' do
  @users = users
  erb :index
end
