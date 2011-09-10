class CodeExample < ActiveRecord::Base
  belongs_to :video_cast
  SYNTAX = %w[sh_haxe sh_html]
end
