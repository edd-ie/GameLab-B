puts "🌱 Seeding data..."

dom = Logic.create(name: "Dom", description: "dev-2ykvq2rgzomrfi8w.us.auth0.com")
cli = Logic.create(name: "Cli", description: "GrD95fk6DewRPswy6ebQWkIjuv9f15Qi")

User.create(use)

puts "🌱 Done seeding!"