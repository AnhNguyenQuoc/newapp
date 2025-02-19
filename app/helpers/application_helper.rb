module ApplicationHelper
  def navigation_path
    [
      { name: "Home", path: root_path },
      { name: "Musics", path: musics_path },
      { name: "Posts", path: posts_path }
    ]
  end
end
