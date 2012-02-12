
require 'i18n'

module Mongoid
  module Sex
    class Value
      
      def initialize(value)
        @male = value
      end
      
      def male?
        @male
      end
      
      def female?
        !@male
      end
      
      def text
        if male?
          I18n.t 'sex.male', default: 'male'
        else
          I18n.t 'sex.female', default: 'female'
        end
      end
      alias :to_s :text
      
      def hisher
        if male?
          I18n.t 'sex.his', default: 'his'
        else
          I18n.t 'sex.her', default: 'her'
        end
      end
      alias :his_her :hisher
      
      def heshe
        if male?
          I18n.t 'sex.he', default: 'he'
        else
          I18n.t 'sex.she', default: 'she'
        end
      end
      alias :he_she :heshe

    end
  end
end
