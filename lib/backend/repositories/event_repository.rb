class EventRepository < Hanami::Repository
  associations do
    has_many :actions
  end
end
