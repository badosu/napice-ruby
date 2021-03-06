Sequel.migration do
  up do
    create_table(:user) do
      primary_key :id
      String :email, null: false
      DateTime :created_at
      DateTime :updated_at
    end
  end

  down do
    drop_table(:user)
  end
end
