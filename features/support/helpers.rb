require "HTTParty"
module HelpersMo

    def delorean(email)
        HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
    end
end