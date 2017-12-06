require 'rails_helper'

feature "user can see view basic account information" do
  scenario "user submits valid login credentials" do


  visit '/profile'

    within(".left-float-profile") do
      expect(page).to have_selector(".profile_image")
      expect(page).to have_selector(".p-login-name")
    end

    within(".body-nav-bar") do
      expect(page).to have_selector(".repos")
      expect(page).to have_selector(".stars")
      expect(page).to have_selector(".following")
      expect(page).to have_selector(".followers")
    end
  end
end
