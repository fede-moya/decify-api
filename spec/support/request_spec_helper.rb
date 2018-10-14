module RequestSpecHelper
  # Parse JSON response to ruby hash
  def json_response
    JSON.parse(response.body)
  end

  def json_response_data
  	JSON.parse(response.body)["data"]
  end
end