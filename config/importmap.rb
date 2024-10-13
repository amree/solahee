# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "alpinejs" # @3.14.1
pin "alpine-turbo-drive-adapter" # @2.1.0
pin_all_from "app/javascript/controllers", under: "controllers"
