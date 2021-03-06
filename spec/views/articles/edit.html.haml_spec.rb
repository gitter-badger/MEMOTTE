require 'rails_helper'

RSpec.describe "articles/edit", :type => :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :title => "MyString",
      :contents => "MyText",
      :user_id => ""
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "textarea#article_contents[name=?]", "article[contents]"

      assert_select "input#article_user_id[name=?]", "article[user_id]"
    end
  end
end
