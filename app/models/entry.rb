class Entry
  include Mongoid::Document
  include Mongoid::Timestamps
  
  paginates_per 20
  
  field :entry_text, :type => String
  belongs_to :user
  
  def self.for_user(user)
    Entry.limit(20).where(user_id: user._id).count(true)
  end

end
