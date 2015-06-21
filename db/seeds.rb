admin = User.create(:email => 'daenerys.targaryen@example.localhost',
                    :firstname => 'Daenerys', :lastname => 'Targaryen',
                    :password => '12345678',
                    :password_confirmation => '12345678',
                    :admin => true)

user1 = User.create(:email => 'jon.snow@example.localhost',
                    :firstname => 'Jon', :lastname => 'Snow',
                    :password => '12345678',
                    :password_confirmation => '12345678')

user2 = User.create(:email => 'arya.stark@example.localhost',
                    :firstname => 'Arya', :lastname => 'Stark',
                    :password => '12345678',
                    :password_confirmation => '12345678')

user3 = User.create(:email => 'tyrion.lannister@example.localhost',
                    :firstname => 'Tyrion', :lastname => 'Lannister',
                    :password => '12345678',
                    :password_confirmation => '12345678')

user4 = User.create(:email => 'robb.stark@example.localhost',
                    :firstname => 'Robb', :lastname => 'Stark',
                    :password => '12345678',
                    :password_confirmation => '12345678')

user5 = User.create(:email => 'viserys.targaryen@example.localhost',
                    :firstname => 'Viserys', :lastname => 'Targaryen',
                    :password => '12345678',
                    :password_confirmation => '12345678')


thriller = Category.create(:name => 'Thriller')


t1 = Product.create(:title => 'Se7en',
                    :description => 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his modus operandi.',
                    :price => '50.99',
                    :category => thriller,
                    :user => admin)

t2 = Product.create(:title => 'Inception',
                    :description => 'A thief who steals corporate secrets through use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.',
                    :price => '70.00',
                    :category => thriller,
                    :user => user1)

t3 = Product.create(:title => 'The Silence of the Lambs',
                    :description => 'A young F.B.I. cadet must confide in an incarcerated and manipulative killer to receive his help on catching another serial killer who skins his victims.',
                    :price => '65.79',
                    :category => thriller,
                    :user => user2)

t4 = Product.create(:title => 'The Departed',
                    :description => 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.',
                    :price => '89.00',
                    :category => thriller,
                    :user => user3)

t5 = Product.create(:title => 'Memento',
                    :description => 'A man creates a strange system to help him remember things; so he can hunt for the murderer of his wife without his short-term memory loss being an obstacle.',
                    :price => '45.99',
                    :category => thriller,
                    :user => user1)

t6 = Product.create(:title => 'The Prestige',
                    :description => 'Two stage magicians engage in competitive one-upmanship in an attempt to create the ultimate stage illusion.',
                    :price => '70.25',
                    :category => thriller,
                    :user => user5)


Review.create(:content => 'Very good!',
              :rating => 5,
              :product => t1,
              :user => user1)

Review.create(:content => 'I like it!',
              :rating => 4,
              :product => t1,
              :user => user2)

Review.create(:content => 'Could be better...',
              :rating => 2,
              :product => t1,
              :user => user3)

Review.create(:content => 'I do not like it...',
              :rating => 1,
              :product => t2,
              :user => user4)

Review.create(:content => 'Awesome!',
              :rating => 5,
              :product => t3,
              :user => user5)

Review.create(:content => 'Cool :)',
              :rating => 4,
              :product => t4,
              :user => user1)

Review.create(:content => 'Quite good',
              :rating => 3,
              :product => t5,
              :user => user1)

Review.create(:content => 'Love it!',
              :rating => 4,
              :product => t3,
              :user => user3)