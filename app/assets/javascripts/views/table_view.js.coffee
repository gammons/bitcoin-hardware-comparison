App.TableView = Backbone.View.extend
  el: '#data'
  events:
    "click .compare": 'compare'
    "click td.compareBox": 'checkTheBox'

  compare: (e) ->
    vals = _.map @$('table input:checked'), (input) -> $(input).val()
    window.location = "/compare?vals=#{vals.join(",")}"

  checkTheBox: (e) ->
    $(e.target).find('input').click()

  render: ->
    renderBoolean = (arg) -> if arg == true then "Yes" else "No"
    renderCheckbox = (arg) -> "<input type='checkbox' class='selection' value='#{arg}'/>"

    @$('table').dataTable
      'aaData': App.items,
      'bPaginate': false,
      'aoColumns': [
        {sTitle: 'Compare', mData: 'id', mRender: renderCheckbox, bSortable: false, sClass: 'compareBox' },
        {sTitle: 'Manufacturer', mData: 'manufacturer', bSortable:false},
        {sTitle: 'Hardware model', mData: 'hardware_model'},
        {sTitle: 'Link', mData: 'link', bSortable: false},
        {sTitle: 'Instructions', mData: 'instructions_link', bSortable: false},
        {sTitle: 'Description', mData: 'description', bSortable: false},
        {sTitle: 'Cost', mData: 'cost'},
        {sTitle: 'Algorithm', mData: 'algorithm'},
        {sTitle: 'Speed (GH/s)', mData: 'speed_gh_s'},
        {sTitle: 'Power (W)', mData: 'power_w'},
        {sTitle: 'Available?', mData: 'is_available', mRender: renderBoolean },
        {sTitle: 'Comments', mData: 'availability_comment', bSortable: false},
        {sTitle: 'Hardware type', mData: 'hardware_type' }
      ]
