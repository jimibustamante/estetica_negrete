class CreateContactEmails < ActiveRecord::Migration
  def change
    create_table :contact_emails do |t|
      t.string :name
      t.string :email
      t.string :comment

      t.timestamps
    end
  end
end
