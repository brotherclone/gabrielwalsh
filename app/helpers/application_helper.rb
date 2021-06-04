module ApplicationHelper

  def sortable(title, column, direction, active_column)

    direction = sort_direction == "asc" ? "desc" : "asc"

    icon = sort_direction == 'desc' ? 'down' : 'up'

    link_to case_studies_path(direction:direction, sort:column), id: column, class: 'btn btn-secondary' do
      if active_column == column
        "#{title} <i class='filter-sort fas fa-arrow-#{icon}'></i>".html_safe
      else
        "#{title}".html_safe
      end
    end

  end

end
