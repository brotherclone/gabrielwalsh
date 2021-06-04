module ApplicationHelper

  def sortable(title, column, direction)
    direction = sort_direction == "asc" ? "desc" : "asc"
    icon = sort_direction == 'desc' ? 'down' : 'up'
    link_to case_studies_path(direction:direction, column:column), id: column do
      "<button class='btn btn-link'>#{title} <i class='filter-sort fas fa-arrow-#{icon}'></i></button>".html_safe
    end
  end

end
