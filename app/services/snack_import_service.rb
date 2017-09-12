class SnackImportService

  attr_accessor :client

  def initialize(client = nil, **opts)
    @client = client || SnackAPI.new(opts)
  end

  def perform
    response = client.get_snacks
    # Check to verify HTTP request passes
    if response.success?
      response[:snacks].map do |data|
        Snack.find_or_create_by!(name: data[:name])
      end
    else
      Rails.logger.error "SnackAPI request was unsuccesful #{response.code}"
    end
  end
end
