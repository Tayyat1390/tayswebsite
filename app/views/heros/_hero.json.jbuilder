json.extract! hero, :id, :headerImg, :bio, :video, :realName, :occupation, :baseOperations, :affiliations, :name, :created_at, :updated_at
json.url hero_url(hero, format: :json)
