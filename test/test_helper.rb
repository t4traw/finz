ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
# require 'minitest/reporters'

VCR.configure do |c|
  c.cassette_library_dir = Rails.root.join('test', 'cassettes')
  c.hook_into :webmock
  # 必要に応じてfilterを作成する
  # c.filter_sensitive_data('<YOUR_SELLER_ID>') { ENV['YOUR_SELLER_ID'] }
  # c.filter_sensitive_data('<YOUR_APPLICATION_ID>') { ENV['YOUR_APPLICATION_ID'] }
  # c.filter_sensitive_data('<YOUR_APPLICATION_SECRET>') { ENV['YOUR_APPLICATION_SECRET'] }
  # c.filter_sensitive_data('<YOUR_REFRESH_TOKEN>') { ENV['YOUR_REFRESH_TOKEN'] }
  # c.filter_sensitive_data('<BASIC_AUTH>') { ENV['BASIC_AUTH'] }
  c.allow_http_connections_when_no_cassette = true
  c.default_cassette_options = {
    record: :new_episodes, # カセットがなければAPIをコールしてそれを記録する
    match_requests_on: [:method, :path, :query, :body], # カセットを引き当てる条件
  }
  c.before_record do |i|
    i.request.headers.delete('Authorization')
  end
end

# Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  def init_user(user = nil)
    user ||= FactoryBot.create(:user)
    visit(login_path)
    fill_in("email", with: user[:email])
    fill_in("password", with: "password")
    click_on("送信")
  end
end
