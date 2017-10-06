require_relative '../../spec_helper'

describe EventRepository do
  describe "#create_with_action" do
    it "creates with an action" do
      repository = EventRepository.new
      event = repository.create_with_actions(name: "logout", actions: [{ name: "click" }])
      event.must_be_kind_of(Event)

      event.actions.count.must_equal(1)
      action = event.actions.first
      action.must_be_kind_of(Action)
      action.name.must_equal("click")
    end
  end

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
