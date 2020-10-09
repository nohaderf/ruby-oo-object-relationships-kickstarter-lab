class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_info = ProjectBacker.all.select {|projectbacker| projectbacker.project == self}
        backer_info.map {|info| info.backer}
    end
end