class AddDeviseTokenAuthUser < ActiveRecord::Migration[5.2]
  def change
    ## Required
    add_column :users, :provider, :string, null: false, default: ''
    add_column :users, :uid, :string, null: false, default: ''

    ## Tokens
    add_column :users, :tokens, :text

    ## Confirmable
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :string
    add_column :users, :confirmation_sent_at, :string
    add_column :users, :unconfirmed_email, :string
  end
end
