class PeopleDatatable
  delegate :params, :link_to, :number_to_currency, to: :@view
  def initialize(view)
    @view = view
  end
  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: Person.count,
      iTotalDisplayRecords: people.total_entries,
      aaData: data
    }
  end
private
  def data
    people.map do |pl|
      [
        link_to(pl.name, pl),
        pl.email,
        pl.phone_number,
        pl.date_of_brith.strftime("%B %e, %Y"),
      ]
    end
  end
  def people
    @people ||= fetch_people
  end
  def fetch_people
    people = Person.order("#{sort_column} #{sort_direction}")
    people = people.page(page).per_page(per_page)
    if params[:sSearch].present?
      people = people.where("name like :search or phone_number like :search or email like :search or date_of_brith like :search  ", search: "%#{params[:sSearch]}%")
    end
    people
  end
  def page
    params[:iDisplayStart].to_i/per_page + 1
  end
  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end
  def sort_column
    columns = %w[name phone_number phone_number date_of_brith]
    columns[params[:iSortCol_0].to_i]
  end
  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end
end
