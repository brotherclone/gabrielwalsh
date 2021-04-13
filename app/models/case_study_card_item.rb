class CaseStudyCardItem

  def all
    ObjectSpace.each_object(self).entries
  end

  @@array = Array.new

  attr_accessor :link, :img, :title, :description

  def self.all_instances
    @@array
  end

  def initialize(link, img, title, description)
    @link = link
    @img = img
    @title = title
    @description = description
    @@array << self
  end

end