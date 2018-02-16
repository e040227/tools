var system = require('system');
var args = system.args;

var url = args[1];
if (!url.match(/^http/)) {
  url = "http://" + url;
}
console.log("Target :" + args[1]);
var file = './captures/' + url.replace(/([.]|https|http|[/]|[?]|[#]|[:])/g, "") + '.png';

var page = require('webpage').create();
// page.viewportSize = {
//   width: 1366,
//   height: 768
// };
// page.settings = {
//   userAgent: "Mozilla/5.0 (iPhone; CPU iPhone OS 10_2_1 like Mac OS X) AppleWebKit/602.4.6 (KHTML, like Gecko) Version/10.0 Mobile/14D27 Safari/602.1"
//   userAgent: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36"
// };
page.open(url, function() {
  // window.setTimeout(function() {
    page.render(file);
    console.log("Captured :" + file);
    phantom.exit();
  // }, 5000);
});

page.onError = function(msg, trace) {
  console.log("Failed :" + msg);
};
