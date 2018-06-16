require 'fileutils'
require 'yaml'

module ZdHire
  class Config
    attr_accessor :github_token, :origin_repo, :local_path, :branch

    def initialize
      if File.exist?(config_file)
        begin
          deserialize_from_file
        rescue
          FileUtils.rm(config_file)
        end
      end
    end

    def config_file
      @config_file ||= File.join(File.expand_path('~'), '.zd_hire')
    end

    def deserialize_from_file
      self.attributes = YAML.load_file(config_file)
    end

    def serialize_to_file
      File.write(config_file, attributes.to_yaml)
    end

    def attributes
      {
        github_token:   github_token,
        origin_repo:    origin_repo,
        local_path:     local_path,
        branch:         branch,
      }
    end

    def valid?
      attributes.values.none?(&:nil?)
    end

    def attributes=(options)
      self.github_token   = options[:github_token]
      self.origin_repo    = options[:origin_repo]
      self.local_path     = options[:local_path]
      self.branch         = options[:branch]
    end
  end
end
