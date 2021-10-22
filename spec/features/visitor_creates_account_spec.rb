require "rails_helper"

feature "Account creation" do
  scenario "allows guest create account" do
    visit new_user_registration_path

    fill_in :user_email, :with=>'usr@hjgjhghkrt'
    fill_in :user_username, :with=>'Jejk'
    fill_in :user_password, :with=>'12345678'
    fill_in :user_password_confirmation, :with=>'12345678'

    click_button 'Sign up'

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end
