// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// This event is fired with the user accepts the input in the omnibox.
// chrome.omnibox.onInputChanged.addListener(
//   function(text, suggest) {
//     console.log('inputChanged: ' + text);
//     suggest([
//       {content: text + " one", description: "the first one"},
//       {content: text + " number two", description: "the second entry"}
//     ]);
//   });
chrome.omnibox.onInputChanged.addListener(
  function(text, suggest) {
    console.log('inputChanged: ' + text);
    chrome.tabs.update({url: 'https://duckduckgo.com/?q=%21ducky+' + text});
  });
