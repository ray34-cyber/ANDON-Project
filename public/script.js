let konten = ["normal.html", "progress.html", "calling.html", "arrived.html", "completed.html"];
let index = 0;

		function loadContent() {
			
			let xhr = new XMLHttpRequest();

			//set callback untuk saat file selesai dimuat
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					document.getElementById("root").innerHTML = xhr.responseText;
				}
			};

			//muat file eksternal
			xhr.open("GET", konten[index], true);
			xhr.send();

			//update index
			index = (index + 1) % konten.length;
		}

		//setInterval untuk menjalankan fungsi loadContent setiap 5 detik
		setInterval(loadContent, 5000);