puts "🌱 Seeding data..."

User.create(name: "GameLord", email: "abc@mcx.com", created_at: Time.now, Active: True)
User.create(name: "NoobHunter", email: "def@mcx.com", created_at: Time.now, Active: True)
User.create(name: "KillerKIlller", email: "ght@mcx.com", created_at: Time.now, Active: True)
User.create(name: "DeezNuts", email: "xys@mcx.com", created_at: Time.now, Active: True)
User.create(name: "New1", email: "fff@mcx.com", created_at: Time.now, Active: True)
User.create(name: "Gamer1234", email: "gdgd@mcx.com", created_at: Time.now, Active: True)
User.create(name: "Yeah", email: "fddg@mcx.com", created_at: Time.now, Active: True)

Jump.create(score: 10, user_id: 1)
Jump.create(score:5, user_id: 2)
Jump.create(score:20, user_id: 3)
Jump.create(score:6, user_id: 4)
Jump.create(score:8, user_id: 5)
Jump.create(score:9, user_id: 6)
Jump.create(score:7, user_id: 7)

Number.create(score: 10, user_id: 1)
Number.create(score:5, user_id: 2)
Number.create(score:20, user_id: 3)
Number.create(score:6, user_id: 4)
Number.create(score:8, user_id: 5)
Number.create(score:9, user_id: 6)
Number.create(score:7, user_id: 7)



puts "🌱 Done seeding!"