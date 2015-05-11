# cda-cookbook-cookbook

TODO: Cookbook for curriculum services
## Supported Platforms

TODO: Ubuntu-1204

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['cda-cookbook']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### cda-cookbook::default

Include `cda-cookbook` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[cda-cookbook::default]"
  ]
}
```

## License and Authors

Author:: Sai Ongole (<songole@amplify.com>)
