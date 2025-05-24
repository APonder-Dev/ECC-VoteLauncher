const voteSites = [
  { name: "MinecraftPocket-Servers.com", url: "https://minecraftpocket-servers.com/server/126606/vote/" },
  { name: "Minecraft Menu", url: "https://minecraft.menu/server-ecocitycraft-economy.2577/vote" },
  { name: "MinecraftBestServers.com", url: "https://minecraftbestservers.com/server-ecocitycraft-economy.1629/vote" },
  { name: "CurseForge", url: "https://www.curseforge.com/servers/server/ecocitycraft-economy/vote" },
  { name: "Minecraft Buzz", url: "https://minecraft.buzz/vote/7298" },
  { name: "Best-Minecraft-Servers.co", url: "https://best-minecraft-servers.co/server-ecocitycraft-economy.1309/vote" },
  { name: "Servers-Minecraft.net", url: "https://servers-minecraft.net/server-ecocitycraft-economy.24122/vote" },
  { name: "MinecraftList.org", url: "https://minecraftlist.org/vote/11929" },
  { name: "Minecraft-Server.net", url: "https://minecraft-server.net/vote/EcoCityCraft/" },
  { name: "TopMinecraftServers.org", url: "https://topminecraftservers.org/vote/3276" },
  { name: "Minecraft-MP.com", url: "https://minecraft-mp.com/server/7096/vote/" },
  { name: "TopG.org", url: "https://topg.org/minecraft-servers/server-380058" },
  { name: "Minecraft-Server-List.com", url: "https://minecraft-server-list.com/server/7038/vote/" },
  { name: "MinecraftServers.org", url: "https://minecraftservers.org/vote/6021" }
];

let votesCompleted = 0;

function updateProgress() {
  const total = voteSites.length;
  const progress = (votesCompleted / total) * 100;
  document.getElementById('voteCountText').innerText = `${votesCompleted}/${total} votes completed`;
  document.getElementById('progressBar').style.width = `${progress}%`;
}

function saveUsername(event) {
  event.preventDefault();
  const username = document.getElementById('username').value.trim();
  if (!username) return;

  localStorage.setItem('ecc_username', username);
  buildVoteCards(username);
}

function buildVoteCards(username) {
  const container = document.getElementById('voteContainer');
  container.innerHTML = '';
  votesCompleted = 0;

  voteSites.forEach((site, index) => {
    const card = document.createElement('div');
    card.className = 'vote-card';
    card.innerHTML = `
      <h5>${site.name}</h5>
      <p>Vote to earn 1 Eco VotePoint</p>
      <a id="vote-btn-${index}" class="btn btn-success vote-btn" href="${site.url}?username=${encodeURIComponent(username)}" target="_blank">Vote Now</a>
    `;
    container.appendChild(card);

    document.getElementById(`vote-btn-${index}`).addEventListener('click', () => {
      if (!card.classList.contains('voted')) {
        card.classList.add('voted');
        votesCompleted++;
        updateProgress();
        setTimeout(() => {
          const btn = document.getElementById(`vote-btn-${index}`);
          btn.classList.replace('btn-success', 'btn-secondary');
          btn.innerText = 'Voted';
          btn.disabled = true;
        }, 500);
      }
    });
  });

  updateProgress();
}

window.onload = () => {
  const storedUsername = localStorage.getItem('ecc_username');
  if (storedUsername) {
    document.getElementById('username').value = storedUsername;
    buildVoteCards(storedUsername);
  }
};
