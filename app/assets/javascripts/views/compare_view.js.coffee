App.CompareView = Backbone.View.extend
  el: "#data"
  template:
    """
    <table class='compare_view styled'>
      <tr>
        {{#items}}
        <th>
          <h2>{{manufacturer}} {{hardware_model}}</h2>
        </th>
        {{/items}}
      </tr>

      <tr>
        {{#items}}
        <td>
          <dt>Model</dt>
          <dd>{{hardware_model}}</dd>
        </td>
        {{/items}}
      </tr>

      <tr>
        {{#items}}
        <td>
          <dt>Manufacturer</dt>
          <dd>{{manufacturer}}</dd>
        </td>
        {{/items}}
      </tr>

      <tr>
        {{#items}}
        <td>
          <dt>Manufacturer</dt>
          <dd>{{manufacturer}}</dd>
        </td>
        {{/items}}
      </tr>

      <tr>
        {{#items}}
        <td>
          <dt>Manufacturer</dt>
          <dd>{{manufacturer}}</dd>
        </td>
        {{/items}}
      </tr>
      <tr>
        {{#items}}
        <td>
          <dt>Manufacturer</dt>
          <dd>{{manufacturer}}</dd>
        </td>
        {{/items}}
      </tr>
      <tr>
        {{#items}}
        <td>
          <dt>Manufacturer</dt>
          <dd>{{manufacturer}}</dd>
        </td>
        {{/items}}
      </tr>
      <tr>
        {{#items}}
        <td>
          <dt>Manufacturer</dt>
          <dd>{{manufacturer}}</dd>
        </td>
        {{/items}}
      </tr>
      <tr>
        {{#items}}
        <td>
          <dt>Manufacturer</dt>
          <dd>{{manufacturer}}</dd>
        </td>
        {{/items}}
      </tr>
      <tr>
        {{#items}}
        <td>
          <dt>Manufacturer</dt>
          <dd>{{manufacturer}}</dd>
        </td>
        {{/items}}
      </tr>
    </table>
    """

  el: '#data'
  render: ->
    @$el.html Mustache.render @template, {items: App.items}
    table = @$('table').dataTable()
    new $.fn.dataTable.FixedHeader( table )



