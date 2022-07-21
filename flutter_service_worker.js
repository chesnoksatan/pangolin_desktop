'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"index.html": "e1392b28e6c6dad1860937773cdf1477",
"/": "e1392b28e6c6dad1860937773cdf1477",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "a784a51a4ce9b22a178fc1d4516294e7",
"manifest.json": "846faeef084c96fba071c878f4500620",
"version.json": "82cce2c8fcc81ccb48d459444670376c",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "19ef15ec4cf1762faa56096e0803f57e",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "8b796818f0e035735378238fc07b5845",
"assets/FontManifest.json": "9c9cd2a28becf28e64eac0bb6f63f466",
"assets/NOTICES": "2bf0e15ab00b4385beb50174ac75600c",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/shaders/ink_sparkle.frag": "bfd223fd128d659ff8813253d56be66f",
"assets/assets/textures/NoiseAsset_256X256_PNG.png": "ba2c4a83e2fe3498a6dc7e3a74d1b6d6",
"assets/assets/textures/NoiseAsset.txt": "0957c5fa9ab4897fb4d9005b3343d2cb",
"assets/assets/images/wallpapers/beach.jpg": "f96f64f4360c2baf586f27d3e34dea15",
"assets/assets/images/wallpapers/modern_dark.png": "1e6084f69f8c14faad554e72e041fc63",
"assets/assets/images/wallpapers/Mountains_wallpaper.png": "6e7975b97f96ede66ace575fad741cc6",
"assets/assets/images/wallpapers/dahliaOS_white_wallpaper.png": "cb8d99e02029bd75eff508d3fdd56c37",
"assets/assets/images/wallpapers/Bubbles_wallpaper.png": "46b9730c0c07198404a23bc13c3f385e",
"assets/assets/images/wallpapers/Gradient_logo_wallpaper.png": "cc93d4e28412dbdab2608ff625a4492e",
"assets/assets/images/wallpapers/Three_Bubbles.png": "bc437cfc4c4d2cb8e036b9aaab065198",
"assets/assets/images/wallpapers/dahliaOS_white_logo_pattern_wallpaper.png": "6493c5cf40d2b4f4edc55202ee94b5a7",
"assets/assets/images/wallpapers/wood.jpg": "5a9effc0334bcd012f410b07be09332d",
"assets/assets/images/wallpapers/mountain.jpg": "7fca0b04f5582bd15144f8ede952aa17",
"assets/assets/images/wallpapers/forest.jpg": "bb9971fadf446779b9f29204180bcf72",
"assets/assets/images/wallpapers/modern.png": "b0a1429dcefd0dc6ef8bd6c1adc792e0",
"assets/assets/images/logos/dahliaOS-modern.png": "6f9d85824de9962a29397c997f25c8b7",
"assets/assets/images/logos/dahliaOS-logo.png": "02f1c9f097b0a80bf77544d0a382d990",
"assets/assets/images/logos/pangolin.png": "b08585afa8174ba514b970f7098f84d6",
"assets/assets/images/logos/dahliaOS-white.png": "583d5e84483a0802629d6af94794ab6b",
"assets/assets/images/other/Desktop.png": "c7a2ea58837eed2fcaa17acde26e5941",
"assets/assets/images/other/developer-white.png": "dc9b45cc4e61e953d8e4cff499649336",
"assets/assets/images/other/null.png": "74c2d1eb37ec4a0b1a5b45edc7e67082",
"assets/assets/images/other/developer-dark.png": "c2731d30d677ed16a344f3dd0de701f2",
"assets/assets/images/other/about-mask.png": "8fc16147f096c1c595e1bfebaa6c1eba",
"assets/assets/json/visualData.json": "93a968c14d5c5a38c91d65683e4faf61",
"assets/assets/icons/clock.png": "81ca934d721ad96518209fd99b627908",
"assets/assets/icons/root.png": "edb147b20b24112a578f11f4fbdd24f3",
"assets/assets/icons/graft.png": "044c55245afc351fee36122f676369de",
"assets/assets/icons/value_editor.png": "f0034b5799a20f9c355a71f0239aa0b6",
"assets/assets/icons/calculator.png": "b5d2f4da128fd5a0eed0ed52a5ac9147",
"assets/assets/icons/task.png": "548e313c465c5caf31cad9d574119016",
"assets/assets/icons/logs.png": "e312999c04f678ff5941d66718ef6cbf",
"assets/assets/icons/null.png": "960cdf38b0daacbf2d3316355c3f78f1",
"assets/assets/icons/store.png": "050b53c80ac030c562e41aafe98a4b21",
"assets/assets/icons/files.png": "6c5019286c21611abebc9e9b1086be03",
"assets/assets/icons/notes.png": "5644e3fe7f2f7601a6afdba1f1e17b73",
"assets/assets/icons/welcome-info.png": "cf9e894cfddbcd39a5efaf9f29186ba9",
"assets/assets/icons/terminal.png": "524019d8d97ea6c4ccd3db664375e4da",
"assets/assets/icons/software.png": "960cdf38b0daacbf2d3316355c3f78f1",
"assets/assets/icons/settings.png": "d5be1c564f8564d8c0a6f86057b01f2a",
"assets/assets/icons/photos.png": "f191683d9cd0b0fb26385cf9fc80f108",
"assets/assets/icons/web.png": "63f2cc8d972d4b5d53826fb8d346a7fa",
"assets/assets/fonts/firacode/FiraCode-Bold.ttf": "01f3d4803613ee9556769509a85dba50",
"assets/assets/fonts/firacode/FiraCode-Medium.ttf": "38989befe49ab72063b68518a4531cc8",
"assets/assets/fonts/firacode/FiraCode-Retina.ttf": "2f7bfe28b1954979587e0a79dcae2bef",
"assets/assets/fonts/firacode/FiraCode-Light.ttf": "93f948964a49886cbcc390bd52ecbf36",
"assets/assets/fonts/lato/Lato-Italic.ttf": "7582e823ef0d702969ea0cce9afb326d",
"assets/assets/fonts/lato/Lato-Bold.ttf": "85d339d916479f729938d2911b85bf1f",
"assets/assets/fonts/lato/Lato-Regular.ttf": "2d36b1a925432bae7f3c53a340868c6e",
"assets/assets/fonts/lato/Lato-BoldItalic.ttf": "f98d18040a766b7bc4884b8fcc154550",
"assets/assets/fonts/lato/Lato-Black.ttf": "e631d2735799aa943d93d301abf423d2",
"assets/assets/fonts/lato/Lato-Light.ttf": "2fe27d9d10cdfccb1baef28a45d5ba90",
"assets/assets/fonts/lato/Lato-LightItalic.ttf": "4d80ac573c53d192dafd99fdd6aa01e9",
"assets/assets/fonts/lato/Lato-BlackItalic.ttf": "2e26a9163cb4974dcba1bea5107d4492",
"assets/assets/fonts/lato/Lato-Thin.ttf": "9a77fbaa85fa42b73e3b96399daf49c5",
"assets/assets/fonts/dm-sans/DMSans-Bold.ttf": "071853031a2175ada019db9e6fd1585c",
"assets/assets/fonts/dm-sans/DMSans-Italic.ttf": "b89267290c0df2e03ae1b60bd14109c8",
"assets/assets/fonts/dm-sans/DMSans-BoldItalic.ttf": "a300c77208334f8ad8b2fc95ee2040ce",
"assets/assets/fonts/dm-sans/DMSans-Medium.ttf": "fbbc5a515be4021a9a36f048e25ad396",
"assets/assets/fonts/dm-sans/DMSans-Regular.ttf": "3e7f038b85daa739336e4a3476c687f2",
"assets/assets/fonts/dm-sans/DMSans-MediumItalic.ttf": "a2a143d61d86a67e5e77cf43fd0a4e59",
"assets/assets/fonts/inter/Inter-Regular.ttf": "515cae74eee4925d56e6ac70c25fc0f6",
"assets/assets/fonts/CustomIcons.ttf": "cc73b5bfddd6e04d22b8bdc9fae42b87",
"assets/packages/media/assets/examples/logo.png": "c7040497f3c2f593a3fc7417ca6e782c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/welcome/assets/logos/social_media/telegram.png": "09955cd35232a37d16e2348e8fcbe04d",
"assets/packages/welcome/assets/logos/social_media/discord.png": "608420e1de4a25f75cb8f02dc8c986a2",
"assets/packages/welcome/assets/logos/social_media/instagram.png": "66842808276f5686b957b281493cd8fb",
"assets/packages/welcome/assets/logos/social_media/github.png": "8b4ebc5726c1079567abfd5fcf14c6a7",
"assets/packages/welcome/assets/logos/social_media/twitter.png": "8030a832fab85b915efe587af80c82ca",
"assets/packages/welcome/assets/logos/social_media/facebook.png": "5d2cbe5dff523e49e72215a926e6dc33",
"assets/packages/welcome/assets/logos/social_media/reddit.png": "2849e012320782fd4e5122833dc6fe85",
"assets/packages/welcome/assets/logos/dahliaOS/logotype-light.png": "12baff6e7d2c7effbcbf2883487d281f",
"assets/packages/welcome/assets/logos/dahliaOS/logomark.png": "ad919024cdb05ce5421ef009b508bdec",
"assets/packages/task_manager/assets/images/icons/PNG/social.png": "e0f4fcf882cc23ed646290fbfc859986",
"assets/packages/task_manager/assets/images/icons/PNG/messages.png": "004c87d98d7fb5ed52f8d79898d88ae6",
"assets/packages/task_manager/assets/images/icons/PNG/clock.png": "81ca934d721ad96518209fd99b627908",
"assets/packages/task_manager/assets/images/icons/PNG/help.png": "149ba5f0862946faea4d5744619ba607",
"assets/packages/task_manager/assets/images/icons/PNG/root.png": "edb147b20b24112a578f11f4fbdd24f3",
"assets/packages/task_manager/assets/images/icons/PNG/graft.png": "11cbd7517f73ff7e1df235eb17279db8",
"assets/packages/task_manager/assets/images/icons/PNG/telegram.png": "36218d3af50dbc1d0240879a5f966fc4",
"assets/packages/task_manager/assets/images/icons/PNG/discord.png": "103e593c79206b9cd16fef562cc7ac32",
"assets/packages/task_manager/assets/images/icons/PNG/calculator.png": "b5d2f4da128fd5a0eed0ed52a5ac9147",
"assets/packages/task_manager/assets/images/icons/PNG/task.png": "548e313c465c5caf31cad9d574119016",
"assets/packages/task_manager/assets/images/icons/PNG/disks.png": "b8c23e9bf62238d900b958540be4f236",
"assets/packages/task_manager/assets/images/icons/PNG/grey-drag.png": "af96264233287efd9efbf4ee2954fc67",
"assets/packages/task_manager/assets/images/icons/PNG/wallpaper.png": "5d490931a734ec44fd88bdc9b947d9ab",
"assets/packages/task_manager/assets/images/icons/PNG/logs.png": "e312999c04f678ff5941d66718ef6cbf",
"assets/packages/task_manager/assets/images/icons/PNG/instagram.png": "60ef178e1c7539c232abfad28d2bdaeb",
"assets/packages/task_manager/assets/images/icons/PNG/github.png": "bd64ef0f18cf6b627dc8390a96aed2bd",
"assets/packages/task_manager/assets/images/icons/PNG/software-shared.png": "868fe8e3d80b189e934220391a09dfaa",
"assets/packages/task_manager/assets/images/icons/PNG/files.png": "6c5019286c21611abebc9e9b1086be03",
"assets/packages/task_manager/assets/images/icons/PNG/twitter.png": "4607476796cc93ca75cfeccf2661fd1a",
"assets/packages/task_manager/assets/images/icons/PNG/ubuntu.png": "dc5596b1ded46cc5b61f74b860e98964",
"assets/packages/task_manager/assets/images/icons/PNG/notes.png": "5644e3fe7f2f7601a6afdba1f1e17b73",
"assets/packages/task_manager/assets/images/icons/PNG/welcome-info.png": "cf9e894cfddbcd39a5efaf9f29186ba9",
"assets/packages/task_manager/assets/images/icons/PNG/terminal.png": "524019d8d97ea6c4ccd3db664375e4da",
"assets/packages/task_manager/assets/images/icons/PNG/software.png": "960cdf38b0daacbf2d3316355c3f78f1",
"assets/packages/task_manager/assets/images/icons/PNG/welcome.png": "3ba49cfcd43616510002a9431b90bdb5",
"assets/packages/task_manager/assets/images/icons/PNG/phone.png": "de209128b7b3241f65b8b5c117c10190",
"assets/packages/task_manager/assets/images/icons/PNG/menu.png": "e824461dd4c3e943b4b1da1817290f73",
"assets/packages/task_manager/assets/images/icons/PNG/theme.png": "1b065d813d384c82002793b1b92b0b85",
"assets/packages/task_manager/assets/images/icons/PNG/credits.png": "8eb3c439b19df88fb7643c395bc983b2",
"assets/packages/task_manager/assets/images/icons/PNG/macos.png": "2799296e4d4831c96c2b1b205d0ae796",
"assets/packages/task_manager/assets/images/icons/PNG/settings.png": "d5be1c564f8564d8c0a6f86057b01f2a",
"assets/packages/task_manager/assets/images/icons/PNG/photos.png": "9b2ee870807ea18761ff4bf308897394",
"assets/packages/task_manager/assets/images/icons/PNG/web.png": "a26b78a08fe2da40a81e3c837a60cede",
"assets/packages/task_manager/assets/images/icons/PNG/fuchsia.png": "687e3a9bac810885c97028229adf3ac2",
"assets/packages/task_manager/assets/images/icons/PNG/developer.png": "14f413a0c0ba35af4fe5bcc04ebf2820",
"assets/packages/task_manager/assets/images/icons/PNG/debian.png": "527552dd24e4cd27bfb4be63b2c454c4",
"assets/packages/task_manager/assets/images/icons/PNG/facebook.png": "d54e509f31d051140eca9e8d7b34ec40",
"assets/packages/task_manager/assets/images/icons/PNG/music.png": "91e7695e656f380f48df79ef8616b205",
"assets/packages/task_manager/assets/images/icons/PNG/android.png": "27a703eacba2bbfed57346b32b7af9b1",
"assets/packages/task_manager/assets/images/icons/PNG/reddit.png": "9b1ba56edec14b468ecf4b3913a7794d",
"assets/packages/task_manager/assets/images/icons/PNG/Gmail-icon.png": "dfcbd586c56f73e343b25b3af12491c1",
"assets/packages/task_manager/assets/images/icons/PNG/note_mobile.png": "5bc75d1575688657c59eeab91631d473",
"assets/packages/task_manager/assets/images/icons/PNG/authenticator.png": "35096977d24eb89d0c661b0956567642",
"assets/packages/files/lib/assets/icons/file.png": "2b4409f3e88456ccc7a4551dceb17b14",
"assets/packages/files/lib/assets/icons/folder.png": "bf696664ea09b8cd4e2eed65993be06e",
"assets/packages/fluentui_system_icons/fonts/FluentSystemIcons-Regular.ttf": "6dd0a6b9169e80635f1247c3e8186f89",
"assets/packages/fluentui_system_icons/fonts/FluentSystemIcons-Filled.ttf": "b2e9418f638c0a90c896bc63649d3ed0",
"assets/packages/unicons/icons/UniconsSolid.ttf": "630f8bd494e53400fa9cda3a4eb8ec10",
"assets/packages/unicons/icons/UniconsThinline.ttf": "fe40541d1f998ea2122a68d072f8e254",
"assets/packages/unicons/icons/UniconsLine.ttf": "b6a7ecc47d2853caf153cc1aa5cf93ec",
"assets/AssetManifest.json": "54d6373145e559eea16d05d3da9a17f0"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
