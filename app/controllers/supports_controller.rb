class SupportsController < ApplicationController
  def faq
  end

  def troubleshooting
  end

  def chat
  end

  def sms
    @client_id = "66444d010f823db133cecc508bb566ecd86fe1ba05d68c0651aef8b1420fe326"
    @secret_key = "55c590154b6e0051bf720862423002b51e0e94c51c622cf90ea01c73ef620c38"
  end

  def calls
  end

  def tickets
  end

  def payment_params
  end
end


