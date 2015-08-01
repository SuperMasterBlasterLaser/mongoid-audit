class HistoryTracker
  include Mongoid::History::Tracker
  include Mongoid::Userstamp
  include Kaminari::MongoidExtension::Document
  
  def updater
	self.modifier
  end
  
end

