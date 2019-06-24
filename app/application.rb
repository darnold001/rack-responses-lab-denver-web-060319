class Application
    def call(env)
        resp = Rack::Response.new

        time = Time.new
        hour = time.hour
        min = time.min

        resp.write "#{hour}"":""#{min}\n"

        if hour > 12
            resp.write "Good Afternoon!"
        elsif hour < 12
            resp.write "Good Morning!"
        end

    resp.finish
    end

end
