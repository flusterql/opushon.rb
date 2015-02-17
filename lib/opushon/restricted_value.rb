module Opushon
  class RestrictedValue
    include Virtus.model(strict: true)

    attribute :title,       String,       default: '',  required: true
    attribute :description, String,       default: '',  required: true
    attribute :value,       BasicObject,                required: true

    def to_h
      {
        title:        @title,
        description:  @description,
        value:        @value
      }
    end
  end
end
