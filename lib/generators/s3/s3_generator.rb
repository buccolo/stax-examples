module Stax
  module Generators
    class S3Generator < Base
      desc 'Create basic S3 bucket'

      class_option :stack, type: :string, default: nil, desc: 'stack to install'
      class_option :bucket_name, type: :string, default: nil, desc: 'bucket_name'

      source_root File.expand_path('templates', __dir__)

      attr_accessor :stack, :bucket_name

      def add_to_staxfile
        append_to_file 'Staxfile', "stack :#{stack}\n"
      end

      def check_args
        usage! unless args.empty?
      end

      def ask_for_options
        @stack       = options[:stack] || ask('stack to use or create?', default: 's3')
        @bucket_name = options[:bucket_name]
      end

      def add_templates
        directory '.', 'cf'
      end

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

      private

      def self.banner(*args)
        "#{basename} generate #{command_name} ARG"
      end
    end
  end
end
