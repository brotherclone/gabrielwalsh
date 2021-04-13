AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
ceral = Sector.create(name:'Cereal')
kellogs = Organization.create(name:'Kellogs', location: 'Cleveland, USA', :sector => ceral)
job = Job.create(start_date: Date.today, end_date: Date.tomorrow, :organization=> kellogs)
whats_this = Visual.create(asset_url: "https://www.placekitten.org/300/399")
operation_tepid_lobe = Project.create(working_date: Date.today, publish_date: Date.yesterday, :organization => kellogs)
f_box = ProjectPlatform.create(platform_name: 'F Box 4203 Live', :project => operation_tepid_lobe)
ghost = MyRole.create(role_name: 'A Friendly Ghost', :job => job)
a_shy_child = MyRole.create(role_name: 'A Shy Child', :job => job)
kellogs_icon = Icon.create(asset_url: 'http://www.logos.com/logo.png', :organization=> kellogs, :project_platform=> f_box, :my_role => ghost)
and_all_the_children_cried = CaseStudy.create(:project=> operation_tepid_lobe)
exhibit_a = CaseStudyItem.create(case_study_type: 1, :case_study=> and_all_the_children_cried)
the_keratupy_skadoo = Skill.create(:name => 'Watusi', :my_role => a_shy_child)
a_poem = CopyBlock.create(text: "Fleas\n Adam \n Had 'em", :case_study_item => exhibit_a,
                          :project => operation_tepid_lobe,
                          :organization => kellogs, :job => job, :visual => whats_this)
