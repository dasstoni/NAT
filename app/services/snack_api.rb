class SnackAPI
  include HTTParty
  base uri 'https://api-snacks.nerderylabs.com/v1/'
  SNACK_ACCESS = "/snacks?ApiKey=#{ENV['SNACK_API_KEY']}"
end
