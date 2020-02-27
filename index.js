var Metalsmith  = require('metalsmith');
 
Metalsmith(__dirname)
  .source('./source')
  .destination('./build')
  .build(function(err, files) {
    if (err) { throw err; }
  });
