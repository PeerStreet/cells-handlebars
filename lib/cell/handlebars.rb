require "cell/handlebars/version"
require 'tilt/handlebars'

module Cell
  module Handlebars

    def template_options_for(options)
      {
        template_class: ::Tilt::HandlebarsTemplate,
        escape_html:    false,
        escape_attrs:   false,
        suffix:         "hbs"
      }
    end

  end
end
