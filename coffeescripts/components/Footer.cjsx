###
# Footer
#
# @cjsx React.DOM
###

React = require 'react'

Footer = React.createClass {
  displayName: 'Footer'
  render: ->
    (
      <footer id="footer" className="container">
        <div className="row">
          <div className="col-md-12">
            &copy; 2015 Students’ Information Technology Conference
          </div>
        </div>
      </footer>
    )
}

module.exports = Footer
