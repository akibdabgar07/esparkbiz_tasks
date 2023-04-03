const fs = require('fs');

const content = 'akib';

fs.writeFile('../demo.html', content, err => {
  if (err) {
    console.error(err);
  }
  // file written successfully
});
