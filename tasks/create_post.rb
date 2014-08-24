require 'thor'
require 'jekyll'
require 'fileutils'
require 'stringex_lite'

class PostCreator < Thor
  include Thor::Actions

  desc "create_post TITLE", "create and open a file for a post titled TITLE"
  def create_post(title = "")
    title = ask("Post title: ").to_s if title == ""

    create_file(post_path(title),
                %Q{
                   ---
                   layout: post
                   title: #{title}
                   author: #{author}
                   date: #{Time.now.strftime("%Y-%m-%d %H:%M")}
                   categories:
                   tags:
                   ---
                   }.gsub(/^\s*/,''))
  end

  private

  def post_path(title)
    "./#{posts_dir}/#{post_filename(title)}"
  end

  def posts_dir
    "_posts"
  end

  def post_filename(title)
    "#{Time.now.strftime("%Y-%m-%d")}-#{title.to_url}.md"
  end

  def author
    "Stefan"
  end

end

PostCreator.start(ARGV)
