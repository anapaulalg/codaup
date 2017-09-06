require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

build :event, :active

create :event, :active
create :revent, :inactive

create_list :event, 2
