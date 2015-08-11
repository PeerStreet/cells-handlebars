module Tilt
  class HandlebarsTemplate < Template

    def prepare
    end

    def evaluate(scope, locals, &block)
      @data.gsub(/\{{2,3}(.*?)\}{2,3}/){|_| scope.send $1.to_sym }
    end

  end

end
