
require 'mongoid'

module Mongoid
  module Sex
    extend ActiveSupport::Concern
    
    included do
      field :male_boolean, type: Boolean      
    end
    
    def sex
      Value.new(male_boolean) if !male_boolean.nil?
    end
    
    def sex=(value)
      case value.to_s.chars.first.downcase
      when 'm'
        write_attribute :male_boolean, true
      when 'f'
        write_attribute :male_boolean, false
      else
        raise 'Not a supported value for sex'
      end
    rescue
      raise 'Not a supported value for sex'
    end
    
  end
end
