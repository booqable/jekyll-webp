require "jekyll-webp/version"
require "jekyll-webp/defaults"
require "jekyll-webp/webpExec"
require "jekyll-webp/webpGenerator"

module Jekyll
  module Webp
  end # module Webp
end # module Jekyll

Jekyll::Hooks.register :site, :post_write, priority: :lowest do |site|
  Jekyll::Webp::WebpGenerator.new.generate(site)
end
