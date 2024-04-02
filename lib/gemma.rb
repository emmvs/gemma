# frozen_string_literal: true
# lib/gemma.rb
require_relative "gemma/version"
require "yaml"

module Gemma
  class Error < StandardError; end

  # Your code goes here...
  class Synchronizer
    def self.sync(english_file, german_file)
      en = YAML.load_file(english_file)
      de = YAML.load_file(german_file)
      updated_de = update_keys(en, de)
      
      File.open(german_file, "w") { |file| file.write(updated_de.to_yaml) }
    end

    def self.update_keys(source, target, parent_key = nil)
      source.each do |key, value|
        full_key = [parent_key, key].compact.join('.')
        if value.is_a?(Hash)
          target[key] ||= {}
          update_keys(value, target[key], full_key)
        else
          target[key] = "TRANSLATE: #{full_key}" unless target.key?(key)
        end
      end
      target
    end
  end
end
