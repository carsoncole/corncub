require 'test_helper'

class StocksFlowTest < Capybara::Rails::TestCase
  include ActionView::Helpers::NumberHelper

  # test "should create stock transfer from bsa" do
  #   sign_in(scouts(:admin))
  #   assert_difference('Stock.count', 1) do
  #     post stocks_url, params: { stock: { product_id: @stock.product_id, quantity: @stock.quantity, event_id: @stock.event_id, is_transfer_from_bsa: true, location: @stock.location, date: Date.today } }
  #   end

  #   assert_redirected_to stocks_ledger_path
  # end

  # test "should create stock transfer from warehouse" do
  #   sign_in(scouts(:admin))
  #   assert_difference('Stock.count', 2) do
  #     post stocks_url, params: { stock: { product_id: @stock.product_id, quantity: @stock.quantity, event_id: @stock.event_id, location: 'site sales', date: Date.today, is_transfer_from_warehouse: true } }
  #   end
  #   assert_redirected_to stocks_ledger_path

  #   two_ledger_entries = Stock.all[-2..-1]

  #   # quantities should cancel each other
  #   assert_equal two_ledger_entries.inject(0) {|sum, e| sum + e.quantity}, 0
  # end


  # test "should show balance" do
  #   sign_in(scouts(:admin))
  #   get stocks_path, params: { location: 'warehouse' }
  #   assert_select "td.quantity", "1050"
  # end

  # test "wholesale value should balance" do
  #   sign_in(scouts(:admin))
  #   get stocks_path
  #   assert_select "td.wholesale-value", "$33,800.00"
  # end

  # test "inventory wholesale_value equals financials inventory value" do
  #   sign_in(scouts(:admin))
  #   get stocks_path
  #   wholesale_value = (css_select("td.wholesale-value")).first
  #   get balance_sheet_path
  #   assert_select "td.popcorn-inventory"
  #   balance_sheet_value = (css_select("td.popcorn-inventory")).first
  #   assert_equal wholesale_value.content, balance_sheet_value.content
  # end  

end