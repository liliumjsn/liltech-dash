require 'iso4217'

ISO4217::Currency.base_currency = 'EUR'



SCHEDULER.every '60m', :first_in => 0 do
  usd_currency = ISO4217::Currency.from_code('USD')
  gbp_currency = ISO4217::Currency.from_code('GBP')
  
  send_event('usd_cur',   { current: usd_currency.exchange_rate })
  send_event('gbp_cur',   { current: gbp_currency.exchange_rate })
end
