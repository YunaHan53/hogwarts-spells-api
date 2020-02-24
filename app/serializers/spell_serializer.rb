# frozen_string_literal: true

class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :description, :fatality, :user
end
