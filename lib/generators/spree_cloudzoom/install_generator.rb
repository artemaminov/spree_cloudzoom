module SpreeCloudzoom
  module Generators
    class InstallGenerator < Rails::Generators::Base

      desc "Appends js and css files"

      def add_javascripts
        append_file "app/assets/javascripts/store/all.js", "//= require cloudzoom\n"
      end

      def add_stylesheets
        inject_into_file "app/assets/stylesheets/store/all.css", " *= require cloudzoom\n", :before => /\*\//, :verbose => true
      end


    end
  end
end