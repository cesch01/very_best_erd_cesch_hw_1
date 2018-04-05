class CreateVenueAddresses < ActiveRecord::Migration
  def change
    create_table :venue_addresses do |t|
      t.string :address
      t.string :neighborhood

      t.timestamps

    end
  end
end
