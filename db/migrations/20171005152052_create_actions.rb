Hanami::Model.migration do
  change do
    create_table :actions do
      primary_key :id

      foreign_key :event_id, :events, on_delete: :cascade, null: false
      column :name, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
