require "rails_helper"

describe Poem do
  before :each do
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

    @poem = Poem.new(poem_details)
  end

  it "can create Poem with title, author, lines attributes" do


    expect(@poem.title).to eq('Not at Home to Callers')
    expect(@poem.author).to eq('Emily Dickinson')
    expect(@poem.full_text).to eq("Not at Home to Callers\nSays the Naked Tree --\nBonnet due in April --\nWishing you Good Day --")
  end

  it "#tones" do
    tone_data = [
      {
        "score": 0.730959,
        "tone_id": "joy",
        "tone_name": "Joy"
      }
    ]
    expect(@poem.tones).to eq(["Joy"])
  end
end
