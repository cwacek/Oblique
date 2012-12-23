Oblique
=======

A set of components I've put together for working with
AngularJS.

Directives
----------

### sortable

Creates a element indended to be a header for a ajaxy sortable
list of some kind. 

When the element is clicked on, it will call a callback 
function with a number of arguments and display a loading 
indicator.

**Use:** attribute-only

**Arguments:** The name of an in-scope callback function to be
called on-click. The callback function should retrieve any data
to be sorted and populate the DOM accordingly.

    function (sort, invert, on_success) {...}

`sort` is the name of the field to be sorted.
`invert` is whether or not the sorting should be inverted.
`on_success` is a callback that should be called when the data
request and DOM manipulation is complete. 
          
**Additional Required Attributes:** `sortable` expects there to
be a number of additional attributes on the element. 

- `sortBy`
    - The name of this field for sorting purposes. Maps to `sort`
      in the callback
- `invert`
    - `true` or `false`. Whether the 'initial' sort state should
      be inverted or not`
- `icon`
    - The url of the icon to be displayed when loading.


**Example:**

    <table cellspacing="0">
        <thead>
            <tr>
                <th sortable="sort" sortBy='h2' invert='false'
                    icon='static/loader.gif'>Heading2</th>
                <th sortable="sort" sortBy='h2' invert='true' 
                    icon='static/loader.gif'>Heading2</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Text</td>
                <td>text2</td>
            </tr>
        </tbody>
    </table>
        

