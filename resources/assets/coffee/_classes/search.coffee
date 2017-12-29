###
#    Copyright 2015-2017 ppy Pty. Ltd.
#
#    This file is part of osu!web. osu!web is distributed with the hope of
#    attracting more community contributions to the core ecosystem of osu!.
#
#    osu!web is free software: you can redistribute it and/or modify
#    it under the terms of the Affero GNU General Public License version 3
#    as published by the Free Software Foundation.
#
#    osu!web is distributed WITHOUT ANY WARRANTY; without even the implied
#    warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#    See the GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with osu!web.  If not, see <http://www.gnu.org/licenses/>.
###

class @Search
  constructor: ->
    $(document).on 'click', '.js-search--advanced-forum-post-reset', @forumPostReset
    console.log findGetParameter

  forumPostReset: =>
    $('[name=username], [name=forum_id]').val ''
    $('[name=forum_children]').prop 'checked', false

  findGetParameter: =>
    result = null
    tmp = []
    items = location.search.substr(1).split('&')
    index = 0
    while index < items.length
      tmp = items[index].split('=')
      if tmp[0] == "forum_id"
        result = decodeURIComponent(tmp[1])
      index++
    result
