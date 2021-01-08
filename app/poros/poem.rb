class Poem
  attr_reader :title, :author, :full_text

  def initialize(poem_params)
    @title = poem_params[:title]
    @author = poem_params[:author]
    @full_text = poem_params[:lines].join("\n")
    @search = SearchFacade.new
  end

  def tones
    tones = @search.document_tones(@full_text)
    tones.map do |tone|
      tone[:tone_name]
    end
  end
end
