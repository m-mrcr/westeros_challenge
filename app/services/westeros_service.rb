class WesterosService

  def get_house(house)
    get_json("house/#{house}")
  end

  # private

  def get_json(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'http://westerosapi.herokuapp.com/api/v1/') do |f|
      f.params[:api_key] = ENV['WESTEROS_API_KEY']
      f.adapter Faraday.default_adapter
    end
  end
end
