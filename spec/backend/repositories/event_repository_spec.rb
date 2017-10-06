require_relative '../../spec_helper'

describe EventRepository do
  describe "#add_action" do
    it "adds an action" do
      repository = EventRepository.new
      event = repository.create(name: "signup")
      event.must_be_kind_of(Event)

      action = repository.add_action(event, name: "visit")
      action.must_be_kind_of(Action)
    end
  end
end
