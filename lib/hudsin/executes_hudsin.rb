module Hudsin
  class ExecutesHudsin
    def self.execute options, api, output
      if options[:command] == "list"
        api.project_names.each do |project_name|
          output.puts project_name
        end
      else
        output.puts("Usage:")
      end
    end
  end
end
