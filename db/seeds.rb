industries = [
    ["Trans-dimensional Haircuts"],
    ["Psychic Services"],
    ["Special Circumstances"]
]

disciplines = [
    ["Match making", "The science of love.", "heart"],
    ["Exorcism", "Who you gonna call?", "ghost"],
    ["Widdlin'", "Got something better to do?", "tree"]
]

organizations = [
    [ "The National Association of Meat Shapers", "The new face of style.", "http://www.placekitten.com/100/100", 0, 1 ],
    [ "Spotbox", "The finest brochures.", "http://www.placekitten.com/100/100", 1, 1 ],
    [ "Crypto Facist Removal Services", "Get them before they get you.", "http://www.placekitten.com/100/100", 2, 2 ],
    [ "State University at Eldorado", "Golden minds want to know", "http://www.placekitten.com/100/100", 3, 2 ]
]

degrees = [
    ["Bachelor of Sadness", "Why doesn't she like me?", 3],
    ["Master of the Universe", "I have the power! Fight the power.", 3 ]
]

awards = [
    ["Excellence in Aloofness", "Don't bother me, I'm thinking.", 3],
    ["Technical Achievement in Boredom", "Falling asleep to your movie is a compliment.", 3]
]

skills = [
    [ "Knitting", "It's better than coming terms with my personal shortcomings.", 2],
    [ "Fortran", "Light weight, static-typed, open-faced, modern, cross-platform", 1]

]

projects = [
    ["Stacking a lot of tea cups on top of a cat.", "It's the process.", Time.now, 0],
    ["Sorting different spices", "You'd be surprised at what people throw out.", Time.now, 1],
    ["Come Monday, I'll be Gone", "Intimate Portrait of an Elbow at Rest.", Time.now, 2]
]

served_roles = [
    ["Bee Keeper", "Tended the hive.", "bee", 0, 0]
]

portfolio_images = [
    ["http://www.placekitten.com/100/120", "it's a cat. see this part? it's his ear", 0],
    ["http://www.placekitten.com/100/120", "it's a cat. see this part? it's his nose", 0],
    ["http://www.placekitten.com/100/120", "it's a cat. see this part? it's his mouth", 1],
    ["http://www.placekitten.com/100/120", "it's a cat. see this part? it's his eye", 1],
]

portfolio_image_callouts = [
    [50,60, "Ear", "This is an ear.", 0],
    [50,60, "Nose", "This is a nose.", 1],
    [50,60, "Mouth", "This is a mouth.", 2],
    [50,60, "Eye", "This is an eye.", 3]
]

jobs = [
    [ "VP of Hiding", "Managed others who could not find me.", Time.now, Time.now, 0, 0],
    [ "Time Gate Custodian", "In charge of upkeep and repair of the Trenton time gete.", Time.now, Time.now, 2, 0],
]

industries.each do |name|
  Industry.create( name: name )
end

disciplines.each do | name, description, icon |
  Discipline.create(name: name, description: description, icon: icon )
end

organizations.each do |name, description, logo_url, organization_type, industry_id |
  Organization.create( name: name, description: description, logo_url: logo_url, organization_type: organization_type, industry_id: industry_id )
end

degrees.each do | name, description, organization_id |
  Degree.create(name: name, description: description, organization_id:organization_id)
end

awards.each do |name, description, organization_id |
  Award.create(name:name, description: description, organization_id: organization_id)
end

skills.each do |name, description, discipline_id |
  Skill.create(name: name, description:description, discipline_id: discipline_id)
end

projects.each do | title, description, project_date, organization_id |
  Project.create(title: title, description: description, project_date: project_date, organization_id: organization_id)
end

served_roles.each do | name , description, icon, skill_id, project_id |
  ServedRole.create(name:name, description:description, icon:icon, skill_id: skill_id, project_id:project_id)
end

portfolio_images.each do |image_url, description, project_id|
  PortfolioImage.create(image_url:image_url, description:description, project_id:project_id)
end

portfolio_image_callouts.each do | x, y, title, caption, portfolio_image_id|
  PortfolioImageCallOut.create(x:x, y:y, title:title, caption:caption, portfolio_image_id: portfolio_image_id)
end

jobs.each do | title, description, start_date, end_date, organization_id, skill_id|
  Job.create(title:title, description:description, start_date: start_date, end_date: end_date, organization_id:organization_id, skill_id:skill_id)
end
