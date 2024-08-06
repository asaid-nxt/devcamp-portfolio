// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"
import Rails from "@rails/ujs"
import "./html.sortable"
Rails.start()
//= require jquery3
//= require jquery-ui
//= require popper
//= require bootstrap-sprockets