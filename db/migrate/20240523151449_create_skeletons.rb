class CreateSkeletons < ActiveRecord::Migration[7.1]
  def change
    create_table :skeletons do |t|
      t.string :name
      t.text :facts

      t.timestamps
    end
  end
end
