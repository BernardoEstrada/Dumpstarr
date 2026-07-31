# Dumpstarr Database for Profilarr

## **For a media setup that isn't a dumpster fire :D**

[![Discord](https://img.shields.io/discord/1408095311661891796?label=Discord&logo=discord&style=for-the-badge)](https://discord.gg/TbYW2Q4hGv)

---

### **Simple, Set-and-Forget Custom Formats**

The Dumpstarr database for Profilarr is a curated collection of **custom formats** for **Sonarr** and **Radarr**, designed to simplify sourcing high-quality, decently sized media.

**Our Focus:**
* **Simplicity:** Choose your resolution.
* **Quality Sourcing:** We use a set of formats/regex based on **Dictionarry** and **TRaSH** to better score and source your media.

---

### **Profile Selection Guide**

> [!TIP]
> We recommend starting with the `Movies 1080p/2160p` and `TV 1080p/2160p` profiles.

| Profile | Media Type | Use Case |
| :--- | :--- | :--- |
| `LQ 1080p` | Low-Priority Media | Maximum storage savings |
| `Anime 1080p` | Anime | Anime TV and Movies |
| `TV 1080p` | TV Shows |1080p |
| `TV 2160p` | 4K TV Shows | 4K with HDR and Dolby Vision |
| `Movies 1080p` | 1080p Movies | Streaming Optimized 1080p |
| `Movies 2160p` | 4K Movies | Streaming Optimized 4K with HDR and Dolby Vision |
| `Movies 1080p HQ` | HQ Movies | 1080p, higher video bitrates and HQ audio formats |
| `Movies 2160p HQ` | HQ 4K Movies | 4K, higher video bitrates and HQ audio formats |

---

### **Underlying Structure and Tiers**

Our profiles are loosely based on the structure of the **SQP-1 Alternative (Radarr)** and **WEB-2160p/1080p Alternative (Sonarr)** profiles from TRaSH.

* **Release Group Tiers:** We have developed a hybrid setup of the **TRaSH Guides** tiers with our own additions for more functionality and scoring than default. 

---

### **Fixes & Features**

We include several specific fixes and features for common media-sourcing annoyances:
* Bad Multis: Avoids releases where bad release names causes incorrect parsing or loops.
---
| Show | Detail | 
| :--- | :--- | 
|Adventure Time|Correctly sources releases that follow TheTVDB ordering for Season 8.|
|Arthur|Avoids releases where bad release names cause incorrect parsing or loops.|
|The Big Bang Theory|Avoids 25fps PAL versions.|
|Courage the Cowardly Dog|Avoids releases where bad release names cause incorrect parsing or loops.|
|Family Guy|Avoids 25fps PAL versions.|
|The Four Seasons|Avoids releases where bad release names cause incorrect parsing or loops.|
|House|Correctly sources releases that follow TheTVDB ordering for Season 6.|
|The Office (US)|Prefer "Superfans" versions and negate releases from groups that have issues with TheTVDB ordering.|
|Parks and Recreation|Avoids releases with incorrect source IDs which cause loops.|
|Phineas and Ferb|Negate releases from groups that have issues with TheTVDB ordering.|
|Scrubs|Avoids 25fps PAL versions.|
|Spider-Noir|Prefer "Authentic B&W" versions.|
|Whose Line Is It Anyway (US|Targets correct releases for early seasons of the US version due to inconsistent naming.|
