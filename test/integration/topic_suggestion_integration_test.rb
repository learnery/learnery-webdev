require "test_helper"

describe "Topic Suggestion Integration Test" do
  before do
    @event = create(:event)
  end
  context "no topics for event" do
    it "displays a message" do
      visit event_path( @event )
      save_and_open_page
      page.must_have_content(t 'topic.new.suggest')
    end
  end

  context "two topics for event" do
    before do
      @user = create(:user)
      login_user( @user )
    end

    it "sees suggest topic link" do
      page.must_have_link(t 'topic.new.suggest')
    end

    it "i get an topic creation page with correct presets" do
      visit event_path( @event )
      click_link(t 'topic.new.suggest')
      page.must_have_content("#{t('activerecord.attributes.topic.suggested_by')}: #{@user.nickname}")
      page.must_have_content("#{t('activerecord.models.event')}: #{@event.name}")
    end
  end # /context user

end
