require 'rails_helper'

RSpec.describe "musics/new", type: :view do
  before(:each) do
    assign(:music, Music.new(
      title: "MyString",
      file: nil
    ))
  end

  it "renders new music form" do
    render

    assert_select "form[action=?][method=?]", musics_path, "post" do

      assert_select "input[name=?]", "music[title]"

      assert_select "input[name=?]", "music[file]"
    end
  end
end
