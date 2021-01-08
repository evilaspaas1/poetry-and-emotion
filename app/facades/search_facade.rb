class SearchFacade
  def initialize
    @poetry_service = PoetryService.new
    # @ibm_tone_service = IbmToneService.new
  end

  def top_10_poems_for(author)
    poems = @poetry_service.poems(author, 10)
    poems.map do |poem|
      Poem.new(poem)
    end
  end
end
