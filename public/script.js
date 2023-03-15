let contents = [  { url: "normal.php", delay: 5000 },  { url: "progress.php", delay: 15000 },  { url: "calling.php", delay: 5000 },  { url: "arrived.php", delay: 5000 },  { url: "completed.php", delay: 5000 }];

let currentIndex = 0;
let timerId;

function loadContent() {
  let xhr = new XMLHttpRequest();

  let currentContent = contents[currentIndex];
  xhr.open("GET", currentContent.url, true);

  xhr.onreadystatechange = function() {
    if (xhr.readyState == 4 && xhr.status == 200) {
      document.getElementById("root").innerHTML = xhr.responseText;

      let currentContent = contents[currentIndex];
      let delay = currentContent.delay;

      currentIndex = (currentIndex + 1) % contents.length;

      if (currentContent.url === "progress.php") {
        pageScrollToBottom();
        startTimer();
      } else {
        stopTimer();
      }

      setTimeout(loadContent, delay);
    }
  } 

  xhr.send();

  function pageScrollToBottom() {
    if (window.scrollY >= document.documentElement.scrollHeight - window.innerHeight) {
      pageScrollToTop();
      return;
    }  
    window.scrollBy(0,1);
    timerId = setTimeout(pageScrollToBottom,1);
  }

  function pageScrollToTop() {
    if (window.scrollY <= 0) {
      pageScrollToBottom();
      return;
    }
    window.scrollBy(0,-1);
    timerId = setTimeout(pageScrollToTop,1);
  }

  function startTimer() {
    updateTime();
    setInterval(updateTime, 1000);
  }

  function stopTimer() {
    clearInterval(timerId);
  }

  function updateTime() {
    const now = new Date();
    const hours = now.getHours().toString().padStart(2, '0');
    const minutes = now.getMinutes().toString().padStart(2, '0');
    const seconds = now.getSeconds().toString().padStart(2, '0');
    const timeString = hours + ':' + minutes + ':' + seconds;
          
    document.getElementById('current-time').textContent = timeString;
  }
}

setTimeout(loadContent, 0);
