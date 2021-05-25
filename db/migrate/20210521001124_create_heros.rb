class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.binary :headerImg
      t.text :bio
      t.string :video
      t.string :realName
      t.string :occupation
      t.string :baseOperations
      t.string :affiliations
      t.string :name

      t.timestamps
    end
  end
end
