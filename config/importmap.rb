pin "application", preload: true

# Pin jQuery and jQuery UI
pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js", preload: true
pin "jquery-ui", to: "https://code.jquery.com/ui/1.12.1/jquery-ui.min.js", preload: true
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.0.0/lib/assets/compiled/rails-ujs.js", preload: true
pin "portfolios", to: "portfolios.js"


pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"


# Pin Popper.js
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.6/dist/esm/popper.js", preload: true

# Pin Bootstrap
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.3.3/dist/js/bootstrap.esm.js", preload: true
pin "@nathanvda/cocoon", to: "@nathanvda--cocoon.js" # @1.2.14
