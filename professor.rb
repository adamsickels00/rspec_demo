class Professor
    attr_reader :name, :subject, :rating
    def initialize(name,subject,rating)
        @name = name
        @subject = subject
        @rating = rating
    end

    def teach
        "Here is some knowledge"
    end

    def switch_subjects(subject)
        @subject = subject
    end
    
    def problem
        "Cannot hear students"
    end
end