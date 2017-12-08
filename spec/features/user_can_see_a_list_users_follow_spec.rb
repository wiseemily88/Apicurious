require 'rails_helper'

feature "user can view a summary feed of recent activity from users whom I follow" do
  scenario "user can view index of followers" do
  stub_omniauth
  user = User.create!(uid: stub_omniauth[:uid], login: stub_omniauth[:extra][:raw_info][:login], token: stub_omniauth[:credentials][:token])

  allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

  VCR.use_cassette("user_following_index") do
    visit '/following'
      within(".followers-list") do
        expect(page).to have_selector(".profile_image")
        expect(page).to have_selector(".profile-description")
      end
    end
  end
end
