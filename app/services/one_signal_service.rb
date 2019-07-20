class OneSignalService
  include HTTParty
  base_uri 'https://onesignal.com/api/v1'

  def self.notify_all_subscribed_users(message)
    post(
      '/notifications',
      body: {
        'app_id' => Rails.application.secrets.one_signal_app_id,
        'contents' => { 'en' => message },
        'included_segments' => ['All']
      }.to_json,
      headers: {
        'Content-Type'  => 'application/json;charset=utf-8',
        'Authorization' => "Basic #{Rails.application.secrets.one_signal_api_key}"
      }
    ).parsed_response
  end

  def self.notify_users(ids:, title:, message:)
    post(
      '/notifications',
      body: {
        'app_id' => Rails.application.secrets.one_signal_app_id,
        'headings' => { 'en' => title },
        'contents' => { 'en' => message },
        'include_external_user_ids' => ids
      }.to_json,
      headers: {
        'Content-Type'  => 'application/json;charset=utf-8',
        'Authorization' => "Basic #{Rails.application.secrets.one_signal_api_key}"
      }
    ).parsed_response
  end
end
