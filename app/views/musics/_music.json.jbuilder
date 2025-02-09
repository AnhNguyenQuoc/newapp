json.extract! music, :id, :title, :file, :created_at, :updated_at
json.url music_url(music, format: :json)
json.file url_for(music.file)
