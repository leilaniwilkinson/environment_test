# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Percy Jackson',
                        author: 'Rick Riordan',
                        price: '4',
                        published_date: '08/08/2021')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a name' do
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end