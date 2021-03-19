AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

kellogs = Organization.create(name:'Kellogs', location: 'Cleveland, USA')
ceral = Sector.create(name:'Cereal', :organization => kellogs)
kellogs_icon = Icon.create(asset_url: 'http://www.logos.com/logo.png', :organization=> kellogs, :project_platform=> nil, :my_role => nil)
