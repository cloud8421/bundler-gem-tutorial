module Bramipsum

  class Base

    def self.source
      @source ||= self.read
    end

    def self.processed_source
      self.source.split("\n")
    end

    private

    def self.read
      File.read(File.expand_path('book/dracula.txt'))
    end

  end

end
