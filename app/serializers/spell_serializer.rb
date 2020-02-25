# frozen_string_literal: true

class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description, :fatality, :user
end
