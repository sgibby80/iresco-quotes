class CreateQuotes < ActiveRecord::Migration
  def change
    create_table  :quotes do |t|
       t.string   :name
       t.string   :client
       t.string   :price
       t.date     :date
       t.text     :description
       t.integer  :estimate
       t.integer  :actualhrs
       t.boolean  :awarded
    
       
       
      t.timestamps null: false
    end
  end
end
