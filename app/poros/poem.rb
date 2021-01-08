class Poem
  attr_reader :title, :author, :full_text

  def initialize(poem_params)
    @title = poem_params[:title]
    @author = poem_params[:author]
    @full_text = poem_params[:lines].join("\n")
  end

  def tones
    []
  end
end
