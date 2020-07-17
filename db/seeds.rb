10.times do
    Location.create(
        city: Faker::Address.city,
        state: Faker::Address.state 
    )
end
10.times do
    Karen.create(
        title: Faker::Educator.course_name,
        incident: Faker::Marketing.buzzwords, 
        damn_karen: rand(0..100),
        location: Location.all.sample
    )
end