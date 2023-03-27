  let contents = [
    { url: "normal.php", delay: 5000 },
    { url: "progress.php", delay: 15000 },
    { url: "calling.php", delay: 5000 },
    { url: "arrived.php", delay: 5000 },
    { url: "completed.php", delay: 5000 }
  ];

  let currentIndex = 0;
  let timerId;

  function loadContent() {
    let xhr = new XMLHttpRequest();

    let currentContent = contents[currentIndex];
    xhr.open("GET", currentContent.url, true);

    xhr.onreadystatechange = function () {
      if (xhr.readyState == 4 && xhr.status == 200) {
        document.getElementById("root").innerHTML = xhr.responseText;

        let currentContent = contents[currentIndex];
        let delay = currentContent.delay;

        currentIndex = (currentIndex + 1) % contents.length;

        if (currentContent.url === "progress.php") {
          let contentHeight = document.documentElement.scrollHeight;
          if (contentHeight > window.innerHeight) {
            pageScrollToBottom();
          }
          loadData();
          startTimer();
        } else {
          stopTimer();
        }

        if (currentContent.url === "progress.php") {
          document.body.style.backgroundColor = "black";
          document.body.style.paddingTop = "0.5vw";
          document.body.style.paddingBottom = "0.1vw";
          document.body.style.paddingLeft = "0.1vw";
          document.body.style.paddingRight = "0.1vw";
          
        } else {
          document.body.style.backgroundColor = "";
          document.body.style.padding = "";
        }

        setTimeout(loadContent, delay);
      }
    };

    xhr.send();

    function pageScrollToBottom() {
      if (window.scrollY >= document.documentElement.scrollHeight - window.innerHeight) {
        pageScrollToTop();
        return;
      }
      window.scrollBy(0, 1);
      timerId = setTimeout(pageScrollToBottom, 1);
    }

    function pageScrollToTop() {
      if (window.scrollY <= 0) {
        pageScrollToBottom();
        return;
      }
      window.scrollBy(0, -1);
      timerId = setTimeout(pageScrollToTop, 1);
    }

    function startTimer() {
      updateTime();
      setInterval(updateTime, 1000);
    }

    function stopTimer() {
      clearTimeout(timerId);
    }

    function updateTime() {
      const now = new Date();
      const hours = now.getHours().toString().padStart(2, "0");
      const minutes = now.getMinutes().toString().padStart(2, "0");
      const seconds = now.getSeconds().toString().padStart(2, "0");
      const timeString = hours + ":" + minutes + ":" + seconds;

      const currentTimeEl = document.getElementById('current-time');
      if (currentTimeEl) {
        currentTimeEl.textContent = timeString;
      }
    }
  }

  setTimeout(loadContent, 0);

  function loadData() {
    let xhr = new XMLHttpRequest();

    xhr.open("GET", "data.php", true);
    xhr.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        const results = JSON.parse(xhr.responseText);
        results.forEach(result => {
          setInterval(() => {
            const datetime = result.datetime;
            const dt = new Date(datetime).getTime() / 1000;
            const dn = Date.now() / 1000
            const selisih = Math.floor(dn - dt);
            const menit = Math.floor(selisih / 60);
            const detik = selisih % 60;
            const time = document.getElementById(result.id);
            if (time) {
              time.textContent = `${String(menit).padStart(2, '0')}:${String(detik).padStart(2, '0')}`;
            }
          }, 1000);
        });
        
        results.forEach(result => {
          const time = document.getElementById(result.id);
          time.parentElement.classList.add((time.previousElementSibling.textContent === 'Calling') ? 'animate-animateCalling' : "bg-warning")
        })
      }
    }
    xhr.send();
  }