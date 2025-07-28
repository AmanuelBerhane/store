# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Category' do
  it 'is invalid without a name' do
    @category = Category.create(name: nil)
    expect(@category).to be_invalid
    end
end
