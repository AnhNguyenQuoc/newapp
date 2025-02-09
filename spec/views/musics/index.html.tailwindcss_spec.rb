require 'rails_helper'

RSpec.describe "musics/index", type: :view do
  before(:each) do
    assign(:musics, [
      Music.create!(
        title: "Title",
        file: nil
      ),
      Music.create!(
        title: "Title",
        file: nil
      )
    ])
  end

  it "renders a list of musics" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
