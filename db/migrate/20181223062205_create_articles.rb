class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title #this is how we add column
      
    end
  end
end
