module Stax
  module Generators
    class S3Generator < Base
      desc 's3 generator.'

      source_root File.expand_path('templates', __dir__)

      # see https://www.rubydoc.info/github/wycats/thor/Thor/Actions for methods

      # def check_args
      #   usage! if args.size != 1
      # end

      # def create_file
      #   create_file(filename) do
      #     content
      #   end
      # end

      # def create_template
      #   template(src, dest)
      # end

      # def create_dir
      #   empty_directory(path)
      # end

      # private

      # def self.banner(*args)
      #   "#{basename} generate #{command_name} ARG"
      # end
    end
  end
end
