module SpreeCloudzoom
  module Generators
    class InstallGenerator < Rails::Generators::Base

      desc "Appends js and css files"

      def add_javascripts
        append_file "app/assets/javascripts/store/all.js", "//= require store/cloudzoom\n"
        append_file "app/assets/javascripts/admin/all.js", "//= require admin/cloudzoom\n"
      end

      def add_stylesheets
        inject_into_file "app/assets/stylesheets/store/all.css", " *= require cloudzoom\n", :before => /\*\//, :verbose => true
        inject_into_file "app/assets/stylesheets/admin/all.css", " *= require cloudzoom\n", :before => /\*\//, :verbose => true
      end


    end
  end
end