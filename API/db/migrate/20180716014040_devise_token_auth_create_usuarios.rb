class DeviseTokenAuthCreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table(:usuarios) do |t|
      t.belongs_to :universidades
      ## Required
      t.string :provider, :null => false, :default => "email"
      t.string :uid, :null => false, :default => ""

      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.boolean  :allow_password_change, :default => false

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0, :null => false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## User Info
      t.string :cedula
      t.string :nombre
      t.string :apellido
      t.string :telefono
      t.string :direccion
      t.string :email
      t.integer :perfil

      ## Tokens
      t.json :tokens

      t.timestamps
    end

    add_index :usuarios, :email,                unique: true
    add_index :usuarios, [:uid, :provider],     unique: true
    add_index :usuarios, :reset_password_token, unique: true
    add_index :usuarios, :confirmation_token,   unique: true
    # add_index :usuarios, :unlock_token,       unique: true
  end
end
