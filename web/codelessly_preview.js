// Load html2canvas dynamically if not already loaded
console.log('[Codelessly] Codelessly preview script executing...');
function loadHtml2Canvas(callback) {
  console.log('[Codelessly] Checking if html2canvas is already loaded...');
  if (window.html2canvas) {
    callback();
    return;
  }

  console.log('[Codelessly] Loading html2canvas script...');
  const script = document.createElement("script");
  script.src = "https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js";
  script.onload = callback;
  document.head.appendChild(script);
}

function captureAndSendScreenshot() {
  console.log('[Codelessly] Request to capture screenshot received.');
  loadHtml2Canvas(function () {
    console.log('[Codelessly] Capturing Screenshot...');
    html2canvas(document.body, { useCORS: true }).then(function (canvas) {
      var imageBase64 = canvas.toDataURL("image/png");
      console.log('[Codelessly] Screenshot captured: ', imageBase64);
      window.parent.postMessage(JSON.stringify({ "type": 'screenshotResult', "imageBase64": imageBase64 }), '*');
    });
  });
}

// Listen for parent requesting a screenshot
console.log('Listening for messages from parent window...');
window.addEventListener("message", function (event) {
  console.log('[Codelessly] Message received from parent window:', event.data);
  if (event.data === "captureScreenshot") {
    captureAndSendScreenshot();
  }else if (event.data === "test") {
    console.log('[Codelessly] Test message received from parent window');
    window.parent.postMessage(JSON.stringify({ "type": 'testResult', "message": 'Test message received' }), '*');
  }
});
