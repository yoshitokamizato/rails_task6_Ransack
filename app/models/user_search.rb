class UserSearch < ApplicationRecord
  
  attr_accessor :search_name, :search_age

  def initialize(search_name:, search_age:)
    @search_name = search_name
    @search_age = search_age
  end

  def execute
    User.ransack(name_eq: @search_name, age_eq: @search_age).result
  end
end