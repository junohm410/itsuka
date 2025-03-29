# frozen_string_literal: true

require_relative 'itsuka/version'
require 'date'

module Itsuka
  def self.parse(date_str)
    case date_str
    when '今日'
      Date.today
    when '明日'
      Date.today + 1
    when '昨日'
      Date.today - 1
    when /\A(\d+)日後\z/
      Date.today + Regexp.last_match(1).to_i
    when /\A(?<day>\d+)日前\z/
      Date.today - Regexp.last_match(1).to_i
    end
  end
end
