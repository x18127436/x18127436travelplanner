class GlobalSummary
    include HTTParty
    base_uri 'https://covid19.mathdro.id/api'
    
    def initialize
        @options = {}
    end

    def general
        self.class.get('/', @options)
    end

    def confirmed
        self.class.get('/confirmed',@options)
    end

    def recovered
        self.class.get('/recovered',@options)
    end
    
    def deaths
        self.class.get('/deaths',@options)
    end

end