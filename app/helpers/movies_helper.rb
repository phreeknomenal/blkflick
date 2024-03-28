module MoviesHelper
  def movie_genre_badge(genres)
    return genres.map { |genre| content_tag(:span, genre.name, class: "inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-violet-500/60 mr-1 text-white") }.join(" ").html_safe
  end

  def movie_tab_partial(tab)
    tab.presence || "overview"
  end

  def movie_tab_class(link_tab, params_tab)
    if link_tab.eql?("overview") && params_tab.blank? || link_tab == params_tab
      "inline-flex items-center justify-center p-4 text-white bg-violet-500 rounded-full active group"
    else
      "inline-flex items-center justify-center p-4 text-white bg-violet-300 hover:bg-violet-500 hover:text-white rounded-full group"
    end
  end
end
