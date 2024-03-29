module Factory
    class Static
        def self.load_file
            YAML.load_file(File.dirname(__FILE__) + "/static/#{ENVIRONMENT}.yml")
        end
        def self.get_static_data(data)
            Static.load_file[data]
        end
    end    
end