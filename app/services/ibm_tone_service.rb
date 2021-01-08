class IbmToneService
  def tone_analyzer(string)
    response = conn.post('tone') do |req|
      req.body = { "text": string }.to_json
      req.params[:version] = '2017-09-21'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/2b4aa5e4-479b-4f20-90e8-bac52b0ef763/v3/') do |req|
      req.basic_auth('apikey', '-_pug0dHBygSR4Isp_OWyfrlQjnHGOMXmAggIq66jxLS')
      req.headers['content-type'] = 'application/json'
    end
  end
end
