$ ->
  $('#table').dataTable
    'aaData': App.items,
    'aoColumns': [
      {sTitle: 'Manufacturer', mData: 'manufacturer'},
      {sTitle: 'Hardware model', mData: 'hardware_model'},
      {sTitle: 'Link', mData: 'link'},
      {sTitle: 'Instructions', mData: 'instructions_link'},
      {sTitle: 'Description', mData: 'description'},
      {sTitle: 'Cost', mData: 'cost'},
      {sTitle: 'Algorithm', mData: 'algorithm'},
      {sTitle: 'Speed (GH/s)', mData: 'speed_gh_s'},
      {sTitle: 'Power (W)', mData: 'power_w'},
      {sTitle: 'Available?', mData: 'is_available'},
      {sTitle: 'Comments', mData: 'availability_comment'},
      {sTitle: 'Hardware type', mData: 'hardware_type'}
    ]
  
# responsiveHelper = undefined
#   breakpointDefinition =
#     tablet: 1024
#     phone: 480
# 
#   tableContainer = $('.datatable')
#   tableContainer.dataTable
# 
#     sPaginationType: "bootstrap"
#     # Setup for responsive datatables helper.
#     bAutoWidth: false
#     bStateSave: false
# 
#     fnPreDrawCallback: ->
#       responsiveHelper = new ResponsiveDatatablesHelper(tableContainer, breakpointDefinition) unless responsiveHelper
# 
#     fnRowCallback: (nRow, aData, iDisplayIndex, iDisplayIndexFull) ->
#       responsiveHelper.createExpandIcon nRow
# 
#     fnDrawCallback: (oSettings) ->
#       responsiveHelper.respond()
