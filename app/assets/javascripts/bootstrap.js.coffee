jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
  # Hack to support logout on dropdown
  $('body')
    .off 'click.dropdown touchstart.dropdown.data-api', '.dropdown'
    # .on 'click.dropdown touchstart.dropdown.data-api', '.dropdown form', (e) ->
      # e.stopPropagation()
