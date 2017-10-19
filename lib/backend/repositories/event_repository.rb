class EventRepository < Hanami::Repository
  associations do
    has_many :actions
  end

  def create_with_actions(data)
    assoc(:actions).create(data)
  end

  def add_action(event, data)
    assoc(:actions, event).add(data)
  end

  def find_event_value(id)
    aggregate(:actions).where(id: id).limit(1).map_to(EventValue).one
  end
end
