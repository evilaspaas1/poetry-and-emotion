class PoetryService
  def poems(author, limit)
    response = conn.get("https://poetrydb.org/author,poemcount/#{author};#{limit}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new('https://poetrydb.org/')
  end
end
