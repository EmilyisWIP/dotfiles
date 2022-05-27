// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// This event is fired each time the user updates the text in the omnibox,
// as long as the extension's keyword mode is still active.
chrome.omnibox.onInputChanged.addListener(
  function(text, suggest) {
    suggest([
      {content: text + ' in Steam Play', description: "OS: Steam Play"},
      {content: text + ' in PC', description: "OS: PC"},
      {content: text + ' in Mac', description: "OS: Mac"},
      {content: text + ' in Linux', description: "OS: Linux"}
    ]);
  });

// This event is fired with the user accepts the input in the omnibox.
chrome.omnibox.onInputEntered.addListener(
  function(text) {
	var search = text;
	var system = '';
	
	var text1 = text.replace(" in Steam Play", "");
	if(text != text1) { system = 'steamplay'; search = text1; }

	var text2 = text.replace(" in PC", "");
	if(text != text2) { system = 'pc'; search = text2; }

	var text3 = text.replace(" in Mac", "");
	if(text != text3) { system = 'mac'; search = text3; }

	var text4 = text.replace(" in Linux", "");
	if(text != text4) { system = 'linux'; search = text4; }

	if(system == '') {
		navigate("http://store.steampowered.com/search/?term=" + search);
	} else {
		navigate("http://store.steampowered.com/search/?term=" + search + "&os=" + system);
	}
  });

chrome.omnibox.setDefaultSuggestion({"description" : "Search the store: %s"});

function navigate(url) {
    chrome.tabs.getSelected(null, function(tab) {
        chrome.tabs.update(tab.id, {url: url});
    });
}