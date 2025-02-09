require 'rails_helper'

RSpec.describe "musics/edit", type: :view do
  let(:music) {
    Music.create!(
      title: "MyString",
      file: nil
    )
  }

  before(:each) do
    assign(:music, music)
  end

  it "renders the edit music form" do
    render

    assert_select "form[action=?][method=?]", music_path(music), "post" do
      assert_select "input[name=?]", "music[title]"

      assert_select "input[name=?]", "music[file]"
    end
  end
end
