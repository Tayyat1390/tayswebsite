class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.binary :headerImg
      t.text :bio
      t.binary :video
      t.string :realName
      t.string :occupation
      t.string :baseOperations
      t.text :affiliations

      t.timestamps
    end
  end
end
