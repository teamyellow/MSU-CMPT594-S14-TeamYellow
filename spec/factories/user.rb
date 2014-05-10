factory :user do |f|
   f.first_name {Faker::Name.firstname}
   f.last_name {Faker::Name.lastname}
   f.email {Faker::Email.email}
   f.password {Faker::Password.password}
   f.username {Faker::Username.username}
end

factory :invalid_user, parent: :user do |f|
   f.first_name nil
   f.last_name nil
   f.email nil
   f.password nil
   f.username nil
end
