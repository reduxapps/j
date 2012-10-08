require 'spec_helper'

describe Entry do

  it "should belong to a user" do
    u = FactoryGirl.create(:user)
    e = u.entries.create!(:entry_text => 'foo')
    e.user.should eq(u)
  end

  it "should paginate" do
    u = FactoryGirl.create(:user)
    1.upto 30 do |i|
      u.entries.create!(:entry_text => i)
    end

#  None of these worked:    
#    entries = Entry.for_user(u)    
#    first_page = user.entries.limit(20).page(1) #desc(:created_at).page(1)
#    first_page.size.should eq(20)
#    Model.desc(:created_at).page(params[:page]).per(20)
  end
end
