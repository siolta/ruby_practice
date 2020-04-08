
class Scene
    $prompt = '> '

    def enter()
        puts "scene not initialized, exiting."
        exit(1)
    end
end


class Engine

    def initialize(scene_map)
        @scene_map = scene_map
    end
    
    def play()
        current_scene = @scene_map.opening_scene()
        last_scene = @scene_map.next_scene('finished')

        while current_scene != last_scene
            next_scene_name = current_scene.enter()
            current_scene = @scene_map.next_scene(next_scene_name)
        end
        
        current_scene.enter()
    end
end

class Death < Scene

    # @@ scopes this to the class
    @@quips = [
        "You died.  You kinda suck at this.",
        "Your mom would be proud...if she were smarter.",
        "Such a luser.",
        "I have a small puppy that's better at this."
    ]

    def enter()
        puts @@quips[rand(1..(@@quips.length - 1))]
        exit(1)
    end
end

class CentralCorridor < Scene

    def enter()
        puts "Gothon blocks your path, what do you do?"
        print $prompt
        action = $stdin.gets.chomp
        if action == "shoot"
            puts "Quick on the draw you yank out your blaster and fire it at the Gothon."
            return 'death'
        elsif action == 'dodge'
            puts "like a world class boxer you dodge, weave, slip and slide right."
            return 'death'
        elsif action == 'joke'
            puts "Gothon laughs, you sneak past during it's laughing fit."
            # go to armory, but how?
            return 'armory'
        else
            puts "DOES NOT COMPUTE!"
            return 'central_corridor'
        end
    end
end

class LaserWeaponArmory < Scene

    def enter()
        puts "you've made it to the armory."
        return 'finished'
    end
end

class TheBridge < Scene

    def enter()
    end
end

class EscapePod < Scene

    def enter()
    end
end

class Finished < Scene
    
    def enter()
        puts "you won!"
    end
end


class Map
    @@scenes = { 'central_corridor' => CentralCorridor.new(),
                'armory' => LaserWeaponArmory.new(),
                'bridge' => TheBridge.new(),
                'escape' => EscapePod.new(),
                'finished' => Finished.new(),
                'death' => Death.new()
    }

    def initialize(start_scene)
        @start_scene = start_scene
    end

    def next_scene(scene_name)
        return @@scenes[scene_name]
    end

    def opening_scene()
        return next_scene(@start_scene)
    end
end


a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
