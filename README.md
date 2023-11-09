# Redmine PivotTable

## Emily_modified 231109 For 5.0.x usage

1. create a folder `lib` under `lib`
2. move files in `lib` to `lib/lib`
3. replace `init.rb` 2nd and 3rd row to follow
```
require File.expand_path(File.dirname(__FILE__) + '/lib/redmine_pivot_table/query_column_patch.rb')
require File.expand_path(File.dirname(__FILE__) + '/lib/redmine_pivot_table/projects_helper_patch.rb')
```
4. correcting translation of `projects_helper_patch.rb` 
```
:label_overall_spent_time -> :label_total_spent_time
:label_overall_activity -> `:label_activity
```

## About

This Redmine plugin allows you to generate pivot table for issue analysis.

It uses [PivotTable.js](http://nicolas.kruchten.com/pivottable/examples/) as a user interface.

With this plugin you can:
* Analyze issues and activities by pivot tables and graphs
* Drag and drop attributes to dynamically change rows/columns configuration
* Drilldown to issues by clicking on table cells
* Save your configuration as queries

![Image](https://raw.github.com/wiki/deecay/redmine_pivot_table/images/table_simple.jpg)

Requieres IE8 and above.
PivotTable.js version included: Nov 5, 2018


## Installation

0. Follow the standard Redmine plugin installation steps at: http://www.redmine.org/wiki/redmine/Plugins
``git clone https://github.com/deecay/redmine_pivot_table.git``
1. Enable Pivot module for your project.

2. Allow permission to view pivottables from Administration -> Roles and permissions

3. Go to Pivot tab of your project.

No migration required.


## How to use

Drag and drop attributes to dynamically create your own pivot table.

For more information on usage, visit [PivotTable.js Home page](http://nicolas.kruchten.com/pivottable/examples/).

You can save the pivot table configuration when you save a query from the Pivot page.

## Other screenshots

![Image](https://raw.github.com/wiki/deecay/redmine_pivot_table/images/heatmap.jpg)

![Image](https://raw.github.com/wiki/deecay/redmine_pivot_table/images/line.jpg)

![Image](https://raw.github.com/wiki/deecay/redmine_pivot_table/images/bar.jpg)

![Image](https://raw.github.com/wiki/deecay/redmine_pivot_table/images/scatter.jpg)
First attribute of both vertical and horizontal attribute must be a numeric attribute. Append some other attributes to horizontal, to see colorized scatter plot.

![Image](https://raw.github.com/wiki/deecay/redmine_pivot_table/images/activity.jpg)

## How to contribute

See en.yml for localizable text

For aggregator and renderer names, consult pivot.pt.js and send pull request to [nicolaskruchten](https://github.com/nicolaskruchten/pivottable)

## Todo

* Add proper "save/edit/delete pivot query".


## Keywords

Pivot Table, Graphs, Analysis, Redmine, Plugin


## Support

Support will only be given to the following versions:

* Redmine version                2.6.0.stable - 4.0.2.stable


## License

This plugin is licensed under the MIT license.



