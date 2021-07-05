class Farm 
    attr_accessor :type_of_field :total_area
    @@total_amount_of_food = 0
    @@fields = []

    def Self.field(type_of_field, total_area)
        new_field = Fields.new(type_of_field, total_area)
        @@fields.push(new_field)
        return new_field
    end

    def harvest(type_of_field)
        if type_of_field == "corn"
            @@total_amount_of_food += 20
            puts @@total_amount_of_food
        elsif type_of_field == "wheat"
            @total_amount_of_food += 30
            puts @@total_amount_of_food
        end
    end

    def status
        puts  "The type of field is #{@type_of_field}"
        puts "The arera is #{@total_area} "
        puts "The total amount of food is #{@@total_amount_of_food}"
    end

    def list_of_input_options
        puts "[1] fields -> adds a new field"
        puts "[2] harvest -> harvests harvests crops and adds to total harvested"
        puts "[3] status -> displays some information about the farm"
        puts "[4] relax -> provides lovely descriptions of your fields"
        puts "[5] exit -> exits the program"
    end

    def choose_input
        puts "Choose an option between: field, harvest, status, relax and exit"
        user_input = gets.chomp
        if user_input == field
    end
end

=begin

=end

my_field = Fields.new("corn", 20)
my_field2 = Fields.new("wheat", 30)

p my_field
p my_field2