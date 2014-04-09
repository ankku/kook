class CreateRestrictions < ActiveRecord::Migration
  def change
    create_table :restrictions do |t|
      t.boolean :no_red_meat
      t.boolean :ovo_lacto_vegetarian
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :glutein_free
      t.boolean :lactose_free

      t.timestamps
    end
  end
end
