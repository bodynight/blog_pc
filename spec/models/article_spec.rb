require 'rails_helper'

RSpec.describe Article, type: :model do

  describe "validation" do
    it {should validate_presence_of :title}
    it {should validate_presence_of :text}
    it {should validate_length_of(:title).is_at_least(4).is_at_most (140)}
    it {should validate_length_of(:text).is_at_most (4000)}

  end

  describe "association" do
    it { should have_many :comments}
  end

  describe "#subject" do
    it "Returns the article title" do
      # создаем обьект article хитрым способом
      article = create(:article, title: 'Lorem Ipsum')
      # assert, провкрка
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

end
