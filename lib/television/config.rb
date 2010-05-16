class Television
  class Config
    class << self
      def github
        @github ||= Octopussy::Client.new(YAML.load_file("#{Television.root}/config/github.yml"))
      end
    end
  end
end
