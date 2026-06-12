const fs = require('fs');
const path = require('path');
const os = require('os');

const flagFile = path.join(os.homedir(), '.cavepowers-active');

// Remove flag at session start — user must opt-in each session via /cavepowers
if (fs.existsSync(flagFile)) {
  fs.unlinkSync(flagFile);
}
