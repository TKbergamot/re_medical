$(document).on 'turbolinks:load', ->
  $('#inifiniteScrollingContainer').infiniteScroll
    path: "div.pagination a[rel=next]"
    append: ".post"
    history: false
    prefill: true
    status: '.page-load-status'
