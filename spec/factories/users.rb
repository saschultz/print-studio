FactoryGirl.define do
  factory :user do
    email('coolemail@mail.com')
    password('rubyrails')
    admin true
    id(13)
  end

  factory :membership do
    membership_type("Full Membership")
    description("Full studio members will receive their own personal key for 24/7 acccess, appealing to early birds, night owls, and printmaking obsessed artists alike. Full memberships must be renewed after one year.")
    tools("black and colored inks, solvent, newsprint, acid baths for copper etching, and all printing presses")
    cost(100)
    cost_rate("month")
    id(13)
  end

  factory :review do
    name('Dana')
    feedback('It was the coolest.')
    user_id(13)
    membership_id(13)
  end

end
