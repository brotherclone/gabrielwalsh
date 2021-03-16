AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

kellogs = Organization.create(name:'Kellogs', location: 'Cleveland, USA')
ceral = Sector.create(name:'Cereal', :organization => kellogs)
