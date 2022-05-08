Customer.create!([
  {first_name: "Chani", last_name: "Unell", address: "940 W. Gordon Terrace", city_state: "Chicago, IL", zipcode: "60613"}
])
Pet.create!([
  {name: "Chloe", customer_id: "1", species: "Dog", breed: "Maltipoo", birthday: "06-06-2020", sex: "Female", sterilized: true}
])
User.create!([
  {user_name: "Bunell5090", first_name: "Ben", last_name: "Unell", password_digest: "$2a$12$GRDSZ1pONkRzkMiy6RWuMuweM/.iV1E0aQfR.HjjW9riiWyxp4mGy", position: nil, email: "Bunell5090@test.com"}
])
