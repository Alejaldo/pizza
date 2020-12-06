class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |c|
      c.text :scope
      c.text :name
      c.text :phone
      c.text :address

      c.timestamps
    end
  end
end
