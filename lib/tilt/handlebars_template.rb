module Tilt
  class HandlebarsTemplate < Template

    def prepare
    end

    def evaluate(scope, locals, &block)
      @data.gsub(/\{{3}(.*?)\}{3}/){|_| scope.send $1.to_sym }.gsub(/\{{2}(.*?)\}{2}/){|_| CGI::escapeHTML scope.send($1.to_sym).to_s }
    end

  end

end
