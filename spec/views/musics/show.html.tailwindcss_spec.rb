require 'rails_helper'

RSpec.describe "musics/show", type: :view do
  before(:each) do
    assign(:music, Music.create!(
      title: "Title",
      file: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
