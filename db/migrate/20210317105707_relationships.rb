class Relationships < ActiveRecord::Migration[6.1]

  def self.up
    add_reference :projects, :organization, index: true
    add_reference :project_platforms, :project, index:true
    add_reference :organizations, :sector, index:true
    add_reference :my_roles, :job, index:true
    add_reference :my_roles, :project, index:true
    add_reference :jobs, :organization, index:true
    add_reference :case_studies, :project, index:true
    add_reference :case_study_items, :case_study, index:true
    add_reference :copy_blocks, :case_study_item, index:true
    add_reference :copy_blocks, :project, index:true
    add_reference :copy_blocks, :project_platform, index:true
    add_reference :copy_blocks, :organization, index:true
    add_reference :copy_blocks, :job, index:true
    add_reference :copy_blocks, :visual, index:true
    add_reference :copy_blocks, :skill, index:true
    add_reference :visuals, :case_study_item, index:true
    add_reference :visuals, :project, index:true
    add_reference :visuals, :case_study, index:true
    add_reference :icons, :project_platform, index:true
    add_reference :icons, :organization, index:true
    add_reference :icons, :my_role, index:true
    add_reference :skills, :my_role, index:true
  end

  def self.down
    remove_reference :projects, :organization
    remove_reference :project_platforms, :project
    remove_reference :organizations, :sector
    remove_reference :my_roles, :job
    remove_reference :my_roles, :project
    remove_reference :jobs, :organization
    remove_reference :case_studies, :project
    remove_reference :case_study_items, :case_study
    remove_reference :copy_blocks, :case_study_item
    remove_reference :copy_blocks, :project
    remove_reference :copy_blocks, :project_platform
    remove_reference :copy_blocks, :organization
    remove_reference :copy_blocks, :job
    remove_reference :copy_blocks, :visual
    remove_reference :copy_blocks, :skill
    remove_reference :visuals, :case_study_item
    remove_reference :visuals, :project
    remove_reference :visuals, :case_study
    remove_reference :icons, :project_platform
    remove_reference :icons, :organization
    remove_reference :icons, :my_role
    remove_reference :skills, :my_role
  end

end
