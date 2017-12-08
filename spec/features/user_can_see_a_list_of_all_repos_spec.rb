require 'rails_helper'

feature "user can view a list of all repos" do
  scenario "user can all repos" do
  stub_omniauth
  user = User.create!(uid: stub_omniauth[:uid], login: stub_omniauth[:extra][:raw_info][:login], token: stub_omniauth[:credentials][:token])

  allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

  VCR.use_cassette("user_repos") do
    visit '/repos'
      within(".repo-details") do
        expect(page).to have_selector(".name")
        expect(page).to have_selector(".language")
        expect(page).to have_selector(".created_at")

      end
    end
  end
end
