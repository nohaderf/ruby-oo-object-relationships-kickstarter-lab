require 'pry'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_info = ProjectBacker.all.select {|projectbacker| projectbacker.backer == self}
        project_info.map {|info| info.project}
    end
end