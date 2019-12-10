
class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
 
      t.timestamps
      has_many :comments
      validates :title, presence: true, length: { minimum: 5 }
    end
  end
end