class ApplicationController < ActionController::API
    include RackSessionFixController
    include ActionController::RequestForgeryProtection
    protect_from_forgery with: :exception, unless: -> { request.format.json? }
end
