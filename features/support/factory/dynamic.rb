require 'faker'
module Factory
    class Dynamic
        def self.new_user
            {
                name: Faker::Name.name, 
                email: Faker::Internet.email,
                password: '4645645456456'
            }
        end
    end    
end