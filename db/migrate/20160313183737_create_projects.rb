class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      
      
       t.integer   :jobno
       t.string    :client
       t.string    :jobname
       t.integer   :weightlbs
       t.integer   :weightkgs
       t.integer   :members
       t.integer   :shopdwgs
       t.integer   :edwgs
       t.text      :description
       t.integer   :price
       t.integer   :detailhours
       t.integer   :checkinghours
       t.date      :startdate
     
    

      t.timestamps null: false
    end
  end
end
