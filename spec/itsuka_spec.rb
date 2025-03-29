# frozen_string_literal: true

RSpec.describe Itsuka do
  it '今日のDateオブジェクトを返す' do
    expect(Itsuka.parse('今日')).to eq(Date.today)
  end

  it '明日のDateオブジェクトを返す' do
    expect(Itsuka.parse('明日')).to eq(Date.today + 1)
  end

  it '昨日のDateオブジェクトを返す' do
    expect(Itsuka.parse('昨日')).to eq(Date.today - 1)
  end

  it '指定した日数後のDateオブジェクトを返す' do
    expect(Itsuka.parse('3日後')).to eq(Date.today + 3)
  end

  it '指定した日数前のDateオブジェクトを返す' do
    expect(Itsuka.parse('3日前')).to eq(Date.today - 3)
  end

  it '対応していない文字列を渡すとnilを返す' do
    expect(Itsuka.parse('無効な文字列')).to be_nil
  end
end
