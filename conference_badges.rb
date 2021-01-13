def badge_maker(name)
    return "Hello, my name is #{name}."
end


def batch_badge_creator(attendees)
    badge_greeting = []
    attendees.each {|names| badge_greeting << badge_maker(names)}
    badge_greeting
end

def assign_rooms(attendees)
    room_list = []
    attendees.each_with_index do |name,index|
        room_list << "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    room_list
end

def printer(attendees)
    batch_badge_creator(attendees).each {|names| puts names}
    assign_rooms(attendees).each {|assignment| puts assignment}
end
