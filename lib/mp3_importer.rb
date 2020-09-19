require 'pry'
class MP3Importer

    attr_accessor :path



    def initialize(path)
        @path = path
    end

    def files
        new_files = Dir["#{path}/*"].collect { |filename| filename.split(/..spec\/fixtures\/mp3s\//).join }
    end

    def import
        files.each do |file|
            Song.new_by_filename(file)
        end
    end


end