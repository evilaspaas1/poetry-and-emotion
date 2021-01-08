require "rails_helper"

describe Poem do
  it "can create Poem with title, author, lines attributes" do
    poem_details = {
        "title": "Not at Home to Callers",
        "author": "Emily Dickinson",
        "lines": [
            "Not at Home to Callers",
            "Says the Naked Tree --",
            "Bonnet due in April --",
            "Wishing you Good Day --"
        ],
        "linecount": "4"
    }

    poem = Poem.new(poem_details)

    expect(poem.title).to eq('Not at Home to Callers')
    expect(poem.author).to eq('Emily Dickinson')
    expect(poem.full_text).to eq("Not at Home to Callers\nSays the Naked Tree --\nBonnet due in April --\nWishing you Good Day --")
  end
end
