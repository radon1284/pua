class PaymentsController < ApplicationController
  def payment_page

  	@name       = params[:name]
    @number     = params[:number]
    @expMonth   = params[:expMonth]
    @expYear    = params[:expYear]
    @cvc        = params[:cvc]
    @amount     = params[:amount]

      require 'rubygems'
      require 'rest_client'
      require 'json'

      values = '{
        "card": {
          "number": "@number",
          "expMonth": "@expMonth",
          "expYear": "@expYear",
          "cvc": "@cvc"
        }
      }'

      headers = {
        :content_type => 'application/json',
        :authorization => 'Basic cGstTjZUdm9CNEdQMmtJZ056NE9DY2hDVEtZdlk1a1BRZDJIRFJTZzhyUGVRRzo='
      }

      response = RestClient.post 'https://pg-sandbox.paymaya.com/payments/v1/payment-tokens', values, headers
      # puts response
      # puts response["paymentTokenId"]
      token = JSON.parse(response)

      puts token["paymentTokenId"]
      
  end
end
