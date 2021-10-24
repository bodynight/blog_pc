require "rails_helper"


feature "Article Creation" do

    before(:example) do
      sign_up
    end

    scenario "allows user to visit new article page" do
      visit  new_article_path
      expect(page).to have_content I18n.t('articles.new.new_articles')
    end

    scenario "allows user to visit new article page" do
      visit  new_article_path
      fill_in 'article_title', with: 'Name Article'
      fill_in 'article_text', with: 'Blabla'
      click_button 'Save Article'

      expect(page).to have_content 'Name Article'
    end


end
