class SearchFacade
  def initialize
    @poetry_service = PoetryService.new
    @ibm_tone_service = IbmToneService.new
  end

  def top_10_poems_for(author)
    poems = @poetry_service.poems(author, 10)
    poems.map do |poem|
      Poem.new(poem)
    end
  end

  def document_tones(string)
    result = @ibm_tone_service.tone_analyzer(string)
    result[:document_tone][:tones]
    # array of hash objects, each object is one tone
  end
end
