require "HTTParty"

module HelpersMo
  def deletando_por_api(email)
    HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
  end
end
