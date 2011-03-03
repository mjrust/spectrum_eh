class CreateBodyMasses < ActiveRecord::Migration
  def self.up
    create_table :body_masses do |t|
      t.string :feet
      t.string :inches
      t.string :weight
      t.timestamps
    end
  end

  def self.down
    drop_table :body_masses
  end
end
