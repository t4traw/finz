buoy :root do
  link 'FINZ', root_path
end

buoy :user do |args|
  link args[:user].name, user_path(args[:user])
end

buoy :tackle do |args|
  link "#{args[:user].name}のkeywordの投稿", tackle_path(args[:tackle])
  parent :user, args
end

# buoy :stories do
#   link 'Stories', stories_path
# end

# `crumb` is the alias of `buoy`.
# ex)
# crumb :stories do
#   link 'Stories', stories_path
# end

# link's first argument, it is used as I18n key and defalt value.
# The key is searched in the scope of 'buoys.breadcrumbs'.
#
# ex)
# buoy :story do |story|
#   link :story, story_path(story)
#   # same as `link I18n.t(:story, scope: 'buoys.breadcrumbs', default: story), story_path(story)`
# end

# You can also override Buoys configuration
#
# ex)
# buoy :story_tasks do |story|
#   link :story_tasks, story_tasks_path
#   pre_buoy :story, story, {link_current: true}
# end

# You can use `pre_buoy` as parent. `parent` is the alias of `pre_buoy`
#
# ex)
# buoy :story_tasks do |story|
#   link :story_tasks, story_tasks_path
#   parent :story, story
# end
