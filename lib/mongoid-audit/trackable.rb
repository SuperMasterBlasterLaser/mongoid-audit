module Trackable
  extend ActiveSupport::Concern
  include Mongoid::History::Trackable
  include Mongoid::Userstamp
  included do
    track_history({
      track_create: true,
      track_destroy: true,
      track_update: true,
	  version_field: :version,
      modifier_field: :updater,
	  modifier_field_inverse_of: :person,
      except: ["created_at", "updated_at", "c_at", "u_at"]
    })
  end
end

