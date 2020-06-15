---
title: " Saliency map"
date: 2019-12-21
tags: [machine learning, data science]
header:
  image: "/images/homeft.jpg"
excerpt: "Machine Learning ,Decision Trees"
---
# Decision trees

## Concept


Python code block:

```python
    import numpy

```
<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />

<title>intro</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>



<style type="text/css">
    /*!
*
* Twitter Bootstrap
*
*/
/*!
 * Bootstrap v3.3.7 (http://getbootstrap.com)
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */
html {
  font-family: sans-serif;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
}
body {
  margin: 0;
}
article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
main,
menu,
nav,
section,
summary {
  display: block;
}
audio,
canvas,
progress,
video {
  display: inline-block;
  vertical-align: baseline;
}
audio:not([controls]) {
  display: none;
  height: 0;
}
[hidden],
template {
  display: none;
}
a {
  background-color: transparent;
}
a:active,
a:hover {
  outline: 0;
}
abbr[title] {
  border-bottom: 1px dotted;
}
b,
strong {
  font-weight: bold;
}
dfn {
  font-style: italic;
}
h1 {
  font-size: 2em;
  margin: 0.67em 0;
}
mark {
  background: #ff0;
  color: #000;
}
small {
  font-size: 80%;
}
sub,
sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
}
sup {
  top: -0.5em;
}
sub {
  bottom: -0.25em;
}
img {
  border: 0;
}
svg:not(:root) {
  overflow: hidden;
}
figure {
  margin: 1em 40px;
}
hr {
  box-sizing: content-box;
  height: 0;
}
pre {
  overflow: auto;
}
code,
kbd,
pre,
samp {
  font-family: monospace, monospace;
  font-size: 1em;
}
button,
input,
optgroup,
select,
textarea {
  color: inherit;
  font: inherit;
  margin: 0;
}
button {
  overflow: visible;
}
button,
select {
  text-transform: none;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
button[disabled],
html input[disabled] {
  cursor: default;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  border: 0;
  padding: 0;
}
input {
  line-height: normal;
}
input[type="checkbox"],
input[type="radio"] {
  box-sizing: border-box;
  padding: 0;
}
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: textfield;
  box-sizing: content-box;
}
input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}
fieldset {
  border: 1px solid #c0c0c0;
  margin: 0 2px;
  padding: 0.35em 0.625em 0.75em;
}
legend {
  border: 0;
  padding: 0;
}
textarea {
  overflow: auto;
}
optgroup {
  font-weight: bold;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
td,
th {
  padding: 0;
}
/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */
@media print {
  *,
  *:before,
  *:after {
    background: transparent !important;
    box-shadow: none !important;
    text-shadow: none !important;
  }
  a,
  a:visited {
    text-decoration: underline;
  }
  a[href]:after {
    content: " (" attr(href) ")";
  }
  abbr[title]:after {
    content: " (" attr(title) ")";
  }
  a[href^="#"]:after,
  a[href^="javascript:"]:after {
    content: "";
  }
  pre,
  blockquote {
    border: 1px solid #999;
    page-break-inside: avoid;
  }
  thead {
    display: table-header-group;
  }
  tr,
  img {
    page-break-inside: avoid;
  }
  img {
    max-width: 100% !important;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  h2,
  h3 {
    page-break-after: avoid;
  }
  .navbar {
    display: none;
  }
  .btn > .caret,
  .dropup > .btn > .caret {
    border-top-color: #000 !important;
  }
  .label {
    border: 1px solid #000;
  }
  .table {
    border-collapse: collapse !important;
  }
  .table td,
  .table th {
    background-color: #fff !important;
  }
  .table-bordered th,
  .table-bordered td {
    border: 1px solid #ddd !important;
  }
}
@font-face {
  font-family: 'Glyphicons Halflings';
  src: url('../components/bootstrap/fonts/glyphicons-halflings-regular.eot');
  src: url('../components/bootstrap/fonts/glyphicons-halflings-regular.eot?#iefix') format('embedded-opentype'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.woff2') format('woff2'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.woff') format('woff'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.ttf') format('truetype'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular') format('svg');
}
.glyphicon {
  position: relative;
  top: 1px;
  display: inline-block;
  font-family: 'Glyphicons Halflings';
  font-style: normal;
  font-weight: normal;
  line-height: 1;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.glyphicon-asterisk:before {
  content: "\002a";
}
.glyphicon-plus:before {
  content: "\002b";
}
.glyphicon-euro:before,
.glyphicon-eur:before {
  content: "\20ac";
}
.glyphicon-minus:before {
  content: "\2212";
}
.glyphicon-cloud:before {
  content: "\2601";
}
.glyphicon-envelope:before {
  content: "\2709";
}
.glyphicon-pencil:before {
  content: "\270f";
}
.glyphicon-glass:before {
  content: "\e001";
}
.glyphicon-music:before {
  content: "\e002";
}
.glyphicon-search:before {
  content: "\e003";
}
.glyphicon-heart:before {
  content: "\e005";
}
.glyphicon-star:before {
  content: "\e006";
}
.glyphicon-star-empty:before {
  content: "\e007";
}
.glyphicon-user:before {
  content: "\e008";
}
.glyphicon-film:before {
  content: "\e009";
}
.glyphicon-th-large:before {
  content: "\e010";
}
.glyphicon-th:before {
  content: "\e011";
}
.glyphicon-th-list:before {
  content: "\e012";
}
.glyphicon-ok:before {
  content: "\e013";
}
.glyphicon-remove:before {
  content: "\e014";
}
.glyphicon-zoom-in:before {
  content: "\e015";
}
.glyphicon-zoom-out:before {
  content: "\e016";
}
.glyphicon-off:before {
  content: "\e017";
}
.glyphicon-signal:before {
  content: "\e018";
}
.glyphicon-cog:before {
  content: "\e019";
}
.glyphicon-trash:before {
  content: "\e020";
}
.glyphicon-home:before {
  content: "\e021";
}
.glyphicon-file:before {
  content: "\e022";
}
.glyphicon-time:before {
  content: "\e023";
}
.glyphicon-road:before {
  content: "\e024";
}
.glyphicon-download-alt:before {
  content: "\e025";
}
.glyphicon-download:before {
  content: "\e026";
}
.glyphicon-upload:before {
  content: "\e027";
}
.glyphicon-inbox:before {
  content: "\e028";
}
.glyphicon-play-circle:before {
  content: "\e029";
}
.glyphicon-repeat:before {
  content: "\e030";
}
.glyphicon-refresh:before {
  content: "\e031";
}
.glyphicon-list-alt:before {
  content: "\e032";
}
.glyphicon-lock:before {
  content: "\e033";
}
.glyphicon-flag:before {
  content: "\e034";
}
.glyphicon-headphones:before {
  content: "\e035";
}
.glyphicon-volume-off:before {
  content: "\e036";
}
.glyphicon-volume-down:before {
  content: "\e037";
}
.glyphicon-volume-up:before {
  content: "\e038";
}
.glyphicon-qrcode:before {
  content: "\e039";
}
.glyphicon-barcode:before {
  content: "\e040";
}
.glyphicon-tag:before {
  content: "\e041";
}
.glyphicon-tags:before {
  content: "\e042";
}
.glyphicon-book:before {
  content: "\e043";
}
.glyphicon-bookmark:before {
  content: "\e044";
}
.glyphicon-print:before {
  content: "\e045";
}
.glyphicon-camera:before {
  content: "\e046";
}
.glyphicon-font:before {
  content: "\e047";
}
.glyphicon-bold:before {
  content: "\e048";
}
.glyphicon-italic:before {
  content: "\e049";
}
.glyphicon-text-height:before {
  content: "\e050";
}
.glyphicon-text-width:before {
  content: "\e051";
}
.glyphicon-align-left:before {
  content: "\e052";
}
.glyphicon-align-center:before {
  content: "\e053";
}
.glyphicon-align-right:before {
  content: "\e054";
}
.glyphicon-align-justify:before {
  content: "\e055";
}
.glyphicon-list:before {
  content: "\e056";
}
.glyphicon-indent-left:before {
  content: "\e057";
}
.glyphicon-indent-right:before {
  content: "\e058";
}
.glyphicon-facetime-video:before {
  content: "\e059";
}
.glyphicon-picture:before {
  content: "\e060";
}
.glyphicon-map-marker:before {
  content: "\e062";
}
.glyphicon-adjust:before {
  content: "\e063";
}
.glyphicon-tint:before {
  content: "\e064";
}
.glyphicon-edit:before {
  content: "\e065";
}
.glyphicon-share:before {
  content: "\e066";
}
.glyphicon-check:before {
  content: "\e067";
}
.glyphicon-move:before {
  content: "\e068";
}
.glyphicon-step-backward:before {
  content: "\e069";
}
.glyphicon-fast-backward:before {
  content: "\e070";
}
.glyphicon-backward:before {
  content: "\e071";
}
.glyphicon-play:before {
  content: "\e072";
}
.glyphicon-pause:before {
  content: "\e073";
}
.glyphicon-stop:before {
  content: "\e074";
}
.glyphicon-forward:before {
  content: "\e075";
}
.glyphicon-fast-forward:before {
  content: "\e076";
}
.glyphicon-step-forward:before {
  content: "\e077";
}
.glyphicon-eject:before {
  content: "\e078";
}
.glyphicon-chevron-left:before {
  content: "\e079";
}
.glyphicon-chevron-right:before {
  content: "\e080";
}
.glyphicon-plus-sign:before {
  content: "\e081";
}
.glyphicon-minus-sign:before {
  content: "\e082";
}
.glyphicon-remove-sign:before {
  content: "\e083";
}
.glyphicon-ok-sign:before {
  content: "\e084";
}
.glyphicon-question-sign:before {
  content: "\e085";
}
.glyphicon-info-sign:before {
  content: "\e086";
}
.glyphicon-screenshot:before {
  content: "\e087";
}
.glyphicon-remove-circle:before {
  content: "\e088";
}
.glyphicon-ok-circle:before {
  content: "\e089";
}
.glyphicon-ban-circle:before {
  content: "\e090";
}
.glyphicon-arrow-left:before {
  content: "\e091";
}
.glyphicon-arrow-right:before {
  content: "\e092";
}
.glyphicon-arrow-up:before {
  content: "\e093";
}
.glyphicon-arrow-down:before {
  content: "\e094";
}
.glyphicon-share-alt:before {
  content: "\e095";
}
.glyphicon-resize-full:before {
  content: "\e096";
}
.glyphicon-resize-small:before {
  content: "\e097";
}
.glyphicon-exclamation-sign:before {
  content: "\e101";
}
.glyphicon-gift:before {
  content: "\e102";
}
.glyphicon-leaf:before {
  content: "\e103";
}
.glyphicon-fire:before {
  content: "\e104";
}
.glyphicon-eye-open:before {
  content: "\e105";
}
.glyphicon-eye-close:before {
  content: "\e106";
}
.glyphicon-warning-sign:before {
  content: "\e107";
}
.glyphicon-plane:before {
  content: "\e108";
}
.glyphicon-calendar:before {
  content: "\e109";
}
.glyphicon-random:before {
  content: "\e110";
}
.glyphicon-comment:before {
  content: "\e111";
}
.glyphicon-magnet:before {
  content: "\e112";
}
.glyphicon-chevron-up:before {
  content: "\e113";
}
.glyphicon-chevron-down:before {
  content: "\e114";
}
.glyphicon-retweet:before {
  content: "\e115";
}
.glyphicon-shopping-cart:before {
  content: "\e116";
}
.glyphicon-folder-close:before {
  content: "\e117";
}
.glyphicon-folder-open:before {
  content: "\e118";
}
.glyphicon-resize-vertical:before {
  content: "\e119";
}
.glyphicon-resize-horizontal:before {
  content: "\e120";
}
.glyphicon-hdd:before {
  content: "\e121";
}
.glyphicon-bullhorn:before {
  content: "\e122";
}
.glyphicon-bell:before {
  content: "\e123";
}
.glyphicon-certificate:before {
  content: "\e124";
}
.glyphicon-thumbs-up:before {
  content: "\e125";
}
.glyphicon-thumbs-down:before {
  content: "\e126";
}
.glyphicon-hand-right:before {
  content: "\e127";
}
.glyphicon-hand-left:before {
  content: "\e128";
}
.glyphicon-hand-up:before {
  content: "\e129";
}
.glyphicon-hand-down:before {
  content: "\e130";
}
.glyphicon-circle-arrow-right:before {
  content: "\e131";
}
.glyphicon-circle-arrow-left:before {
  content: "\e132";
}
.glyphicon-circle-arrow-up:before {
  content: "\e133";
}
.glyphicon-circle-arrow-down:before {
  content: "\e134";
}
.glyphicon-globe:before {
  content: "\e135";
}
.glyphicon-wrench:before {
  content: "\e136";
}
.glyphicon-tasks:before {
  content: "\e137";
}
.glyphicon-filter:before {
  content: "\e138";
}
.glyphicon-briefcase:before {
  content: "\e139";
}
.glyphicon-fullscreen:before {
  content: "\e140";
}
.glyphicon-dashboard:before {
  content: "\e141";
}
.glyphicon-paperclip:before {
  content: "\e142";
}
.glyphicon-heart-empty:before {
  content: "\e143";
}
.glyphicon-link:before {
  content: "\e144";
}
.glyphicon-phone:before {
  content: "\e145";
}
.glyphicon-pushpin:before {
  content: "\e146";
}
.glyphicon-usd:before {
  content: "\e148";
}
.glyphicon-gbp:before {
  content: "\e149";
}
.glyphicon-sort:before {
  content: "\e150";
}
.glyphicon-sort-by-alphabet:before {
  content: "\e151";
}
.glyphicon-sort-by-alphabet-alt:before {
  content: "\e152";
}
.glyphicon-sort-by-order:before {
  content: "\e153";
}
.glyphicon-sort-by-order-alt:before {
  content: "\e154";
}
.glyphicon-sort-by-attributes:before {
  content: "\e155";
}
.glyphicon-sort-by-attributes-alt:before {
  content: "\e156";
}
.glyphicon-unchecked:before {
  content: "\e157";
}
.glyphicon-expand:before {
  content: "\e158";
}
.glyphicon-collapse-down:before {
  content: "\e159";
}
.glyphicon-collapse-up:before {
  content: "\e160";
}
.glyphicon-log-in:before {
  content: "\e161";
}
.glyphicon-flash:before {
  content: "\e162";
}
.glyphicon-log-out:before {
  content: "\e163";
}
.glyphicon-new-window:before {
  content: "\e164";
}
.glyphicon-record:before {
  content: "\e165";
}
.glyphicon-save:before {
  content: "\e166";
}
.glyphicon-open:before {
  content: "\e167";
}
.glyphicon-saved:before {
  content: "\e168";
}
.glyphicon-import:before {
  content: "\e169";
}
.glyphicon-export:before {
  content: "\e170";
}
.glyphicon-send:before {
  content: "\e171";
}
.glyphicon-floppy-disk:before {
  content: "\e172";
}
.glyphicon-floppy-saved:before {
  content: "\e173";
}
.glyphicon-floppy-remove:before {
  content: "\e174";
}
.glyphicon-floppy-save:before {
  content: "\e175";
}
.glyphicon-floppy-open:before {
  content: "\e176";
}
.glyphicon-credit-card:before {
  content: "\e177";
}
.glyphicon-transfer:before {
  content: "\e178";
}
.glyphicon-cutlery:before {
  content: "\e179";
}
.glyphicon-header:before {
  content: "\e180";
}
.glyphicon-compressed:before {
  content: "\e181";
}
.glyphicon-earphone:before {
  content: "\e182";
}
.glyphicon-phone-alt:before {
  content: "\e183";
}
.glyphicon-tower:before {
  content: "\e184";
}
.glyphicon-stats:before {
  content: "\e185";
}
.glyphicon-sd-video:before {
  content: "\e186";
}
.glyphicon-hd-video:before {
  content: "\e187";
}
.glyphicon-subtitles:before {
  content: "\e188";
}
.glyphicon-sound-stereo:before {
  content: "\e189";
}
.glyphicon-sound-dolby:before {
  content: "\e190";
}
.glyphicon-sound-5-1:before {
  content: "\e191";
}
.glyphicon-sound-6-1:before {
  content: "\e192";
}
.glyphicon-sound-7-1:before {
  content: "\e193";
}
.glyphicon-copyright-mark:before {
  content: "\e194";
}
.glyphicon-registration-mark:before {
  content: "\e195";
}
.glyphicon-cloud-download:before {
  content: "\e197";
}
.glyphicon-cloud-upload:before {
  content: "\e198";
}
.glyphicon-tree-conifer:before {
  content: "\e199";
}
.glyphicon-tree-deciduous:before {
  content: "\e200";
}
.glyphicon-cd:before {
  content: "\e201";
}
.glyphicon-save-file:before {
  content: "\e202";
}
.glyphicon-open-file:before {
  content: "\e203";
}
.glyphicon-level-up:before {
  content: "\e204";
}
.glyphicon-copy:before {
  content: "\e205";
}
.glyphicon-paste:before {
  content: "\e206";
}
.glyphicon-alert:before {
  content: "\e209";
}
.glyphicon-equalizer:before {
  content: "\e210";
}
.glyphicon-king:before {
  content: "\e211";
}
.glyphicon-queen:before {
  content: "\e212";
}
.glyphicon-pawn:before {
  content: "\e213";
}
.glyphicon-bishop:before {
  content: "\e214";
}
.glyphicon-knight:before {
  content: "\e215";
}
.glyphicon-baby-formula:before {
  content: "\e216";
}
.glyphicon-tent:before {
  content: "\26fa";
}
.glyphicon-blackboard:before {
  content: "\e218";
}
.glyphicon-bed:before {
  content: "\e219";
}
.glyphicon-apple:before {
  content: "\f8ff";
}
.glyphicon-erase:before {
  content: "\e221";
}
.glyphicon-hourglass:before {
  content: "\231b";
}
.glyphicon-lamp:before {
  content: "\e223";
}
.glyphicon-duplicate:before {
  content: "\e224";
}
.glyphicon-piggy-bank:before {
  content: "\e225";
}
.glyphicon-scissors:before {
  content: "\e226";
}
.glyphicon-bitcoin:before {
  content: "\e227";
}
.glyphicon-btc:before {
  content: "\e227";
}
.glyphicon-xbt:before {
  content: "\e227";
}
.glyphicon-yen:before {
  content: "\00a5";
}
.glyphicon-jpy:before {
  content: "\00a5";
}
.glyphicon-ruble:before {
  content: "\20bd";
}
.glyphicon-rub:before {
  content: "\20bd";
}
.glyphicon-scale:before {
  content: "\e230";
}
.glyphicon-ice-lolly:before {
  content: "\e231";
}
.glyphicon-ice-lolly-tasted:before {
  content: "\e232";
}
.glyphicon-education:before {
  content: "\e233";
}
.glyphicon-option-horizontal:before {
  content: "\e234";
}
.glyphicon-option-vertical:before {
  content: "\e235";
}
.glyphicon-menu-hamburger:before {
  content: "\e236";
}
.glyphicon-modal-window:before {
  content: "\e237";
}
.glyphicon-oil:before {
  content: "\e238";
}
.glyphicon-grain:before {
  content: "\e239";
}
.glyphicon-sunglasses:before {
  content: "\e240";
}
.glyphicon-text-size:before {
  content: "\e241";
}
.glyphicon-text-color:before {
  content: "\e242";
}
.glyphicon-text-background:before {
  content: "\e243";
}
.glyphicon-object-align-top:before {
  content: "\e244";
}
.glyphicon-object-align-bottom:before {
  content: "\e245";
}
.glyphicon-object-align-horizontal:before {
  content: "\e246";
}
.glyphicon-object-align-left:before {
  content: "\e247";
}
.glyphicon-object-align-vertical:before {
  content: "\e248";
}
.glyphicon-object-align-right:before {
  content: "\e249";
}
.glyphicon-triangle-right:before {
  content: "\e250";
}
.glyphicon-triangle-left:before {
  content: "\e251";
}
.glyphicon-triangle-bottom:before {
  content: "\e252";
}
.glyphicon-triangle-top:before {
  content: "\e253";
}
.glyphicon-console:before {
  content: "\e254";
}
.glyphicon-superscript:before {
  content: "\e255";
}
.glyphicon-subscript:before {
  content: "\e256";
}
.glyphicon-menu-left:before {
  content: "\e257";
}
.glyphicon-menu-right:before {
  content: "\e258";
}
.glyphicon-menu-down:before {
  content: "\e259";
}
.glyphicon-menu-up:before {
  content: "\e260";
}
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
*:before,
*:after {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
html {
  font-size: 10px;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
body {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  line-height: 1.42857143;
  color: #000;
  background-color: #fff;
}
input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}
a {
  color: #337ab7;
  text-decoration: none;
}
a:hover,
a:focus {
  color: #23527c;
  text-decoration: underline;
}
a:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
figure {
  margin: 0;
}
img {
  vertical-align: middle;
}
.img-responsive,
.thumbnail > img,
.thumbnail a > img,
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  max-width: 100%;
  height: auto;
}
.img-rounded {
  border-radius: 3px;
}
.img-thumbnail {
  padding: 4px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 2px;
  -webkit-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  display: inline-block;
  max-width: 100%;
  height: auto;
}
.img-circle {
  border-radius: 50%;
}
hr {
  margin-top: 18px;
  margin-bottom: 18px;
  border: 0;
  border-top: 1px solid #eeeeee;
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  margin: -1px;
  padding: 0;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
[role="button"] {
  cursor: pointer;
}
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
h1 small,
h2 small,
h3 small,
h4 small,
h5 small,
h6 small,
.h1 small,
.h2 small,
.h3 small,
.h4 small,
.h5 small,
.h6 small,
h1 .small,
h2 .small,
h3 .small,
h4 .small,
h5 .small,
h6 .small,
.h1 .small,
.h2 .small,
.h3 .small,
.h4 .small,
.h5 .small,
.h6 .small {
  font-weight: normal;
  line-height: 1;
  color: #777777;
}
h1,
.h1,
h2,
.h2,
h3,
.h3 {
  margin-top: 18px;
  margin-bottom: 9px;
}
h1 small,
.h1 small,
h2 small,
.h2 small,
h3 small,
.h3 small,
h1 .small,
.h1 .small,
h2 .small,
.h2 .small,
h3 .small,
.h3 .small {
  font-size: 65%;
}
h4,
.h4,
h5,
.h5,
h6,
.h6 {
  margin-top: 9px;
  margin-bottom: 9px;
}
h4 small,
.h4 small,
h5 small,
.h5 small,
h6 small,
.h6 small,
h4 .small,
.h4 .small,
h5 .small,
.h5 .small,
h6 .small,
.h6 .small {
  font-size: 75%;
}
h1,
.h1 {
  font-size: 33px;
}
h2,
.h2 {
  font-size: 27px;
}
h3,
.h3 {
  font-size: 23px;
}
h4,
.h4 {
  font-size: 17px;
}
h5,
.h5 {
  font-size: 13px;
}
h6,
.h6 {
  font-size: 12px;
}
p {
  margin: 0 0 9px;
}
.lead {
  margin-bottom: 18px;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.4;
}
@media (min-width: 768px) {
  .lead {
    font-size: 19.5px;
  }
}
small,
.small {
  font-size: 92%;
}
mark,
.mark {
  background-color: #fcf8e3;
  padding: .2em;
}
.text-left {
  text-align: left;
}
.text-right {
  text-align: right;
}
.text-center {
  text-align: center;
}
.text-justify {
  text-align: justify;
}
.text-nowrap {
  white-space: nowrap;
}
.text-lowercase {
  text-transform: lowercase;
}
.text-uppercase {
  text-transform: uppercase;
}
.text-capitalize {
  text-transform: capitalize;
}
.text-muted {
  color: #777777;
}
.text-primary {
  color: #337ab7;
}
a.text-primary:hover,
a.text-primary:focus {
  color: #286090;
}
.text-success {
  color: #3c763d;
}
a.text-success:hover,
a.text-success:focus {
  color: #2b542c;
}
.text-info {
  color: #31708f;
}
a.text-info:hover,
a.text-info:focus {
  color: #245269;
}
.text-warning {
  color: #8a6d3b;
}
a.text-warning:hover,
a.text-warning:focus {
  color: #66512c;
}
.text-danger {
  color: #a94442;
}
a.text-danger:hover,
a.text-danger:focus {
  color: #843534;
}
.bg-primary {
  color: #fff;
  background-color: #337ab7;
}
a.bg-primary:hover,
a.bg-primary:focus {
  background-color: #286090;
}
.bg-success {
  background-color: #dff0d8;
}
a.bg-success:hover,
a.bg-success:focus {
  background-color: #c1e2b3;
}
.bg-info {
  background-color: #d9edf7;
}
a.bg-info:hover,
a.bg-info:focus {
  background-color: #afd9ee;
}
.bg-warning {
  background-color: #fcf8e3;
}
a.bg-warning:hover,
a.bg-warning:focus {
  background-color: #f7ecb5;
}
.bg-danger {
  background-color: #f2dede;
}
a.bg-danger:hover,
a.bg-danger:focus {
  background-color: #e4b9b9;
}
.page-header {
  padding-bottom: 8px;
  margin: 36px 0 18px;
  border-bottom: 1px solid #eeeeee;
}
ul,
ol {
  margin-top: 0;
  margin-bottom: 9px;
}
ul ul,
ol ul,
ul ol,
ol ol {
  margin-bottom: 0;
}
.list-unstyled {
  padding-left: 0;
  list-style: none;
}
.list-inline {
  padding-left: 0;
  list-style: none;
  margin-left: -5px;
}
.list-inline > li {
  display: inline-block;
  padding-left: 5px;
  padding-right: 5px;
}
dl {
  margin-top: 0;
  margin-bottom: 18px;
}
dt,
dd {
  line-height: 1.42857143;
}
dt {
  font-weight: bold;
}
dd {
  margin-left: 0;
}
@media (min-width: 541px) {
  .dl-horizontal dt {
    float: left;
    width: 160px;
    clear: left;
    text-align: right;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .dl-horizontal dd {
    margin-left: 180px;
  }
}
abbr[title],
abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #777777;
}
.initialism {
  font-size: 90%;
  text-transform: uppercase;
}
blockquote {
  padding: 9px 18px;
  margin: 0 0 18px;
  font-size: inherit;
  border-left: 5px solid #eeeeee;
}
blockquote p:last-child,
blockquote ul:last-child,
blockquote ol:last-child {
  margin-bottom: 0;
}
blockquote footer,
blockquote small,
blockquote .small {
  display: block;
  font-size: 80%;
  line-height: 1.42857143;
  color: #777777;
}
blockquote footer:before,
blockquote small:before,
blockquote .small:before {
  content: '\2014 \00A0';
}
.blockquote-reverse,
blockquote.pull-right {
  padding-right: 15px;
  padding-left: 0;
  border-right: 5px solid #eeeeee;
  border-left: 0;
  text-align: right;
}
.blockquote-reverse footer:before,
blockquote.pull-right footer:before,
.blockquote-reverse small:before,
blockquote.pull-right small:before,
.blockquote-reverse .small:before,
blockquote.pull-right .small:before {
  content: '';
}
.blockquote-reverse footer:after,
blockquote.pull-right footer:after,
.blockquote-reverse small:after,
blockquote.pull-right small:after,
.blockquote-reverse .small:after,
blockquote.pull-right .small:after {
  content: '\00A0 \2014';
}
address {
  margin-bottom: 18px;
  font-style: normal;
  line-height: 1.42857143;
}
code,
kbd,
pre,
samp {
  font-family: monospace;
}
code {
  padding: 2px 4px;
  font-size: 90%;
  color: #c7254e;
  background-color: #f9f2f4;
  border-radius: 2px;
}
kbd {
  padding: 2px 4px;
  font-size: 90%;
  color: #888;
  background-color: transparent;
  border-radius: 1px;
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.25);
}
kbd kbd {
  padding: 0;
  font-size: 100%;
  font-weight: bold;
  box-shadow: none;
}
pre {
  display: block;
  padding: 8.5px;
  margin: 0 0 9px;
  font-size: 12px;
  line-height: 1.42857143;
  word-break: break-all;
  word-wrap: break-word;
  color: #333333;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 2px;
}
pre code {
  padding: 0;
  font-size: inherit;
  color: inherit;
  white-space: pre-wrap;
  background-color: transparent;
  border-radius: 0;
}
.pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}
.container {
  margin-right: auto;
  margin-left: auto;
  padding-left: 0px;
  padding-right: 0px;
}
@media (min-width: 768px) {
  .container {
    width: 768px;
  }
}
@media (min-width: 992px) {
  .container {
    width: 940px;
  }
}
@media (min-width: 1200px) {
  .container {
    width: 1140px;
  }
}
.container-fluid {
  margin-right: auto;
  margin-left: auto;
  padding-left: 0px;
  padding-right: 0px;
}
.row {
  margin-left: 0px;
  margin-right: 0px;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
  position: relative;
  min-height: 1px;
  padding-left: 0px;
  padding-right: 0px;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
  float: left;
}
.col-xs-12 {
  width: 100%;
}
.col-xs-11 {
  width: 91.66666667%;
}
.col-xs-10 {
  width: 83.33333333%;
}
.col-xs-9 {
  width: 75%;
}
.col-xs-8 {
  width: 66.66666667%;
}
.col-xs-7 {
  width: 58.33333333%;
}
.col-xs-6 {
  width: 50%;
}
.col-xs-5 {
  width: 41.66666667%;
}
.col-xs-4 {
  width: 33.33333333%;
}
.col-xs-3 {
  width: 25%;
}
.col-xs-2 {
  width: 16.66666667%;
}
.col-xs-1 {
  width: 8.33333333%;
}
.col-xs-pull-12 {
  right: 100%;
}
.col-xs-pull-11 {
  right: 91.66666667%;
}
.col-xs-pull-10 {
  right: 83.33333333%;
}
.col-xs-pull-9 {
  right: 75%;
}
.col-xs-pull-8 {
  right: 66.66666667%;
}
.col-xs-pull-7 {
  right: 58.33333333%;
}
.col-xs-pull-6 {
  right: 50%;
}
.col-xs-pull-5 {
  right: 41.66666667%;
}
.col-xs-pull-4 {
  right: 33.33333333%;
}
.col-xs-pull-3 {
  right: 25%;
}
.col-xs-pull-2 {
  right: 16.66666667%;
}
.col-xs-pull-1 {
  right: 8.33333333%;
}
.col-xs-pull-0 {
  right: auto;
}
.col-xs-push-12 {
  left: 100%;
}
.col-xs-push-11 {
  left: 91.66666667%;
}
.col-xs-push-10 {
  left: 83.33333333%;
}
.col-xs-push-9 {
  left: 75%;
}
.col-xs-push-8 {
  left: 66.66666667%;
}
.col-xs-push-7 {
  left: 58.33333333%;
}
.col-xs-push-6 {
  left: 50%;
}
.col-xs-push-5 {
  left: 41.66666667%;
}
.col-xs-push-4 {
  left: 33.33333333%;
}
.col-xs-push-3 {
  left: 25%;
}
.col-xs-push-2 {
  left: 16.66666667%;
}
.col-xs-push-1 {
  left: 8.33333333%;
}
.col-xs-push-0 {
  left: auto;
}
.col-xs-offset-12 {
  margin-left: 100%;
}
.col-xs-offset-11 {
  margin-left: 91.66666667%;
}
.col-xs-offset-10 {
  margin-left: 83.33333333%;
}
.col-xs-offset-9 {
  margin-left: 75%;
}
.col-xs-offset-8 {
  margin-left: 66.66666667%;
}
.col-xs-offset-7 {
  margin-left: 58.33333333%;
}
.col-xs-offset-6 {
  margin-left: 50%;
}
.col-xs-offset-5 {
  margin-left: 41.66666667%;
}
.col-xs-offset-4 {
  margin-left: 33.33333333%;
}
.col-xs-offset-3 {
  margin-left: 25%;
}
.col-xs-offset-2 {
  margin-left: 16.66666667%;
}
.col-xs-offset-1 {
  margin-left: 8.33333333%;
}
.col-xs-offset-0 {
  margin-left: 0%;
}
@media (min-width: 768px) {
  .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
    float: left;
  }
  .col-sm-12 {
    width: 100%;
  }
  .col-sm-11 {
    width: 91.66666667%;
  }
  .col-sm-10 {
    width: 83.33333333%;
  }
  .col-sm-9 {
    width: 75%;
  }
  .col-sm-8 {
    width: 66.66666667%;
  }
  .col-sm-7 {
    width: 58.33333333%;
  }
  .col-sm-6 {
    width: 50%;
  }
  .col-sm-5 {
    width: 41.66666667%;
  }
  .col-sm-4 {
    width: 33.33333333%;
  }
  .col-sm-3 {
    width: 25%;
  }
  .col-sm-2 {
    width: 16.66666667%;
  }
  .col-sm-1 {
    width: 8.33333333%;
  }
  .col-sm-pull-12 {
    right: 100%;
  }
  .col-sm-pull-11 {
    right: 91.66666667%;
  }
  .col-sm-pull-10 {
    right: 83.33333333%;
  }
  .col-sm-pull-9 {
    right: 75%;
  }
  .col-sm-pull-8 {
    right: 66.66666667%;
  }
  .col-sm-pull-7 {
    right: 58.33333333%;
  }
  .col-sm-pull-6 {
    right: 50%;
  }
  .col-sm-pull-5 {
    right: 41.66666667%;
  }
  .col-sm-pull-4 {
    right: 33.33333333%;
  }
  .col-sm-pull-3 {
    right: 25%;
  }
  .col-sm-pull-2 {
    right: 16.66666667%;
  }
  .col-sm-pull-1 {
    right: 8.33333333%;
  }
  .col-sm-pull-0 {
    right: auto;
  }
  .col-sm-push-12 {
    left: 100%;
  }
  .col-sm-push-11 {
    left: 91.66666667%;
  }
  .col-sm-push-10 {
    left: 83.33333333%;
  }
  .col-sm-push-9 {
    left: 75%;
  }
  .col-sm-push-8 {
    left: 66.66666667%;
  }
  .col-sm-push-7 {
    left: 58.33333333%;
  }
  .col-sm-push-6 {
    left: 50%;
  }
  .col-sm-push-5 {
    left: 41.66666667%;
  }
  .col-sm-push-4 {
    left: 33.33333333%;
  }
  .col-sm-push-3 {
    left: 25%;
  }
  .col-sm-push-2 {
    left: 16.66666667%;
  }
  .col-sm-push-1 {
    left: 8.33333333%;
  }
  .col-sm-push-0 {
    left: auto;
  }
  .col-sm-offset-12 {
    margin-left: 100%;
  }
  .col-sm-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-sm-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-sm-offset-9 {
    margin-left: 75%;
  }
  .col-sm-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-sm-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-sm-offset-6 {
    margin-left: 50%;
  }
  .col-sm-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-sm-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-sm-offset-3 {
    margin-left: 25%;
  }
  .col-sm-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-sm-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-sm-offset-0 {
    margin-left: 0%;
  }
}
@media (min-width: 992px) {
  .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
  }
  .col-md-12 {
    width: 100%;
  }
  .col-md-11 {
    width: 91.66666667%;
  }
  .col-md-10 {
    width: 83.33333333%;
  }
  .col-md-9 {
    width: 75%;
  }
  .col-md-8 {
    width: 66.66666667%;
  }
  .col-md-7 {
    width: 58.33333333%;
  }
  .col-md-6 {
    width: 50%;
  }
  .col-md-5 {
    width: 41.66666667%;
  }
  .col-md-4 {
    width: 33.33333333%;
  }
  .col-md-3 {
    width: 25%;
  }
  .col-md-2 {
    width: 16.66666667%;
  }
  .col-md-1 {
    width: 8.33333333%;
  }
  .col-md-pull-12 {
    right: 100%;
  }
  .col-md-pull-11 {
    right: 91.66666667%;
  }
  .col-md-pull-10 {
    right: 83.33333333%;
  }
  .col-md-pull-9 {
    right: 75%;
  }
  .col-md-pull-8 {
    right: 66.66666667%;
  }
  .col-md-pull-7 {
    right: 58.33333333%;
  }
  .col-md-pull-6 {
    right: 50%;
  }
  .col-md-pull-5 {
    right: 41.66666667%;
  }
  .col-md-pull-4 {
    right: 33.33333333%;
  }
  .col-md-pull-3 {
    right: 25%;
  }
  .col-md-pull-2 {
    right: 16.66666667%;
  }
  .col-md-pull-1 {
    right: 8.33333333%;
  }
  .col-md-pull-0 {
    right: auto;
  }
  .col-md-push-12 {
    left: 100%;
  }
  .col-md-push-11 {
    left: 91.66666667%;
  }
  .col-md-push-10 {
    left: 83.33333333%;
  }
  .col-md-push-9 {
    left: 75%;
  }
  .col-md-push-8 {
    left: 66.66666667%;
  }
  .col-md-push-7 {
    left: 58.33333333%;
  }
  .col-md-push-6 {
    left: 50%;
  }
  .col-md-push-5 {
    left: 41.66666667%;
  }
  .col-md-push-4 {
    left: 33.33333333%;
  }
  .col-md-push-3 {
    left: 25%;
  }
  .col-md-push-2 {
    left: 16.66666667%;
  }
  .col-md-push-1 {
    left: 8.33333333%;
  }
  .col-md-push-0 {
    left: auto;
  }
  .col-md-offset-12 {
    margin-left: 100%;
  }
  .col-md-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-md-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-md-offset-9 {
    margin-left: 75%;
  }
  .col-md-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-md-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-md-offset-6 {
    margin-left: 50%;
  }
  .col-md-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-md-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-md-offset-3 {
    margin-left: 25%;
  }
  .col-md-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-md-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-md-offset-0 {
    margin-left: 0%;
  }
}
@media (min-width: 1200px) {
  .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
    float: left;
  }
  .col-lg-12 {
    width: 100%;
  }
  .col-lg-11 {
    width: 91.66666667%;
  }
  .col-lg-10 {
    width: 83.33333333%;
  }
  .col-lg-9 {
    width: 75%;
  }
  .col-lg-8 {
    width: 66.66666667%;
  }
  .col-lg-7 {
    width: 58.33333333%;
  }
  .col-lg-6 {
    width: 50%;
  }
  .col-lg-5 {
    width: 41.66666667%;
  }
  .col-lg-4 {
    width: 33.33333333%;
  }
  .col-lg-3 {
    width: 25%;
  }
  .col-lg-2 {
    width: 16.66666667%;
  }
  .col-lg-1 {
    width: 8.33333333%;
  }
  .col-lg-pull-12 {
    right: 100%;
  }
  .col-lg-pull-11 {
    right: 91.66666667%;
  }
  .col-lg-pull-10 {
    right: 83.33333333%;
  }
  .col-lg-pull-9 {
    right: 75%;
  }
  .col-lg-pull-8 {
    right: 66.66666667%;
  }
  .col-lg-pull-7 {
    right: 58.33333333%;
  }
  .col-lg-pull-6 {
    right: 50%;
  }
  .col-lg-pull-5 {
    right: 41.66666667%;
  }
  .col-lg-pull-4 {
    right: 33.33333333%;
  }
  .col-lg-pull-3 {
    right: 25%;
  }
  .col-lg-pull-2 {
    right: 16.66666667%;
  }
  .col-lg-pull-1 {
    right: 8.33333333%;
  }
  .col-lg-pull-0 {
    right: auto;
  }
  .col-lg-push-12 {
    left: 100%;
  }
  .col-lg-push-11 {
    left: 91.66666667%;
  }
  .col-lg-push-10 {
    left: 83.33333333%;
  }
  .col-lg-push-9 {
    left: 75%;
  }
  .col-lg-push-8 {
    left: 66.66666667%;
  }
  .col-lg-push-7 {
    left: 58.33333333%;
  }
  .col-lg-push-6 {
    left: 50%;
  }
  .col-lg-push-5 {
    left: 41.66666667%;
  }
  .col-lg-push-4 {
    left: 33.33333333%;
  }
  .col-lg-push-3 {
    left: 25%;
  }
  .col-lg-push-2 {
    left: 16.66666667%;
  }
  .col-lg-push-1 {
    left: 8.33333333%;
  }
  .col-lg-push-0 {
    left: auto;
  }
  .col-lg-offset-12 {
    margin-left: 100%;
  }
  .col-lg-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-lg-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-lg-offset-9 {
    margin-left: 75%;
  }
  .col-lg-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-lg-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-lg-offset-6 {
    margin-left: 50%;
  }
  .col-lg-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-lg-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-lg-offset-3 {
    margin-left: 25%;
  }
  .col-lg-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-lg-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-lg-offset-0 {
    margin-left: 0%;
  }
}
table {
  background-color: transparent;
}
caption {
  padding-top: 8px;
  padding-bottom: 8px;
  color: #777777;
  text-align: left;
}
th {
  text-align: left;
}
.table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 18px;
}
.table > thead > tr > th,
.table > tbody > tr > th,
.table > tfoot > tr > th,
.table > thead > tr > td,
.table > tbody > tr > td,
.table > tfoot > tr > td {
  padding: 8px;
  line-height: 1.42857143;
  vertical-align: top;
  border-top: 1px solid #ddd;
}
.table > thead > tr > th {
  vertical-align: bottom;
  border-bottom: 2px solid #ddd;
}
.table > caption + thead > tr:first-child > th,
.table > colgroup + thead > tr:first-child > th,
.table > thead:first-child > tr:first-child > th,
.table > caption + thead > tr:first-child > td,
.table > colgroup + thead > tr:first-child > td,
.table > thead:first-child > tr:first-child > td {
  border-top: 0;
}
.table > tbody + tbody {
  border-top: 2px solid #ddd;
}
.table .table {
  background-color: #fff;
}
.table-condensed > thead > tr > th,
.table-condensed > tbody > tr > th,
.table-condensed > tfoot > tr > th,
.table-condensed > thead > tr > td,
.table-condensed > tbody > tr > td,
.table-condensed > tfoot > tr > td {
  padding: 5px;
}
.table-bordered {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > tbody > tr > th,
.table-bordered > tfoot > tr > th,
.table-bordered > thead > tr > td,
.table-bordered > tbody > tr > td,
.table-bordered > tfoot > tr > td {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > thead > tr > td {
  border-bottom-width: 2px;
}
.table-striped > tbody > tr:nth-of-type(odd) {
  background-color: #f9f9f9;
}
.table-hover > tbody > tr:hover {
  background-color: #f5f5f5;
}
table col[class*="col-"] {
  position: static;
  float: none;
  display: table-column;
}
table td[class*="col-"],
table th[class*="col-"] {
  position: static;
  float: none;
  display: table-cell;
}
.table > thead > tr > td.active,
.table > tbody > tr > td.active,
.table > tfoot > tr > td.active,
.table > thead > tr > th.active,
.table > tbody > tr > th.active,
.table > tfoot > tr > th.active,
.table > thead > tr.active > td,
.table > tbody > tr.active > td,
.table > tfoot > tr.active > td,
.table > thead > tr.active > th,
.table > tbody > tr.active > th,
.table > tfoot > tr.active > th {
  background-color: #f5f5f5;
}
.table-hover > tbody > tr > td.active:hover,
.table-hover > tbody > tr > th.active:hover,
.table-hover > tbody > tr.active:hover > td,
.table-hover > tbody > tr:hover > .active,
.table-hover > tbody > tr.active:hover > th {
  background-color: #e8e8e8;
}
.table > thead > tr > td.success,
.table > tbody > tr > td.success,
.table > tfoot > tr > td.success,
.table > thead > tr > th.success,
.table > tbody > tr > th.success,
.table > tfoot > tr > th.success,
.table > thead > tr.success > td,
.table > tbody > tr.success > td,
.table > tfoot > tr.success > td,
.table > thead > tr.success > th,
.table > tbody > tr.success > th,
.table > tfoot > tr.success > th {
  background-color: #dff0d8;
}
.table-hover > tbody > tr > td.success:hover,
.table-hover > tbody > tr > th.success:hover,
.table-hover > tbody > tr.success:hover > td,
.table-hover > tbody > tr:hover > .success,
.table-hover > tbody > tr.success:hover > th {
  background-color: #d0e9c6;
}
.table > thead > tr > td.info,
.table > tbody > tr > td.info,
.table > tfoot > tr > td.info,
.table > thead > tr > th.info,
.table > tbody > tr > th.info,
.table > tfoot > tr > th.info,
.table > thead > tr.info > td,
.table > tbody > tr.info > td,
.table > tfoot > tr.info > td,
.table > thead > tr.info > th,
.table > tbody > tr.info > th,
.table > tfoot > tr.info > th {
  background-color: #d9edf7;
}
.table-hover > tbody > tr > td.info:hover,
.table-hover > tbody > tr > th.info:hover,
.table-hover > tbody > tr.info:hover > td,
.table-hover > tbody > tr:hover > .info,
.table-hover > tbody > tr.info:hover > th {
  background-color: #c4e3f3;
}
.table > thead > tr > td.warning,
.table > tbody > tr > td.warning,
.table > tfoot > tr > td.warning,
.table > thead > tr > th.warning,
.table > tbody > tr > th.warning,
.table > tfoot > tr > th.warning,
.table > thead > tr.warning > td,
.table > tbody > tr.warning > td,
.table > tfoot > tr.warning > td,
.table > thead > tr.warning > th,
.table > tbody > tr.warning > th,
.table > tfoot > tr.warning > th {
  background-color: #fcf8e3;
}
.table-hover > tbody > tr > td.warning:hover,
.table-hover > tbody > tr > th.warning:hover,
.table-hover > tbody > tr.warning:hover > td,
.table-hover > tbody > tr:hover > .warning,
.table-hover > tbody > tr.warning:hover > th {
  background-color: #faf2cc;
}
.table > thead > tr > td.danger,
.table > tbody > tr > td.danger,
.table > tfoot > tr > td.danger,
.table > thead > tr > th.danger,
.table > tbody > tr > th.danger,
.table > tfoot > tr > th.danger,
.table > thead > tr.danger > td,
.table > tbody > tr.danger > td,
.table > tfoot > tr.danger > td,
.table > thead > tr.danger > th,
.table > tbody > tr.danger > th,
.table > tfoot > tr.danger > th {
  background-color: #f2dede;
}
.table-hover > tbody > tr > td.danger:hover,
.table-hover > tbody > tr > th.danger:hover,
.table-hover > tbody > tr.danger:hover > td,
.table-hover > tbody > tr:hover > .danger,
.table-hover > tbody > tr.danger:hover > th {
  background-color: #ebcccc;
}
.table-responsive {
  overflow-x: auto;
  min-height: 0.01%;
}
@media screen and (max-width: 767px) {
  .table-responsive {
    width: 100%;
    margin-bottom: 13.5px;
    overflow-y: hidden;
    -ms-overflow-style: -ms-autohiding-scrollbar;
    border: 1px solid #ddd;
  }
  .table-responsive > .table {
    margin-bottom: 0;
  }
  .table-responsive > .table > thead > tr > th,
  .table-responsive > .table > tbody > tr > th,
  .table-responsive > .table > tfoot > tr > th,
  .table-responsive > .table > thead > tr > td,
  .table-responsive > .table > tbody > tr > td,
  .table-responsive > .table > tfoot > tr > td {
    white-space: nowrap;
  }
  .table-responsive > .table-bordered {
    border: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:first-child,
  .table-responsive > .table-bordered > tbody > tr > th:first-child,
  .table-responsive > .table-bordered > tfoot > tr > th:first-child,
  .table-responsive > .table-bordered > thead > tr > td:first-child,
  .table-responsive > .table-bordered > tbody > tr > td:first-child,
  .table-responsive > .table-bordered > tfoot > tr > td:first-child {
    border-left: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:last-child,
  .table-responsive > .table-bordered > tbody > tr > th:last-child,
  .table-responsive > .table-bordered > tfoot > tr > th:last-child,
  .table-responsive > .table-bordered > thead > tr > td:last-child,
  .table-responsive > .table-bordered > tbody > tr > td:last-child,
  .table-responsive > .table-bordered > tfoot > tr > td:last-child {
    border-right: 0;
  }
  .table-responsive > .table-bordered > tbody > tr:last-child > th,
  .table-responsive > .table-bordered > tfoot > tr:last-child > th,
  .table-responsive > .table-bordered > tbody > tr:last-child > td,
  .table-responsive > .table-bordered > tfoot > tr:last-child > td {
    border-bottom: 0;
  }
}
fieldset {
  padding: 0;
  margin: 0;
  border: 0;
  min-width: 0;
}
legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 18px;
  font-size: 19.5px;
  line-height: inherit;
  color: #333333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}
label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: bold;
}
input[type="search"] {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  line-height: normal;
}
input[type="file"] {
  display: block;
}
input[type="range"] {
  display: block;
  width: 100%;
}
select[multiple],
select[size] {
  height: auto;
}
input[type="file"]:focus,
input[type="radio"]:focus,
input[type="checkbox"]:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
output {
  display: block;
  padding-top: 7px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
}
.form-control {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.form-control:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.form-control::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.form-control:-ms-input-placeholder {
  color: #999;
}
.form-control::-webkit-input-placeholder {
  color: #999;
}
.form-control::-ms-expand {
  border: 0;
  background-color: transparent;
}
.form-control[disabled],
.form-control[readonly],
fieldset[disabled] .form-control {
  background-color: #eeeeee;
  opacity: 1;
}
.form-control[disabled],
fieldset[disabled] .form-control {
  cursor: not-allowed;
}
textarea.form-control {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: none;
}
@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input[type="date"].form-control,
  input[type="time"].form-control,
  input[type="datetime-local"].form-control,
  input[type="month"].form-control {
    line-height: 32px;
  }
  input[type="date"].input-sm,
  input[type="time"].input-sm,
  input[type="datetime-local"].input-sm,
  input[type="month"].input-sm,
  .input-group-sm input[type="date"],
  .input-group-sm input[type="time"],
  .input-group-sm input[type="datetime-local"],
  .input-group-sm input[type="month"] {
    line-height: 30px;
  }
  input[type="date"].input-lg,
  input[type="time"].input-lg,
  input[type="datetime-local"].input-lg,
  input[type="month"].input-lg,
  .input-group-lg input[type="date"],
  .input-group-lg input[type="time"],
  .input-group-lg input[type="datetime-local"],
  .input-group-lg input[type="month"] {
    line-height: 45px;
  }
}
.form-group {
  margin-bottom: 15px;
}
.radio,
.checkbox {
  position: relative;
  display: block;
  margin-top: 10px;
  margin-bottom: 10px;
}
.radio label,
.checkbox label {
  min-height: 18px;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  cursor: pointer;
}
.radio input[type="radio"],
.radio-inline input[type="radio"],
.checkbox input[type="checkbox"],
.checkbox-inline input[type="checkbox"] {
  position: absolute;
  margin-left: -20px;
  margin-top: 4px \9;
}
.radio + .radio,
.checkbox + .checkbox {
  margin-top: -5px;
}
.radio-inline,
.checkbox-inline {
  position: relative;
  display: inline-block;
  padding-left: 20px;
  margin-bottom: 0;
  vertical-align: middle;
  font-weight: normal;
  cursor: pointer;
}
.radio-inline + .radio-inline,
.checkbox-inline + .checkbox-inline {
  margin-top: 0;
  margin-left: 10px;
}
input[type="radio"][disabled],
input[type="checkbox"][disabled],
input[type="radio"].disabled,
input[type="checkbox"].disabled,
fieldset[disabled] input[type="radio"],
fieldset[disabled] input[type="checkbox"] {
  cursor: not-allowed;
}
.radio-inline.disabled,
.checkbox-inline.disabled,
fieldset[disabled] .radio-inline,
fieldset[disabled] .checkbox-inline {
  cursor: not-allowed;
}
.radio.disabled label,
.checkbox.disabled label,
fieldset[disabled] .radio label,
fieldset[disabled] .checkbox label {
  cursor: not-allowed;
}
.form-control-static {
  padding-top: 7px;
  padding-bottom: 7px;
  margin-bottom: 0;
  min-height: 31px;
}
.form-control-static.input-lg,
.form-control-static.input-sm {
  padding-left: 0;
  padding-right: 0;
}
.input-sm {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
select.input-sm {
  height: 30px;
  line-height: 30px;
}
textarea.input-sm,
select[multiple].input-sm {
  height: auto;
}
.form-group-sm .form-control {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.form-group-sm select.form-control {
  height: 30px;
  line-height: 30px;
}
.form-group-sm textarea.form-control,
.form-group-sm select[multiple].form-control {
  height: auto;
}
.form-group-sm .form-control-static {
  height: 30px;
  min-height: 30px;
  padding: 6px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.input-lg {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
select.input-lg {
  height: 45px;
  line-height: 45px;
}
textarea.input-lg,
select[multiple].input-lg {
  height: auto;
}
.form-group-lg .form-control {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
.form-group-lg select.form-control {
  height: 45px;
  line-height: 45px;
}
.form-group-lg textarea.form-control,
.form-group-lg select[multiple].form-control {
  height: auto;
}
.form-group-lg .form-control-static {
  height: 45px;
  min-height: 35px;
  padding: 11px 16px;
  font-size: 17px;
  line-height: 1.3333333;
}
.has-feedback {
  position: relative;
}
.has-feedback .form-control {
  padding-right: 40px;
}
.form-control-feedback {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  display: block;
  width: 32px;
  height: 32px;
  line-height: 32px;
  text-align: center;
  pointer-events: none;
}
.input-lg + .form-control-feedback,
.input-group-lg + .form-control-feedback,
.form-group-lg .form-control + .form-control-feedback {
  width: 45px;
  height: 45px;
  line-height: 45px;
}
.input-sm + .form-control-feedback,
.input-group-sm + .form-control-feedback,
.form-group-sm .form-control + .form-control-feedback {
  width: 30px;
  height: 30px;
  line-height: 30px;
}
.has-success .help-block,
.has-success .control-label,
.has-success .radio,
.has-success .checkbox,
.has-success .radio-inline,
.has-success .checkbox-inline,
.has-success.radio label,
.has-success.checkbox label,
.has-success.radio-inline label,
.has-success.checkbox-inline label {
  color: #3c763d;
}
.has-success .form-control {
  border-color: #3c763d;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-success .form-control:focus {
  border-color: #2b542c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
}
.has-success .input-group-addon {
  color: #3c763d;
  border-color: #3c763d;
  background-color: #dff0d8;
}
.has-success .form-control-feedback {
  color: #3c763d;
}
.has-warning .help-block,
.has-warning .control-label,
.has-warning .radio,
.has-warning .checkbox,
.has-warning .radio-inline,
.has-warning .checkbox-inline,
.has-warning.radio label,
.has-warning.checkbox label,
.has-warning.radio-inline label,
.has-warning.checkbox-inline label {
  color: #8a6d3b;
}
.has-warning .form-control {
  border-color: #8a6d3b;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-warning .form-control:focus {
  border-color: #66512c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
}
.has-warning .input-group-addon {
  color: #8a6d3b;
  border-color: #8a6d3b;
  background-color: #fcf8e3;
}
.has-warning .form-control-feedback {
  color: #8a6d3b;
}
.has-error .help-block,
.has-error .control-label,
.has-error .radio,
.has-error .checkbox,
.has-error .radio-inline,
.has-error .checkbox-inline,
.has-error.radio label,
.has-error.checkbox label,
.has-error.radio-inline label,
.has-error.checkbox-inline label {
  color: #a94442;
}
.has-error .form-control {
  border-color: #a94442;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-error .form-control:focus {
  border-color: #843534;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
}
.has-error .input-group-addon {
  color: #a94442;
  border-color: #a94442;
  background-color: #f2dede;
}
.has-error .form-control-feedback {
  color: #a94442;
}
.has-feedback label ~ .form-control-feedback {
  top: 23px;
}
.has-feedback label.sr-only ~ .form-control-feedback {
  top: 0;
}
.help-block {
  display: block;
  margin-top: 5px;
  margin-bottom: 10px;
  color: #404040;
}
@media (min-width: 768px) {
  .form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .form-inline .form-control-static {
    display: inline-block;
  }
  .form-inline .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .form-inline .input-group .input-group-addon,
  .form-inline .input-group .input-group-btn,
  .form-inline .input-group .form-control {
    width: auto;
  }
  .form-inline .input-group > .form-control {
    width: 100%;
  }
  .form-inline .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio,
  .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio label,
  .form-inline .checkbox label {
    padding-left: 0;
  }
  .form-inline .radio input[type="radio"],
  .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .form-inline .has-feedback .form-control-feedback {
    top: 0;
  }
}
.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  margin-top: 0;
  margin-bottom: 0;
  padding-top: 7px;
}
.form-horizontal .radio,
.form-horizontal .checkbox {
  min-height: 25px;
}
.form-horizontal .form-group {
  margin-left: 0px;
  margin-right: 0px;
}
@media (min-width: 768px) {
  .form-horizontal .control-label {
    text-align: right;
    margin-bottom: 0;
    padding-top: 7px;
  }
}
.form-horizontal .has-feedback .form-control-feedback {
  right: 0px;
}
@media (min-width: 768px) {
  .form-horizontal .form-group-lg .control-label {
    padding-top: 11px;
    font-size: 17px;
  }
}
@media (min-width: 768px) {
  .form-horizontal .form-group-sm .control-label {
    padding-top: 6px;
    font-size: 12px;
  }
}
.btn {
  display: inline-block;
  margin-bottom: 0;
  font-weight: normal;
  text-align: center;
  vertical-align: middle;
  touch-action: manipulation;
  cursor: pointer;
  background-image: none;
  border: 1px solid transparent;
  white-space: nowrap;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  border-radius: 2px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.btn:hover,
.btn:focus,
.btn.focus {
  color: #333;
  text-decoration: none;
}
.btn:active,
.btn.active {
  outline: 0;
  background-image: none;
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn.disabled,
.btn[disabled],
fieldset[disabled] .btn {
  cursor: not-allowed;
  opacity: 0.65;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
  box-shadow: none;
}
a.btn.disabled,
fieldset[disabled] a.btn {
  pointer-events: none;
}
.btn-default {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.btn-default:focus,
.btn-default.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.btn-default:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active:hover,
.btn-default.active:hover,
.open > .dropdown-toggle.btn-default:hover,
.btn-default:active:focus,
.btn-default.active:focus,
.open > .dropdown-toggle.btn-default:focus,
.btn-default:active.focus,
.btn-default.active.focus,
.open > .dropdown-toggle.btn-default.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  background-image: none;
}
.btn-default.disabled:hover,
.btn-default[disabled]:hover,
fieldset[disabled] .btn-default:hover,
.btn-default.disabled:focus,
.btn-default[disabled]:focus,
fieldset[disabled] .btn-default:focus,
.btn-default.disabled.focus,
.btn-default[disabled].focus,
fieldset[disabled] .btn-default.focus {
  background-color: #fff;
  border-color: #ccc;
}
.btn-default .badge {
  color: #fff;
  background-color: #333;
}
.btn-primary {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary:focus,
.btn-primary.focus {
  color: #fff;
  background-color: #286090;
  border-color: #122b40;
}
.btn-primary:hover {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active:hover,
.btn-primary.active:hover,
.open > .dropdown-toggle.btn-primary:hover,
.btn-primary:active:focus,
.btn-primary.active:focus,
.open > .dropdown-toggle.btn-primary:focus,
.btn-primary:active.focus,
.btn-primary.active.focus,
.open > .dropdown-toggle.btn-primary.focus {
  color: #fff;
  background-color: #204d74;
  border-color: #122b40;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  background-image: none;
}
.btn-primary.disabled:hover,
.btn-primary[disabled]:hover,
fieldset[disabled] .btn-primary:hover,
.btn-primary.disabled:focus,
.btn-primary[disabled]:focus,
fieldset[disabled] .btn-primary:focus,
.btn-primary.disabled.focus,
.btn-primary[disabled].focus,
fieldset[disabled] .btn-primary.focus {
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary .badge {
  color: #337ab7;
  background-color: #fff;
}
.btn-success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success:focus,
.btn-success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.btn-success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active:hover,
.btn-success.active:hover,
.open > .dropdown-toggle.btn-success:hover,
.btn-success:active:focus,
.btn-success.active:focus,
.open > .dropdown-toggle.btn-success:focus,
.btn-success:active.focus,
.btn-success.active.focus,
.open > .dropdown-toggle.btn-success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  background-image: none;
}
.btn-success.disabled:hover,
.btn-success[disabled]:hover,
fieldset[disabled] .btn-success:hover,
.btn-success.disabled:focus,
.btn-success[disabled]:focus,
fieldset[disabled] .btn-success:focus,
.btn-success.disabled.focus,
.btn-success[disabled].focus,
fieldset[disabled] .btn-success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.btn-info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info:focus,
.btn-info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.btn-info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active:hover,
.btn-info.active:hover,
.open > .dropdown-toggle.btn-info:hover,
.btn-info:active:focus,
.btn-info.active:focus,
.open > .dropdown-toggle.btn-info:focus,
.btn-info:active.focus,
.btn-info.active.focus,
.open > .dropdown-toggle.btn-info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  background-image: none;
}
.btn-info.disabled:hover,
.btn-info[disabled]:hover,
fieldset[disabled] .btn-info:hover,
.btn-info.disabled:focus,
.btn-info[disabled]:focus,
fieldset[disabled] .btn-info:focus,
.btn-info.disabled.focus,
.btn-info[disabled].focus,
fieldset[disabled] .btn-info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.btn-warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning:focus,
.btn-warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.btn-warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active:hover,
.btn-warning.active:hover,
.open > .dropdown-toggle.btn-warning:hover,
.btn-warning:active:focus,
.btn-warning.active:focus,
.open > .dropdown-toggle.btn-warning:focus,
.btn-warning:active.focus,
.btn-warning.active.focus,
.open > .dropdown-toggle.btn-warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  background-image: none;
}
.btn-warning.disabled:hover,
.btn-warning[disabled]:hover,
fieldset[disabled] .btn-warning:hover,
.btn-warning.disabled:focus,
.btn-warning[disabled]:focus,
fieldset[disabled] .btn-warning:focus,
.btn-warning.disabled.focus,
.btn-warning[disabled].focus,
fieldset[disabled] .btn-warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.btn-danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger:focus,
.btn-danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.btn-danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active:hover,
.btn-danger.active:hover,
.open > .dropdown-toggle.btn-danger:hover,
.btn-danger:active:focus,
.btn-danger.active:focus,
.open > .dropdown-toggle.btn-danger:focus,
.btn-danger:active.focus,
.btn-danger.active.focus,
.open > .dropdown-toggle.btn-danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  background-image: none;
}
.btn-danger.disabled:hover,
.btn-danger[disabled]:hover,
fieldset[disabled] .btn-danger:hover,
.btn-danger.disabled:focus,
.btn-danger[disabled]:focus,
fieldset[disabled] .btn-danger:focus,
.btn-danger.disabled.focus,
.btn-danger[disabled].focus,
fieldset[disabled] .btn-danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger .badge {
  color: #d9534f;
  background-color: #fff;
}
.btn-link {
  color: #337ab7;
  font-weight: normal;
  border-radius: 0;
}
.btn-link,
.btn-link:active,
.btn-link.active,
.btn-link[disabled],
fieldset[disabled] .btn-link {
  background-color: transparent;
  -webkit-box-shadow: none;
  box-shadow: none;
}
.btn-link,
.btn-link:hover,
.btn-link:focus,
.btn-link:active {
  border-color: transparent;
}
.btn-link:hover,
.btn-link:focus {
  color: #23527c;
  text-decoration: underline;
  background-color: transparent;
}
.btn-link[disabled]:hover,
fieldset[disabled] .btn-link:hover,
.btn-link[disabled]:focus,
fieldset[disabled] .btn-link:focus {
  color: #777777;
  text-decoration: none;
}
.btn-lg,
.btn-group-lg > .btn {
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
.btn-sm,
.btn-group-sm > .btn {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.btn-xs,
.btn-group-xs > .btn {
  padding: 1px 5px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.btn-block {
  display: block;
  width: 100%;
}
.btn-block + .btn-block {
  margin-top: 5px;
}
input[type="submit"].btn-block,
input[type="reset"].btn-block,
input[type="button"].btn-block {
  width: 100%;
}
.fade {
  opacity: 0;
  -webkit-transition: opacity 0.15s linear;
  -o-transition: opacity 0.15s linear;
  transition: opacity 0.15s linear;
}
.fade.in {
  opacity: 1;
}
.collapse {
  display: none;
}
.collapse.in {
  display: block;
}
tr.collapse.in {
  display: table-row;
}
tbody.collapse.in {
  display: table-row-group;
}
.collapsing {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition-property: height, visibility;
  transition-property: height, visibility;
  -webkit-transition-duration: 0.35s;
  transition-duration: 0.35s;
  -webkit-transition-timing-function: ease;
  transition-timing-function: ease;
}
.caret {
  display: inline-block;
  width: 0;
  height: 0;
  margin-left: 2px;
  vertical-align: middle;
  border-top: 4px dashed;
  border-top: 4px solid \9;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
}
.dropup,
.dropdown {
  position: relative;
}
.dropdown-toggle:focus {
  outline: 0;
}
.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  list-style: none;
  font-size: 13px;
  text-align: left;
  background-color: #fff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 2px;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  background-clip: padding-box;
}
.dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
.dropdown-menu .divider {
  height: 1px;
  margin: 8px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333333;
  white-space: nowrap;
}
.dropdown-menu > li > a:hover,
.dropdown-menu > li > a:focus {
  text-decoration: none;
  color: #262626;
  background-color: #f5f5f5;
}
.dropdown-menu > .active > a,
.dropdown-menu > .active > a:hover,
.dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  outline: 0;
  background-color: #337ab7;
}
.dropdown-menu > .disabled > a,
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  color: #777777;
}
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  cursor: not-allowed;
}
.open > .dropdown-menu {
  display: block;
}
.open > a {
  outline: 0;
}
.dropdown-menu-right {
  left: auto;
  right: 0;
}
.dropdown-menu-left {
  left: 0;
  right: auto;
}
.dropdown-header {
  display: block;
  padding: 3px 20px;
  font-size: 12px;
  line-height: 1.42857143;
  color: #777777;
  white-space: nowrap;
}
.dropdown-backdrop {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  z-index: 990;
}
.pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}
.dropup .caret,
.navbar-fixed-bottom .dropdown .caret {
  border-top: 0;
  border-bottom: 4px dashed;
  border-bottom: 4px solid \9;
  content: "";
}
.dropup .dropdown-menu,
.navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 2px;
}
@media (min-width: 541px) {
  .navbar-right .dropdown-menu {
    left: auto;
    right: 0;
  }
  .navbar-right .dropdown-menu-left {
    left: 0;
    right: auto;
  }
}
.btn-group,
.btn-group-vertical {
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.btn-group > .btn,
.btn-group-vertical > .btn {
  position: relative;
  float: left;
}
.btn-group > .btn:hover,
.btn-group-vertical > .btn:hover,
.btn-group > .btn:focus,
.btn-group-vertical > .btn:focus,
.btn-group > .btn:active,
.btn-group-vertical > .btn:active,
.btn-group > .btn.active,
.btn-group-vertical > .btn.active {
  z-index: 2;
}
.btn-group .btn + .btn,
.btn-group .btn + .btn-group,
.btn-group .btn-group + .btn,
.btn-group .btn-group + .btn-group {
  margin-left: -1px;
}
.btn-toolbar {
  margin-left: -5px;
}
.btn-toolbar .btn,
.btn-toolbar .btn-group,
.btn-toolbar .input-group {
  float: left;
}
.btn-toolbar > .btn,
.btn-toolbar > .btn-group,
.btn-toolbar > .input-group {
  margin-left: 5px;
}
.btn-group > .btn:not(:first-child):not(:last-child):not(.dropdown-toggle) {
  border-radius: 0;
}
.btn-group > .btn:first-child {
  margin-left: 0;
}
.btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.btn-group > .btn:last-child:not(:first-child),
.btn-group > .dropdown-toggle:not(:first-child) {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.btn-group > .btn-group {
  float: left;
}
.btn-group > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.btn-group > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.btn-group .dropdown-toggle:active,
.btn-group.open .dropdown-toggle {
  outline: 0;
}
.btn-group > .btn + .dropdown-toggle {
  padding-left: 8px;
  padding-right: 8px;
}
.btn-group > .btn-lg + .dropdown-toggle {
  padding-left: 12px;
  padding-right: 12px;
}
.btn-group.open .dropdown-toggle {
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn-group.open .dropdown-toggle.btn-link {
  -webkit-box-shadow: none;
  box-shadow: none;
}
.btn .caret {
  margin-left: 0;
}
.btn-lg .caret {
  border-width: 5px 5px 0;
  border-bottom-width: 0;
}
.dropup .btn-lg .caret {
  border-width: 0 5px 5px;
}
.btn-group-vertical > .btn,
.btn-group-vertical > .btn-group,
.btn-group-vertical > .btn-group > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
}
.btn-group-vertical > .btn-group > .btn {
  float: none;
}
.btn-group-vertical > .btn + .btn,
.btn-group-vertical > .btn + .btn-group,
.btn-group-vertical > .btn-group + .btn,
.btn-group-vertical > .btn-group + .btn-group {
  margin-top: -1px;
  margin-left: 0;
}
.btn-group-vertical > .btn:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.btn-group-vertical > .btn:first-child:not(:last-child) {
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn:last-child:not(:first-child) {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
.btn-group-vertical > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.btn-group-justified {
  display: table;
  width: 100%;
  table-layout: fixed;
  border-collapse: separate;
}
.btn-group-justified > .btn,
.btn-group-justified > .btn-group {
  float: none;
  display: table-cell;
  width: 1%;
}
.btn-group-justified > .btn-group .btn {
  width: 100%;
}
.btn-group-justified > .btn-group .dropdown-menu {
  left: auto;
}
[data-toggle="buttons"] > .btn input[type="radio"],
[data-toggle="buttons"] > .btn-group > .btn input[type="radio"],
[data-toggle="buttons"] > .btn input[type="checkbox"],
[data-toggle="buttons"] > .btn-group > .btn input[type="checkbox"] {
  position: absolute;
  clip: rect(0, 0, 0, 0);
  pointer-events: none;
}
.input-group {
  position: relative;
  display: table;
  border-collapse: separate;
}
.input-group[class*="col-"] {
  float: none;
  padding-left: 0;
  padding-right: 0;
}
.input-group .form-control {
  position: relative;
  z-index: 2;
  float: left;
  width: 100%;
  margin-bottom: 0;
}
.input-group .form-control:focus {
  z-index: 3;
}
.input-group-lg > .form-control,
.input-group-lg > .input-group-addon,
.input-group-lg > .input-group-btn > .btn {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
select.input-group-lg > .form-control,
select.input-group-lg > .input-group-addon,
select.input-group-lg > .input-group-btn > .btn {
  height: 45px;
  line-height: 45px;
}
textarea.input-group-lg > .form-control,
textarea.input-group-lg > .input-group-addon,
textarea.input-group-lg > .input-group-btn > .btn,
select[multiple].input-group-lg > .form-control,
select[multiple].input-group-lg > .input-group-addon,
select[multiple].input-group-lg > .input-group-btn > .btn {
  height: auto;
}
.input-group-sm > .form-control,
.input-group-sm > .input-group-addon,
.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
select.input-group-sm > .form-control,
select.input-group-sm > .input-group-addon,
select.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  line-height: 30px;
}
textarea.input-group-sm > .form-control,
textarea.input-group-sm > .input-group-addon,
textarea.input-group-sm > .input-group-btn > .btn,
select[multiple].input-group-sm > .form-control,
select[multiple].input-group-sm > .input-group-addon,
select[multiple].input-group-sm > .input-group-btn > .btn {
  height: auto;
}
.input-group-addon,
.input-group-btn,
.input-group .form-control {
  display: table-cell;
}
.input-group-addon:not(:first-child):not(:last-child),
.input-group-btn:not(:first-child):not(:last-child),
.input-group .form-control:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.input-group-addon,
.input-group-btn {
  width: 1%;
  white-space: nowrap;
  vertical-align: middle;
}
.input-group-addon {
  padding: 6px 12px;
  font-size: 13px;
  font-weight: normal;
  line-height: 1;
  color: #555555;
  text-align: center;
  background-color: #eeeeee;
  border: 1px solid #ccc;
  border-radius: 2px;
}
.input-group-addon.input-sm {
  padding: 5px 10px;
  font-size: 12px;
  border-radius: 1px;
}
.input-group-addon.input-lg {
  padding: 10px 16px;
  font-size: 17px;
  border-radius: 3px;
}
.input-group-addon input[type="radio"],
.input-group-addon input[type="checkbox"] {
  margin-top: 0;
}
.input-group .form-control:first-child,
.input-group-addon:first-child,
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group > .btn,
.input-group-btn:first-child > .dropdown-toggle,
.input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle),
.input-group-btn:last-child > .btn-group:not(:last-child) > .btn {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.input-group-addon:first-child {
  border-right: 0;
}
.input-group .form-control:last-child,
.input-group-addon:last-child,
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group > .btn,
.input-group-btn:last-child > .dropdown-toggle,
.input-group-btn:first-child > .btn:not(:first-child),
.input-group-btn:first-child > .btn-group:not(:first-child) > .btn {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.input-group-addon:last-child {
  border-left: 0;
}
.input-group-btn {
  position: relative;
  font-size: 0;
  white-space: nowrap;
}
.input-group-btn > .btn {
  position: relative;
}
.input-group-btn > .btn + .btn {
  margin-left: -1px;
}
.input-group-btn > .btn:hover,
.input-group-btn > .btn:focus,
.input-group-btn > .btn:active {
  z-index: 2;
}
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group {
  margin-right: -1px;
}
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group {
  z-index: 2;
  margin-left: -1px;
}
.nav {
  margin-bottom: 0;
  padding-left: 0;
  list-style: none;
}
.nav > li {
  position: relative;
  display: block;
}
.nav > li > a {
  position: relative;
  display: block;
  padding: 10px 15px;
}
.nav > li > a:hover,
.nav > li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.nav > li.disabled > a {
  color: #777777;
}
.nav > li.disabled > a:hover,
.nav > li.disabled > a:focus {
  color: #777777;
  text-decoration: none;
  background-color: transparent;
  cursor: not-allowed;
}
.nav .open > a,
.nav .open > a:hover,
.nav .open > a:focus {
  background-color: #eeeeee;
  border-color: #337ab7;
}
.nav .nav-divider {
  height: 1px;
  margin: 8px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.nav > li > a > img {
  max-width: none;
}
.nav-tabs {
  border-bottom: 1px solid #ddd;
}
.nav-tabs > li {
  float: left;
  margin-bottom: -1px;
}
.nav-tabs > li > a {
  margin-right: 2px;
  line-height: 1.42857143;
  border: 1px solid transparent;
  border-radius: 2px 2px 0 0;
}
.nav-tabs > li > a:hover {
  border-color: #eeeeee #eeeeee #ddd;
}
.nav-tabs > li.active > a,
.nav-tabs > li.active > a:hover,
.nav-tabs > li.active > a:focus {
  color: #555555;
  background-color: #fff;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
  cursor: default;
}
.nav-tabs.nav-justified {
  width: 100%;
  border-bottom: 0;
}
.nav-tabs.nav-justified > li {
  float: none;
}
.nav-tabs.nav-justified > li > a {
  text-align: center;
  margin-bottom: 5px;
}
.nav-tabs.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-tabs.nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs.nav-justified > li > a {
  margin-right: 0;
  border-radius: 2px;
}
.nav-tabs.nav-justified > .active > a,
.nav-tabs.nav-justified > .active > a:hover,
.nav-tabs.nav-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 2px 2px 0 0;
  }
  .nav-tabs.nav-justified > .active > a,
  .nav-tabs.nav-justified > .active > a:hover,
  .nav-tabs.nav-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.nav-pills > li {
  float: left;
}
.nav-pills > li > a {
  border-radius: 2px;
}
.nav-pills > li + li {
  margin-left: 2px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #fff;
  background-color: #337ab7;
}
.nav-stacked > li {
  float: none;
}
.nav-stacked > li + li {
  margin-top: 2px;
  margin-left: 0;
}
.nav-justified {
  width: 100%;
}
.nav-justified > li {
  float: none;
}
.nav-justified > li > a {
  text-align: center;
  margin-bottom: 5px;
}
.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs-justified {
  border-bottom: 0;
}
.nav-tabs-justified > li > a {
  margin-right: 0;
  border-radius: 2px;
}
.nav-tabs-justified > .active > a,
.nav-tabs-justified > .active > a:hover,
.nav-tabs-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 2px 2px 0 0;
  }
  .nav-tabs-justified > .active > a,
  .nav-tabs-justified > .active > a:hover,
  .nav-tabs-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.tab-content > .tab-pane {
  display: none;
}
.tab-content > .active {
  display: block;
}
.nav-tabs .dropdown-menu {
  margin-top: -1px;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.navbar {
  position: relative;
  min-height: 30px;
  margin-bottom: 18px;
  border: 1px solid transparent;
}
@media (min-width: 541px) {
  .navbar {
    border-radius: 2px;
  }
}
@media (min-width: 541px) {
  .navbar-header {
    float: left;
  }
}
.navbar-collapse {
  overflow-x: visible;
  padding-right: 0px;
  padding-left: 0px;
  border-top: 1px solid transparent;
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
  -webkit-overflow-scrolling: touch;
}
.navbar-collapse.in {
  overflow-y: auto;
}
@media (min-width: 541px) {
  .navbar-collapse {
    width: auto;
    border-top: 0;
    box-shadow: none;
  }
  .navbar-collapse.collapse {
    display: block !important;
    height: auto !important;
    padding-bottom: 0;
    overflow: visible !important;
  }
  .navbar-collapse.in {
    overflow-y: visible;
  }
  .navbar-fixed-top .navbar-collapse,
  .navbar-static-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    padding-left: 0;
    padding-right: 0;
  }
}
.navbar-fixed-top .navbar-collapse,
.navbar-fixed-bottom .navbar-collapse {
  max-height: 340px;
}
@media (max-device-width: 540px) and (orientation: landscape) {
  .navbar-fixed-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    max-height: 200px;
  }
}
.container > .navbar-header,
.container-fluid > .navbar-header,
.container > .navbar-collapse,
.container-fluid > .navbar-collapse {
  margin-right: 0px;
  margin-left: 0px;
}
@media (min-width: 541px) {
  .container > .navbar-header,
  .container-fluid > .navbar-header,
  .container > .navbar-collapse,
  .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: 0;
  }
}
.navbar-static-top {
  z-index: 1000;
  border-width: 0 0 1px;
}
@media (min-width: 541px) {
  .navbar-static-top {
    border-radius: 0;
  }
}
.navbar-fixed-top,
.navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
}
@media (min-width: 541px) {
  .navbar-fixed-top,
  .navbar-fixed-bottom {
    border-radius: 0;
  }
}
.navbar-fixed-top {
  top: 0;
  border-width: 0 0 1px;
}
.navbar-fixed-bottom {
  bottom: 0;
  margin-bottom: 0;
  border-width: 1px 0 0;
}
.navbar-brand {
  float: left;
  padding: 6px 0px;
  font-size: 17px;
  line-height: 18px;
  height: 30px;
}
.navbar-brand:hover,
.navbar-brand:focus {
  text-decoration: none;
}
.navbar-brand > img {
  display: block;
}
@media (min-width: 541px) {
  .navbar > .container .navbar-brand,
  .navbar > .container-fluid .navbar-brand {
    margin-left: 0px;
  }
}
.navbar-toggle {
  position: relative;
  float: right;
  margin-right: 0px;
  padding: 9px 10px;
  margin-top: -2px;
  margin-bottom: -2px;
  background-color: transparent;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 2px;
}
.navbar-toggle:focus {
  outline: 0;
}
.navbar-toggle .icon-bar {
  display: block;
  width: 22px;
  height: 2px;
  border-radius: 1px;
}
.navbar-toggle .icon-bar + .icon-bar {
  margin-top: 4px;
}
@media (min-width: 541px) {
  .navbar-toggle {
    display: none;
  }
}
.navbar-nav {
  margin: 3px 0px;
}
.navbar-nav > li > a {
  padding-top: 10px;
  padding-bottom: 10px;
  line-height: 18px;
}
@media (max-width: 540px) {
  .navbar-nav .open .dropdown-menu {
    position: static;
    float: none;
    width: auto;
    margin-top: 0;
    background-color: transparent;
    border: 0;
    box-shadow: none;
  }
  .navbar-nav .open .dropdown-menu > li > a,
  .navbar-nav .open .dropdown-menu .dropdown-header {
    padding: 5px 15px 5px 25px;
  }
  .navbar-nav .open .dropdown-menu > li > a {
    line-height: 18px;
  }
  .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-nav .open .dropdown-menu > li > a:focus {
    background-image: none;
  }
}
@media (min-width: 541px) {
  .navbar-nav {
    float: left;
    margin: 0;
  }
  .navbar-nav > li {
    float: left;
  }
  .navbar-nav > li > a {
    padding-top: 6px;
    padding-bottom: 6px;
  }
}
.navbar-form {
  margin-left: 0px;
  margin-right: 0px;
  padding: 10px 0px;
  border-top: 1px solid transparent;
  border-bottom: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  margin-top: -1px;
  margin-bottom: -1px;
}
@media (min-width: 768px) {
  .navbar-form .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .navbar-form .form-control-static {
    display: inline-block;
  }
  .navbar-form .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .navbar-form .input-group .input-group-addon,
  .navbar-form .input-group .input-group-btn,
  .navbar-form .input-group .form-control {
    width: auto;
  }
  .navbar-form .input-group > .form-control {
    width: 100%;
  }
  .navbar-form .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio,
  .navbar-form .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio label,
  .navbar-form .checkbox label {
    padding-left: 0;
  }
  .navbar-form .radio input[type="radio"],
  .navbar-form .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .navbar-form .has-feedback .form-control-feedback {
    top: 0;
  }
}
@media (max-width: 540px) {
  .navbar-form .form-group {
    margin-bottom: 5px;
  }
  .navbar-form .form-group:last-child {
    margin-bottom: 0;
  }
}
@media (min-width: 541px) {
  .navbar-form {
    width: auto;
    border: 0;
    margin-left: 0;
    margin-right: 0;
    padding-top: 0;
    padding-bottom: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
  }
}
.navbar-nav > li > .dropdown-menu {
  margin-top: 0;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.navbar-fixed-bottom .navbar-nav > li > .dropdown-menu {
  margin-bottom: 0;
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.navbar-btn {
  margin-top: -1px;
  margin-bottom: -1px;
}
.navbar-btn.btn-sm {
  margin-top: 0px;
  margin-bottom: 0px;
}
.navbar-btn.btn-xs {
  margin-top: 4px;
  margin-bottom: 4px;
}
.navbar-text {
  margin-top: 6px;
  margin-bottom: 6px;
}
@media (min-width: 541px) {
  .navbar-text {
    float: left;
    margin-left: 0px;
    margin-right: 0px;
  }
}
@media (min-width: 541px) {
  .navbar-left {
    float: left !important;
    float: left;
  }
  .navbar-right {
    float: right !important;
    float: right;
    margin-right: 0px;
  }
  .navbar-right ~ .navbar-right {
    margin-right: 0;
  }
}
.navbar-default {
  background-color: #f8f8f8;
  border-color: #e7e7e7;
}
.navbar-default .navbar-brand {
  color: #777;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
  color: #5e5e5e;
  background-color: transparent;
}
.navbar-default .navbar-text {
  color: #777;
}
.navbar-default .navbar-nav > li > a {
  color: #777;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
  color: #333;
  background-color: transparent;
}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
.navbar-default .navbar-nav > .disabled > a,
.navbar-default .navbar-nav > .disabled > a:hover,
.navbar-default .navbar-nav > .disabled > a:focus {
  color: #ccc;
  background-color: transparent;
}
.navbar-default .navbar-toggle {
  border-color: #ddd;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
  background-color: #ddd;
}
.navbar-default .navbar-toggle .icon-bar {
  background-color: #888;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
  border-color: #e7e7e7;
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {
  background-color: #e7e7e7;
  color: #555;
}
@media (max-width: 540px) {
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {
    color: #777;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #333;
    background-color: transparent;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #555;
    background-color: #e7e7e7;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #ccc;
    background-color: transparent;
  }
}
.navbar-default .navbar-link {
  color: #777;
}
.navbar-default .navbar-link:hover {
  color: #333;
}
.navbar-default .btn-link {
  color: #777;
}
.navbar-default .btn-link:hover,
.navbar-default .btn-link:focus {
  color: #333;
}
.navbar-default .btn-link[disabled]:hover,
fieldset[disabled] .navbar-default .btn-link:hover,
.navbar-default .btn-link[disabled]:focus,
fieldset[disabled] .navbar-default .btn-link:focus {
  color: #ccc;
}
.navbar-inverse {
  background-color: #222;
  border-color: #080808;
}
.navbar-inverse .navbar-brand {
  color: #9d9d9d;
}
.navbar-inverse .navbar-brand:hover,
.navbar-inverse .navbar-brand:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-text {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a:hover,
.navbar-inverse .navbar-nav > li > a:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-nav > .active > a,
.navbar-inverse .navbar-nav > .active > a:hover,
.navbar-inverse .navbar-nav > .active > a:focus {
  color: #fff;
  background-color: #080808;
}
.navbar-inverse .navbar-nav > .disabled > a,
.navbar-inverse .navbar-nav > .disabled > a:hover,
.navbar-inverse .navbar-nav > .disabled > a:focus {
  color: #444;
  background-color: transparent;
}
.navbar-inverse .navbar-toggle {
  border-color: #333;
}
.navbar-inverse .navbar-toggle:hover,
.navbar-inverse .navbar-toggle:focus {
  background-color: #333;
}
.navbar-inverse .navbar-toggle .icon-bar {
  background-color: #fff;
}
.navbar-inverse .navbar-collapse,
.navbar-inverse .navbar-form {
  border-color: #101010;
}
.navbar-inverse .navbar-nav > .open > a,
.navbar-inverse .navbar-nav > .open > a:hover,
.navbar-inverse .navbar-nav > .open > a:focus {
  background-color: #080808;
  color: #fff;
}
@media (max-width: 540px) {
  .navbar-inverse .navbar-nav .open .dropdown-menu > .dropdown-header {
    border-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu .divider {
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
    color: #9d9d9d;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #fff;
    background-color: transparent;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #444;
    background-color: transparent;
  }
}
.navbar-inverse .navbar-link {
  color: #9d9d9d;
}
.navbar-inverse .navbar-link:hover {
  color: #fff;
}
.navbar-inverse .btn-link {
  color: #9d9d9d;
}
.navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link:focus {
  color: #fff;
}
.navbar-inverse .btn-link[disabled]:hover,
fieldset[disabled] .navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link[disabled]:focus,
fieldset[disabled] .navbar-inverse .btn-link:focus {
  color: #444;
}
.breadcrumb {
  padding: 8px 15px;
  margin-bottom: 18px;
  list-style: none;
  background-color: #f5f5f5;
  border-radius: 2px;
}
.breadcrumb > li {
  display: inline-block;
}
.breadcrumb > li + li:before {
  content: "/\00a0";
  padding: 0 5px;
  color: #5e5e5e;
}
.breadcrumb > .active {
  color: #777777;
}
.pagination {
  display: inline-block;
  padding-left: 0;
  margin: 18px 0;
  border-radius: 2px;
}
.pagination > li {
  display: inline;
}
.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 6px 12px;
  line-height: 1.42857143;
  text-decoration: none;
  color: #337ab7;
  background-color: #fff;
  border: 1px solid #ddd;
  margin-left: -1px;
}
.pagination > li:first-child > a,
.pagination > li:first-child > span {
  margin-left: 0;
  border-bottom-left-radius: 2px;
  border-top-left-radius: 2px;
}
.pagination > li:last-child > a,
.pagination > li:last-child > span {
  border-bottom-right-radius: 2px;
  border-top-right-radius: 2px;
}
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  z-index: 2;
  color: #23527c;
  background-color: #eeeeee;
  border-color: #ddd;
}
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus {
  z-index: 3;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
  cursor: default;
}
.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #777777;
  background-color: #fff;
  border-color: #ddd;
  cursor: not-allowed;
}
.pagination-lg > li > a,
.pagination-lg > li > span {
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
}
.pagination-lg > li:first-child > a,
.pagination-lg > li:first-child > span {
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
.pagination-lg > li:last-child > a,
.pagination-lg > li:last-child > span {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 3px;
}
.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-bottom-left-radius: 1px;
  border-top-left-radius: 1px;
}
.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-bottom-right-radius: 1px;
  border-top-right-radius: 1px;
}
.pager {
  padding-left: 0;
  margin: 18px 0;
  list-style: none;
  text-align: center;
}
.pager li {
  display: inline;
}
.pager li > a,
.pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 15px;
}
.pager li > a:hover,
.pager li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.pager .next > a,
.pager .next > span {
  float: right;
}
.pager .previous > a,
.pager .previous > span {
  float: left;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #777777;
  background-color: #fff;
  cursor: not-allowed;
}
.label {
  display: inline;
  padding: .2em .6em .3em;
  font-size: 75%;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: .25em;
}
a.label:hover,
a.label:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.label:empty {
  display: none;
}
.btn .label {
  position: relative;
  top: -1px;
}
.label-default {
  background-color: #777777;
}
.label-default[href]:hover,
.label-default[href]:focus {
  background-color: #5e5e5e;
}
.label-primary {
  background-color: #337ab7;
}
.label-primary[href]:hover,
.label-primary[href]:focus {
  background-color: #286090;
}
.label-success {
  background-color: #5cb85c;
}
.label-success[href]:hover,
.label-success[href]:focus {
  background-color: #449d44;
}
.label-info {
  background-color: #5bc0de;
}
.label-info[href]:hover,
.label-info[href]:focus {
  background-color: #31b0d5;
}
.label-warning {
  background-color: #f0ad4e;
}
.label-warning[href]:hover,
.label-warning[href]:focus {
  background-color: #ec971f;
}
.label-danger {
  background-color: #d9534f;
}
.label-danger[href]:hover,
.label-danger[href]:focus {
  background-color: #c9302c;
}
.badge {
  display: inline-block;
  min-width: 10px;
  padding: 3px 7px;
  font-size: 12px;
  font-weight: bold;
  color: #fff;
  line-height: 1;
  vertical-align: middle;
  white-space: nowrap;
  text-align: center;
  background-color: #777777;
  border-radius: 10px;
}
.badge:empty {
  display: none;
}
.btn .badge {
  position: relative;
  top: -1px;
}
.btn-xs .badge,
.btn-group-xs > .btn .badge {
  top: 0;
  padding: 1px 5px;
}
a.badge:hover,
a.badge:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.list-group-item.active > .badge,
.nav-pills > .active > a > .badge {
  color: #337ab7;
  background-color: #fff;
}
.list-group-item > .badge {
  float: right;
}
.list-group-item > .badge + .badge {
  margin-right: 5px;
}
.nav-pills > li > a > .badge {
  margin-left: 3px;
}
.jumbotron {
  padding-top: 30px;
  padding-bottom: 30px;
  margin-bottom: 30px;
  color: inherit;
  background-color: #eeeeee;
}
.jumbotron h1,
.jumbotron .h1 {
  color: inherit;
}
.jumbotron p {
  margin-bottom: 15px;
  font-size: 20px;
  font-weight: 200;
}
.jumbotron > hr {
  border-top-color: #d5d5d5;
}
.container .jumbotron,
.container-fluid .jumbotron {
  border-radius: 3px;
  padding-left: 0px;
  padding-right: 0px;
}
.jumbotron .container {
  max-width: 100%;
}
@media screen and (min-width: 768px) {
  .jumbotron {
    padding-top: 48px;
    padding-bottom: 48px;
  }
  .container .jumbotron,
  .container-fluid .jumbotron {
    padding-left: 60px;
    padding-right: 60px;
  }
  .jumbotron h1,
  .jumbotron .h1 {
    font-size: 59px;
  }
}
.thumbnail {
  display: block;
  padding: 4px;
  margin-bottom: 18px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 2px;
  -webkit-transition: border 0.2s ease-in-out;
  -o-transition: border 0.2s ease-in-out;
  transition: border 0.2s ease-in-out;
}
.thumbnail > img,
.thumbnail a > img {
  margin-left: auto;
  margin-right: auto;
}
a.thumbnail:hover,
a.thumbnail:focus,
a.thumbnail.active {
  border-color: #337ab7;
}
.thumbnail .caption {
  padding: 9px;
  color: #000;
}
.alert {
  padding: 15px;
  margin-bottom: 18px;
  border: 1px solid transparent;
  border-radius: 2px;
}
.alert h4 {
  margin-top: 0;
  color: inherit;
}
.alert .alert-link {
  font-weight: bold;
}
.alert > p,
.alert > ul {
  margin-bottom: 0;
}
.alert > p + p {
  margin-top: 5px;
}
.alert-dismissable,
.alert-dismissible {
  padding-right: 35px;
}
.alert-dismissable .close,
.alert-dismissible .close {
  position: relative;
  top: -2px;
  right: -21px;
  color: inherit;
}
.alert-success {
  background-color: #dff0d8;
  border-color: #d6e9c6;
  color: #3c763d;
}
.alert-success hr {
  border-top-color: #c9e2b3;
}
.alert-success .alert-link {
  color: #2b542c;
}
.alert-info {
  background-color: #d9edf7;
  border-color: #bce8f1;
  color: #31708f;
}
.alert-info hr {
  border-top-color: #a6e1ec;
}
.alert-info .alert-link {
  color: #245269;
}
.alert-warning {
  background-color: #fcf8e3;
  border-color: #faebcc;
  color: #8a6d3b;
}
.alert-warning hr {
  border-top-color: #f7e1b5;
}
.alert-warning .alert-link {
  color: #66512c;
}
.alert-danger {
  background-color: #f2dede;
  border-color: #ebccd1;
  color: #a94442;
}
.alert-danger hr {
  border-top-color: #e4b9c0;
}
.alert-danger .alert-link {
  color: #843534;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.progress {
  overflow: hidden;
  height: 18px;
  margin-bottom: 18px;
  background-color: #f5f5f5;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}
.progress-bar {
  float: left;
  width: 0%;
  height: 100%;
  font-size: 12px;
  line-height: 18px;
  color: #fff;
  text-align: center;
  background-color: #337ab7;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-transition: width 0.6s ease;
  -o-transition: width 0.6s ease;
  transition: width 0.6s ease;
}
.progress-striped .progress-bar,
.progress-bar-striped {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
}
.progress.active .progress-bar,
.progress-bar.active {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
  -o-animation: progress-bar-stripes 2s linear infinite;
  animation: progress-bar-stripes 2s linear infinite;
}
.progress-bar-success {
  background-color: #5cb85c;
}
.progress-striped .progress-bar-success {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-info {
  background-color: #5bc0de;
}
.progress-striped .progress-bar-info {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-warning {
  background-color: #f0ad4e;
}
.progress-striped .progress-bar-warning {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-danger {
  background-color: #d9534f;
}
.progress-striped .progress-bar-danger {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.media {
  margin-top: 15px;
}
.media:first-child {
  margin-top: 0;
}
.media,
.media-body {
  zoom: 1;
  overflow: hidden;
}
.media-body {
  width: 10000px;
}
.media-object {
  display: block;
}
.media-object.img-thumbnail {
  max-width: none;
}
.media-right,
.media > .pull-right {
  padding-left: 10px;
}
.media-left,
.media > .pull-left {
  padding-right: 10px;
}
.media-left,
.media-right,
.media-body {
  display: table-cell;
  vertical-align: top;
}
.media-middle {
  vertical-align: middle;
}
.media-bottom {
  vertical-align: bottom;
}
.media-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.media-list {
  padding-left: 0;
  list-style: none;
}
.list-group {
  margin-bottom: 20px;
  padding-left: 0;
}
.list-group-item {
  position: relative;
  display: block;
  padding: 10px 15px;
  margin-bottom: -1px;
  background-color: #fff;
  border: 1px solid #ddd;
}
.list-group-item:first-child {
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
}
.list-group-item:last-child {
  margin-bottom: 0;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
a.list-group-item,
button.list-group-item {
  color: #555;
}
a.list-group-item .list-group-item-heading,
button.list-group-item .list-group-item-heading {
  color: #333;
}
a.list-group-item:hover,
button.list-group-item:hover,
a.list-group-item:focus,
button.list-group-item:focus {
  text-decoration: none;
  color: #555;
  background-color: #f5f5f5;
}
button.list-group-item {
  width: 100%;
  text-align: left;
}
.list-group-item.disabled,
.list-group-item.disabled:hover,
.list-group-item.disabled:focus {
  background-color: #eeeeee;
  color: #777777;
  cursor: not-allowed;
}
.list-group-item.disabled .list-group-item-heading,
.list-group-item.disabled:hover .list-group-item-heading,
.list-group-item.disabled:focus .list-group-item-heading {
  color: inherit;
}
.list-group-item.disabled .list-group-item-text,
.list-group-item.disabled:hover .list-group-item-text,
.list-group-item.disabled:focus .list-group-item-text {
  color: #777777;
}
.list-group-item.active,
.list-group-item.active:hover,
.list-group-item.active:focus {
  z-index: 2;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.list-group-item.active .list-group-item-heading,
.list-group-item.active:hover .list-group-item-heading,
.list-group-item.active:focus .list-group-item-heading,
.list-group-item.active .list-group-item-heading > small,
.list-group-item.active:hover .list-group-item-heading > small,
.list-group-item.active:focus .list-group-item-heading > small,
.list-group-item.active .list-group-item-heading > .small,
.list-group-item.active:hover .list-group-item-heading > .small,
.list-group-item.active:focus .list-group-item-heading > .small {
  color: inherit;
}
.list-group-item.active .list-group-item-text,
.list-group-item.active:hover .list-group-item-text,
.list-group-item.active:focus .list-group-item-text {
  color: #c7ddef;
}
.list-group-item-success {
  color: #3c763d;
  background-color: #dff0d8;
}
a.list-group-item-success,
button.list-group-item-success {
  color: #3c763d;
}
a.list-group-item-success .list-group-item-heading,
button.list-group-item-success .list-group-item-heading {
  color: inherit;
}
a.list-group-item-success:hover,
button.list-group-item-success:hover,
a.list-group-item-success:focus,
button.list-group-item-success:focus {
  color: #3c763d;
  background-color: #d0e9c6;
}
a.list-group-item-success.active,
button.list-group-item-success.active,
a.list-group-item-success.active:hover,
button.list-group-item-success.active:hover,
a.list-group-item-success.active:focus,
button.list-group-item-success.active:focus {
  color: #fff;
  background-color: #3c763d;
  border-color: #3c763d;
}
.list-group-item-info {
  color: #31708f;
  background-color: #d9edf7;
}
a.list-group-item-info,
button.list-group-item-info {
  color: #31708f;
}
a.list-group-item-info .list-group-item-heading,
button.list-group-item-info .list-group-item-heading {
  color: inherit;
}
a.list-group-item-info:hover,
button.list-group-item-info:hover,
a.list-group-item-info:focus,
button.list-group-item-info:focus {
  color: #31708f;
  background-color: #c4e3f3;
}
a.list-group-item-info.active,
button.list-group-item-info.active,
a.list-group-item-info.active:hover,
button.list-group-item-info.active:hover,
a.list-group-item-info.active:focus,
button.list-group-item-info.active:focus {
  color: #fff;
  background-color: #31708f;
  border-color: #31708f;
}
.list-group-item-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
}
a.list-group-item-warning,
button.list-group-item-warning {
  color: #8a6d3b;
}
a.list-group-item-warning .list-group-item-heading,
button.list-group-item-warning .list-group-item-heading {
  color: inherit;
}
a.list-group-item-warning:hover,
button.list-group-item-warning:hover,
a.list-group-item-warning:focus,
button.list-group-item-warning:focus {
  color: #8a6d3b;
  background-color: #faf2cc;
}
a.list-group-item-warning.active,
button.list-group-item-warning.active,
a.list-group-item-warning.active:hover,
button.list-group-item-warning.active:hover,
a.list-group-item-warning.active:focus,
button.list-group-item-warning.active:focus {
  color: #fff;
  background-color: #8a6d3b;
  border-color: #8a6d3b;
}
.list-group-item-danger {
  color: #a94442;
  background-color: #f2dede;
}
a.list-group-item-danger,
button.list-group-item-danger {
  color: #a94442;
}
a.list-group-item-danger .list-group-item-heading,
button.list-group-item-danger .list-group-item-heading {
  color: inherit;
}
a.list-group-item-danger:hover,
button.list-group-item-danger:hover,
a.list-group-item-danger:focus,
button.list-group-item-danger:focus {
  color: #a94442;
  background-color: #ebcccc;
}
a.list-group-item-danger.active,
button.list-group-item-danger.active,
a.list-group-item-danger.active:hover,
button.list-group-item-danger.active:hover,
a.list-group-item-danger.active:focus,
button.list-group-item-danger.active:focus {
  color: #fff;
  background-color: #a94442;
  border-color: #a94442;
}
.list-group-item-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.list-group-item-text {
  margin-bottom: 0;
  line-height: 1.3;
}
.panel {
  margin-bottom: 18px;
  background-color: #fff;
  border: 1px solid transparent;
  border-radius: 2px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
}
.panel-body {
  padding: 15px;
}
.panel-heading {
  padding: 10px 15px;
  border-bottom: 1px solid transparent;
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel-heading > .dropdown .dropdown-toggle {
  color: inherit;
}
.panel-title {
  margin-top: 0;
  margin-bottom: 0;
  font-size: 15px;
  color: inherit;
}
.panel-title > a,
.panel-title > small,
.panel-title > .small,
.panel-title > small > a,
.panel-title > .small > a {
  color: inherit;
}
.panel-footer {
  padding: 10px 15px;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .list-group,
.panel > .panel-collapse > .list-group {
  margin-bottom: 0;
}
.panel > .list-group .list-group-item,
.panel > .panel-collapse > .list-group .list-group-item {
  border-width: 1px 0;
  border-radius: 0;
}
.panel > .list-group:first-child .list-group-item:first-child,
.panel > .panel-collapse > .list-group:first-child .list-group-item:first-child {
  border-top: 0;
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel > .list-group:last-child .list-group-item:last-child,
.panel > .panel-collapse > .list-group:last-child .list-group-item:last-child {
  border-bottom: 0;
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .panel-heading + .panel-collapse > .list-group .list-group-item:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.panel-heading + .list-group .list-group-item:first-child {
  border-top-width: 0;
}
.list-group + .panel-footer {
  border-top-width: 0;
}
.panel > .table,
.panel > .table-responsive > .table,
.panel > .panel-collapse > .table {
  margin-bottom: 0;
}
.panel > .table caption,
.panel > .table-responsive > .table caption,
.panel > .panel-collapse > .table caption {
  padding-left: 15px;
  padding-right: 15px;
}
.panel > .table:first-child,
.panel > .table-responsive:first-child > .table:first-child {
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child {
  border-top-left-radius: 1px;
  border-top-right-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:first-child {
  border-top-left-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:last-child {
  border-top-right-radius: 1px;
}
.panel > .table:last-child,
.panel > .table-responsive:last-child > .table:last-child {
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child {
  border-bottom-left-radius: 1px;
  border-bottom-right-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:first-child {
  border-bottom-left-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:last-child {
  border-bottom-right-radius: 1px;
}
.panel > .panel-body + .table,
.panel > .panel-body + .table-responsive,
.panel > .table + .panel-body,
.panel > .table-responsive + .panel-body {
  border-top: 1px solid #ddd;
}
.panel > .table > tbody:first-child > tr:first-child th,
.panel > .table > tbody:first-child > tr:first-child td {
  border-top: 0;
}
.panel > .table-bordered,
.panel > .table-responsive > .table-bordered {
  border: 0;
}
.panel > .table-bordered > thead > tr > th:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:first-child,
.panel > .table-bordered > tbody > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:first-child,
.panel > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-bordered > thead > tr > td:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:first-child,
.panel > .table-bordered > tbody > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:first-child,
.panel > .table-bordered > tfoot > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:first-child {
  border-left: 0;
}
.panel > .table-bordered > thead > tr > th:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:last-child,
.panel > .table-bordered > tbody > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:last-child,
.panel > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-bordered > thead > tr > td:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:last-child,
.panel > .table-bordered > tbody > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:last-child,
.panel > .table-bordered > tfoot > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:last-child {
  border-right: 0;
}
.panel > .table-bordered > thead > tr:first-child > td,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > td,
.panel > .table-bordered > tbody > tr:first-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > td,
.panel > .table-bordered > thead > tr:first-child > th,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > th,
.panel > .table-bordered > tbody > tr:first-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > th {
  border-bottom: 0;
}
.panel > .table-bordered > tbody > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > td,
.panel > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-bordered > tbody > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > th,
.panel > .table-bordered > tfoot > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > th {
  border-bottom: 0;
}
.panel > .table-responsive {
  border: 0;
  margin-bottom: 0;
}
.panel-group {
  margin-bottom: 18px;
}
.panel-group .panel {
  margin-bottom: 0;
  border-radius: 2px;
}
.panel-group .panel + .panel {
  margin-top: 5px;
}
.panel-group .panel-heading {
  border-bottom: 0;
}
.panel-group .panel-heading + .panel-collapse > .panel-body,
.panel-group .panel-heading + .panel-collapse > .list-group {
  border-top: 1px solid #ddd;
}
.panel-group .panel-footer {
  border-top: 0;
}
.panel-group .panel-footer + .panel-collapse .panel-body {
  border-bottom: 1px solid #ddd;
}
.panel-default {
  border-color: #ddd;
}
.panel-default > .panel-heading {
  color: #333333;
  background-color: #f5f5f5;
  border-color: #ddd;
}
.panel-default > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ddd;
}
.panel-default > .panel-heading .badge {
  color: #f5f5f5;
  background-color: #333333;
}
.panel-default > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ddd;
}
.panel-primary {
  border-color: #337ab7;
}
.panel-primary > .panel-heading {
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.panel-primary > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #337ab7;
}
.panel-primary > .panel-heading .badge {
  color: #337ab7;
  background-color: #fff;
}
.panel-primary > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #337ab7;
}
.panel-success {
  border-color: #d6e9c6;
}
.panel-success > .panel-heading {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.panel-success > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #d6e9c6;
}
.panel-success > .panel-heading .badge {
  color: #dff0d8;
  background-color: #3c763d;
}
.panel-success > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #d6e9c6;
}
.panel-info {
  border-color: #bce8f1;
}
.panel-info > .panel-heading {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.panel-info > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #bce8f1;
}
.panel-info > .panel-heading .badge {
  color: #d9edf7;
  background-color: #31708f;
}
.panel-info > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #bce8f1;
}
.panel-warning {
  border-color: #faebcc;
}
.panel-warning > .panel-heading {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.panel-warning > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #faebcc;
}
.panel-warning > .panel-heading .badge {
  color: #fcf8e3;
  background-color: #8a6d3b;
}
.panel-warning > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #faebcc;
}
.panel-danger {
  border-color: #ebccd1;
}
.panel-danger > .panel-heading {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.panel-danger > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ebccd1;
}
.panel-danger > .panel-heading .badge {
  color: #f2dede;
  background-color: #a94442;
}
.panel-danger > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ebccd1;
}
.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden;
}
.embed-responsive .embed-responsive-item,
.embed-responsive iframe,
.embed-responsive embed,
.embed-responsive object,
.embed-responsive video {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  height: 100%;
  width: 100%;
  border: 0;
}
.embed-responsive-16by9 {
  padding-bottom: 56.25%;
}
.embed-responsive-4by3 {
  padding-bottom: 75%;
}
.well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}
.well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, 0.15);
}
.well-lg {
  padding: 24px;
  border-radius: 3px;
}
.well-sm {
  padding: 9px;
  border-radius: 1px;
}
.close {
  float: right;
  font-size: 19.5px;
  font-weight: bold;
  line-height: 1;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  opacity: 0.2;
  filter: alpha(opacity=20);
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
  opacity: 0.5;
  filter: alpha(opacity=50);
}
button.close {
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
}
.modal-open {
  overflow: hidden;
}
.modal {
  display: none;
  overflow: hidden;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1050;
  -webkit-overflow-scrolling: touch;
  outline: 0;
}
.modal.fade .modal-dialog {
  -webkit-transform: translate(0, -25%);
  -ms-transform: translate(0, -25%);
  -o-transform: translate(0, -25%);
  transform: translate(0, -25%);
  -webkit-transition: -webkit-transform 0.3s ease-out;
  -moz-transition: -moz-transform 0.3s ease-out;
  -o-transition: -o-transform 0.3s ease-out;
  transition: transform 0.3s ease-out;
}
.modal.in .modal-dialog {
  -webkit-transform: translate(0, 0);
  -ms-transform: translate(0, 0);
  -o-transform: translate(0, 0);
  transform: translate(0, 0);
}
.modal-open .modal {
  overflow-x: hidden;
  overflow-y: auto;
}
.modal-dialog {
  position: relative;
  width: auto;
  margin: 10px;
}
.modal-content {
  position: relative;
  background-color: #fff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  background-clip: padding-box;
  outline: 0;
}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000;
}
.modal-backdrop.fade {
  opacity: 0;
  filter: alpha(opacity=0);
}
.modal-backdrop.in {
  opacity: 0.5;
  filter: alpha(opacity=50);
}
.modal-header {
  padding: 15px;
  border-bottom: 1px solid #e5e5e5;
}
.modal-header .close {
  margin-top: -2px;
}
.modal-title {
  margin: 0;
  line-height: 1.42857143;
}
.modal-body {
  position: relative;
  padding: 15px;
}
.modal-footer {
  padding: 15px;
  text-align: right;
  border-top: 1px solid #e5e5e5;
}
.modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
.modal-scrollbar-measure {
  position: absolute;
  top: -9999px;
  width: 50px;
  height: 50px;
  overflow: scroll;
}
@media (min-width: 768px) {
  .modal-dialog {
    width: 600px;
    margin: 30px auto;
  }
  .modal-content {
    -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
  }
  .modal-sm {
    width: 300px;
  }
}
@media (min-width: 992px) {
  .modal-lg {
    width: 900px;
  }
}
.tooltip {
  position: absolute;
  z-index: 1070;
  display: block;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 12px;
  opacity: 0;
  filter: alpha(opacity=0);
}
.tooltip.in {
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.tooltip.top {
  margin-top: -3px;
  padding: 5px 0;
}
.tooltip.right {
  margin-left: 3px;
  padding: 0 5px;
}
.tooltip.bottom {
  margin-top: 3px;
  padding: 5px 0;
}
.tooltip.left {
  margin-left: -3px;
  padding: 0 5px;
}
.tooltip-inner {
  max-width: 200px;
  padding: 3px 8px;
  color: #fff;
  text-align: center;
  background-color: #000;
  border-radius: 2px;
}
.tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-left .tooltip-arrow {
  bottom: 0;
  right: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-right .tooltip-arrow {
  bottom: 0;
  left: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000;
}
.tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000;
}
.tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-left .tooltip-arrow {
  top: 0;
  right: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-right .tooltip-arrow {
  top: 0;
  left: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1060;
  display: none;
  max-width: 276px;
  padding: 1px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 13px;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
.popover.top {
  margin-top: -10px;
}
.popover.right {
  margin-left: 10px;
}
.popover.bottom {
  margin-top: 10px;
}
.popover.left {
  margin-left: -10px;
}
.popover-title {
  margin: 0;
  padding: 8px 14px;
  font-size: 13px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  border-radius: 2px 2px 0 0;
}
.popover-content {
  padding: 9px 14px;
}
.popover > .arrow,
.popover > .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.popover > .arrow {
  border-width: 11px;
}
.popover > .arrow:after {
  border-width: 10px;
  content: "";
}
.popover.top > .arrow {
  left: 50%;
  margin-left: -11px;
  border-bottom-width: 0;
  border-top-color: #999999;
  border-top-color: rgba(0, 0, 0, 0.25);
  bottom: -11px;
}
.popover.top > .arrow:after {
  content: " ";
  bottom: 1px;
  margin-left: -10px;
  border-bottom-width: 0;
  border-top-color: #fff;
}
.popover.right > .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-left-width: 0;
  border-right-color: #999999;
  border-right-color: rgba(0, 0, 0, 0.25);
}
.popover.right > .arrow:after {
  content: " ";
  left: 1px;
  bottom: -10px;
  border-left-width: 0;
  border-right-color: #fff;
}
.popover.bottom > .arrow {
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999999;
  border-bottom-color: rgba(0, 0, 0, 0.25);
  top: -11px;
}
.popover.bottom > .arrow:after {
  content: " ";
  top: 1px;
  margin-left: -10px;
  border-top-width: 0;
  border-bottom-color: #fff;
}
.popover.left > .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999999;
  border-left-color: rgba(0, 0, 0, 0.25);
}
.popover.left > .arrow:after {
  content: " ";
  right: 1px;
  border-right-width: 0;
  border-left-color: #fff;
  bottom: -10px;
}
.carousel {
  position: relative;
}
.carousel-inner {
  position: relative;
  overflow: hidden;
  width: 100%;
}
.carousel-inner > .item {
  display: none;
  position: relative;
  -webkit-transition: 0.6s ease-in-out left;
  -o-transition: 0.6s ease-in-out left;
  transition: 0.6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  line-height: 1;
}
@media all and (transform-3d), (-webkit-transform-3d) {
  .carousel-inner > .item {
    -webkit-transition: -webkit-transform 0.6s ease-in-out;
    -moz-transition: -moz-transform 0.6s ease-in-out;
    -o-transition: -o-transform 0.6s ease-in-out;
    transition: transform 0.6s ease-in-out;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-perspective: 1000px;
    -moz-perspective: 1000px;
    perspective: 1000px;
  }
  .carousel-inner > .item.next,
  .carousel-inner > .item.active.right {
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.prev,
  .carousel-inner > .item.active.left {
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.next.left,
  .carousel-inner > .item.prev.right,
  .carousel-inner > .item.active {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    left: 0;
  }
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}
.carousel-control {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  width: 15%;
  opacity: 0.5;
  filter: alpha(opacity=50);
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
  background-color: rgba(0, 0, 0, 0);
}
.carousel-control.left {
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);
}
.carousel-control.right {
  left: auto;
  right: 0;
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);
}
.carousel-control:hover,
.carousel-control:focus {
  outline: 0;
  color: #fff;
  text-decoration: none;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  margin-top: -10px;
  z-index: 5;
  display: inline-block;
}
.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  left: 50%;
  margin-left: -10px;
}
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  right: 50%;
  margin-right: -10px;
}
.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  line-height: 1;
  font-family: serif;
}
.carousel-control .icon-prev:before {
  content: '\2039';
}
.carousel-control .icon-next:before {
  content: '\203a';
}
.carousel-indicators {
  position: absolute;
  bottom: 10px;
  left: 50%;
  z-index: 15;
  width: 60%;
  margin-left: -30%;
  padding-left: 0;
  list-style: none;
  text-align: center;
}
.carousel-indicators li {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 1px;
  text-indent: -999px;
  border: 1px solid #fff;
  border-radius: 10px;
  cursor: pointer;
  background-color: #000 \9;
  background-color: rgba(0, 0, 0, 0);
}
.carousel-indicators .active {
  margin: 0;
  width: 12px;
  height: 12px;
  background-color: #fff;
}
.carousel-caption {
  position: absolute;
  left: 15%;
  right: 15%;
  bottom: 20px;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
}
.carousel-caption .btn {
  text-shadow: none;
}
@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -10px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
    margin-right: -10px;
  }
  .carousel-caption {
    left: 20%;
    right: 20%;
    padding-bottom: 30px;
  }
  .carousel-indicators {
    bottom: 20px;
  }
}
.clearfix:before,
.clearfix:after,
.dl-horizontal dd:before,
.dl-horizontal dd:after,
.container:before,
.container:after,
.container-fluid:before,
.container-fluid:after,
.row:before,
.row:after,
.form-horizontal .form-group:before,
.form-horizontal .form-group:after,
.btn-toolbar:before,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:before,
.btn-group-vertical > .btn-group:after,
.nav:before,
.nav:after,
.navbar:before,
.navbar:after,
.navbar-header:before,
.navbar-header:after,
.navbar-collapse:before,
.navbar-collapse:after,
.pager:before,
.pager:after,
.panel-body:before,
.panel-body:after,
.modal-header:before,
.modal-header:after,
.modal-footer:before,
.modal-footer:after,
.item_buttons:before,
.item_buttons:after {
  content: " ";
  display: table;
}
.clearfix:after,
.dl-horizontal dd:after,
.container:after,
.container-fluid:after,
.row:after,
.form-horizontal .form-group:after,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:after,
.nav:after,
.navbar:after,
.navbar-header:after,
.navbar-collapse:after,
.pager:after,
.panel-body:after,
.modal-header:after,
.modal-footer:after,
.item_buttons:after {
  clear: both;
}
.center-block {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.pull-right {
  float: right !important;
}
.pull-left {
  float: left !important;
}
.hide {
  display: none !important;
}
.show {
  display: block !important;
}
.invisible {
  visibility: hidden;
}
.text-hide {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.hidden {
  display: none !important;
}
.affix {
  position: fixed;
}
@-ms-viewport {
  width: device-width;
}
.visible-xs,
.visible-sm,
.visible-md,
.visible-lg {
  display: none !important;
}
.visible-xs-block,
.visible-xs-inline,
.visible-xs-inline-block,
.visible-sm-block,
.visible-sm-inline,
.visible-sm-inline-block,
.visible-md-block,
.visible-md-inline,
.visible-md-inline-block,
.visible-lg-block,
.visible-lg-inline,
.visible-lg-inline-block {
  display: none !important;
}
@media (max-width: 767px) {
  .visible-xs {
    display: block !important;
  }
  table.visible-xs {
    display: table !important;
  }
  tr.visible-xs {
    display: table-row !important;
  }
  th.visible-xs,
  td.visible-xs {
    display: table-cell !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-block {
    display: block !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline {
    display: inline !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm {
    display: block !important;
  }
  table.visible-sm {
    display: table !important;
  }
  tr.visible-sm {
    display: table-row !important;
  }
  th.visible-sm,
  td.visible-sm {
    display: table-cell !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-block {
    display: block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline {
    display: inline !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md {
    display: block !important;
  }
  table.visible-md {
    display: table !important;
  }
  tr.visible-md {
    display: table-row !important;
  }
  th.visible-md,
  td.visible-md {
    display: table-cell !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-block {
    display: block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline {
    display: inline !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg {
    display: block !important;
  }
  table.visible-lg {
    display: table !important;
  }
  tr.visible-lg {
    display: table-row !important;
  }
  th.visible-lg,
  td.visible-lg {
    display: table-cell !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-block {
    display: block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline {
    display: inline !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline-block {
    display: inline-block !important;
  }
}
@media (max-width: 767px) {
  .hidden-xs {
    display: none !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .hidden-sm {
    display: none !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .hidden-md {
    display: none !important;
  }
}
@media (min-width: 1200px) {
  .hidden-lg {
    display: none !important;
  }
}
.visible-print {
  display: none !important;
}
@media print {
  .visible-print {
    display: block !important;
  }
  table.visible-print {
    display: table !important;
  }
  tr.visible-print {
    display: table-row !important;
  }
  th.visible-print,
  td.visible-print {
    display: table-cell !important;
  }
}
.visible-print-block {
  display: none !important;
}
@media print {
  .visible-print-block {
    display: block !important;
  }
}
.visible-print-inline {
  display: none !important;
}
@media print {
  .visible-print-inline {
    display: inline !important;
  }
}
.visible-print-inline-block {
  display: none !important;
}
@media print {
  .visible-print-inline-block {
    display: inline-block !important;
  }
}
@media print {
  .hidden-print {
    display: none !important;
  }
}
/*!
*
* Font Awesome
*
*/
/*!
 *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome
 *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)
 */
/* FONT PATH
 * -------------------------- */
@font-face {
  font-family: 'FontAwesome';
  src: url('../components/font-awesome/fonts/fontawesome-webfont.eot?v=4.7.0');
  src: url('../components/font-awesome/fonts/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'), url('../components/font-awesome/fonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'), url('../components/font-awesome/fonts/fontawesome-webfont.woff?v=4.7.0') format('woff'), url('../components/font-awesome/fonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'), url('../components/font-awesome/fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');
  font-weight: normal;
  font-style: normal;
}
.fa {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
/* makes the font 33% larger relative to the icon container */
.fa-lg {
  font-size: 1.33333333em;
  line-height: 0.75em;
  vertical-align: -15%;
}
.fa-2x {
  font-size: 2em;
}
.fa-3x {
  font-size: 3em;
}
.fa-4x {
  font-size: 4em;
}
.fa-5x {
  font-size: 5em;
}
.fa-fw {
  width: 1.28571429em;
  text-align: center;
}
.fa-ul {
  padding-left: 0;
  margin-left: 2.14285714em;
  list-style-type: none;
}
.fa-ul > li {
  position: relative;
}
.fa-li {
  position: absolute;
  left: -2.14285714em;
  width: 2.14285714em;
  top: 0.14285714em;
  text-align: center;
}
.fa-li.fa-lg {
  left: -1.85714286em;
}
.fa-border {
  padding: .2em .25em .15em;
  border: solid 0.08em #eee;
  border-radius: .1em;
}
.fa-pull-left {
  float: left;
}
.fa-pull-right {
  float: right;
}
.fa.fa-pull-left {
  margin-right: .3em;
}
.fa.fa-pull-right {
  margin-left: .3em;
}
/* Deprecated as of 4.4.0 */
.pull-right {
  float: right;
}
.pull-left {
  float: left;
}
.fa.pull-left {
  margin-right: .3em;
}
.fa.pull-right {
  margin-left: .3em;
}
.fa-spin {
  -webkit-animation: fa-spin 2s infinite linear;
  animation: fa-spin 2s infinite linear;
}
.fa-pulse {
  -webkit-animation: fa-spin 1s infinite steps(8);
  animation: fa-spin 1s infinite steps(8);
}
@-webkit-keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg);
  }
}
@keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg);
  }
}
.fa-rotate-90 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";
  -webkit-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
.fa-rotate-180 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";
  -webkit-transform: rotate(180deg);
  -ms-transform: rotate(180deg);
  transform: rotate(180deg);
}
.fa-rotate-270 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";
  -webkit-transform: rotate(270deg);
  -ms-transform: rotate(270deg);
  transform: rotate(270deg);
}
.fa-flip-horizontal {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";
  -webkit-transform: scale(-1, 1);
  -ms-transform: scale(-1, 1);
  transform: scale(-1, 1);
}
.fa-flip-vertical {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";
  -webkit-transform: scale(1, -1);
  -ms-transform: scale(1, -1);
  transform: scale(1, -1);
}
:root .fa-rotate-90,
:root .fa-rotate-180,
:root .fa-rotate-270,
:root .fa-flip-horizontal,
:root .fa-flip-vertical {
  filter: none;
}
.fa-stack {
  position: relative;
  display: inline-block;
  width: 2em;
  height: 2em;
  line-height: 2em;
  vertical-align: middle;
}
.fa-stack-1x,
.fa-stack-2x {
  position: absolute;
  left: 0;
  width: 100%;
  text-align: center;
}
.fa-stack-1x {
  line-height: inherit;
}
.fa-stack-2x {
  font-size: 2em;
}
.fa-inverse {
  color: #fff;
}
/* Font Awesome uses the Unicode Private Use Area (PUA) to ensure screen
   readers do not read off random characters that represent icons */
.fa-glass:before {
  content: "\f000";
}
.fa-music:before {
  content: "\f001";
}
.fa-search:before {
  content: "\f002";
}
.fa-envelope-o:before {
  content: "\f003";
}
.fa-heart:before {
  content: "\f004";
}
.fa-star:before {
  content: "\f005";
}
.fa-star-o:before {
  content: "\f006";
}
.fa-user:before {
  content: "\f007";
}
.fa-film:before {
  content: "\f008";
}
.fa-th-large:before {
  content: "\f009";
}
.fa-th:before {
  content: "\f00a";
}
.fa-th-list:before {
  content: "\f00b";
}
.fa-check:before {
  content: "\f00c";
}
.fa-remove:before,
.fa-close:before,
.fa-times:before {
  content: "\f00d";
}
.fa-search-plus:before {
  content: "\f00e";
}
.fa-search-minus:before {
  content: "\f010";
}
.fa-power-off:before {
  content: "\f011";
}
.fa-signal:before {
  content: "\f012";
}
.fa-gear:before,
.fa-cog:before {
  content: "\f013";
}
.fa-trash-o:before {
  content: "\f014";
}
.fa-home:before {
  content: "\f015";
}
.fa-file-o:before {
  content: "\f016";
}
.fa-clock-o:before {
  content: "\f017";
}
.fa-road:before {
  content: "\f018";
}
.fa-download:before {
  content: "\f019";
}
.fa-arrow-circle-o-down:before {
  content: "\f01a";
}
.fa-arrow-circle-o-up:before {
  content: "\f01b";
}
.fa-inbox:before {
  content: "\f01c";
}
.fa-play-circle-o:before {
  content: "\f01d";
}
.fa-rotate-right:before,
.fa-repeat:before {
  content: "\f01e";
}
.fa-refresh:before {
  content: "\f021";
}
.fa-list-alt:before {
  content: "\f022";
}
.fa-lock:before {
  content: "\f023";
}
.fa-flag:before {
  content: "\f024";
}
.fa-headphones:before {
  content: "\f025";
}
.fa-volume-off:before {
  content: "\f026";
}
.fa-volume-down:before {
  content: "\f027";
}
.fa-volume-up:before {
  content: "\f028";
}
.fa-qrcode:before {
  content: "\f029";
}
.fa-barcode:before {
  content: "\f02a";
}
.fa-tag:before {
  content: "\f02b";
}
.fa-tags:before {
  content: "\f02c";
}
.fa-book:before {
  content: "\f02d";
}
.fa-bookmark:before {
  content: "\f02e";
}
.fa-print:before {
  content: "\f02f";
}
.fa-camera:before {
  content: "\f030";
}
.fa-font:before {
  content: "\f031";
}
.fa-bold:before {
  content: "\f032";
}
.fa-italic:before {
  content: "\f033";
}
.fa-text-height:before {
  content: "\f034";
}
.fa-text-width:before {
  content: "\f035";
}
.fa-align-left:before {
  content: "\f036";
}
.fa-align-center:before {
  content: "\f037";
}
.fa-align-right:before {
  content: "\f038";
}
.fa-align-justify:before {
  content: "\f039";
}
.fa-list:before {
  content: "\f03a";
}
.fa-dedent:before,
.fa-outdent:before {
  content: "\f03b";
}
.fa-indent:before {
  content: "\f03c";
}
.fa-video-camera:before {
  content: "\f03d";
}
.fa-photo:before,
.fa-image:before,
.fa-picture-o:before {
  content: "\f03e";
}
.fa-pencil:before {
  content: "\f040";
}
.fa-map-marker:before {
  content: "\f041";
}
.fa-adjust:before {
  content: "\f042";
}
.fa-tint:before {
  content: "\f043";
}
.fa-edit:before,
.fa-pencil-square-o:before {
  content: "\f044";
}
.fa-share-square-o:before {
  content: "\f045";
}
.fa-check-square-o:before {
  content: "\f046";
}
.fa-arrows:before {
  content: "\f047";
}
.fa-step-backward:before {
  content: "\f048";
}
.fa-fast-backward:before {
  content: "\f049";
}
.fa-backward:before {
  content: "\f04a";
}
.fa-play:before {
  content: "\f04b";
}
.fa-pause:before {
  content: "\f04c";
}
.fa-stop:before {
  content: "\f04d";
}
.fa-forward:before {
  content: "\f04e";
}
.fa-fast-forward:before {
  content: "\f050";
}
.fa-step-forward:before {
  content: "\f051";
}
.fa-eject:before {
  content: "\f052";
}
.fa-chevron-left:before {
  content: "\f053";
}
.fa-chevron-right:before {
  content: "\f054";
}
.fa-plus-circle:before {
  content: "\f055";
}
.fa-minus-circle:before {
  content: "\f056";
}
.fa-times-circle:before {
  content: "\f057";
}
.fa-check-circle:before {
  content: "\f058";
}
.fa-question-circle:before {
  content: "\f059";
}
.fa-info-circle:before {
  content: "\f05a";
}
.fa-crosshairs:before {
  content: "\f05b";
}
.fa-times-circle-o:before {
  content: "\f05c";
}
.fa-check-circle-o:before {
  content: "\f05d";
}
.fa-ban:before {
  content: "\f05e";
}
.fa-arrow-left:before {
  content: "\f060";
}
.fa-arrow-right:before {
  content: "\f061";
}
.fa-arrow-up:before {
  content: "\f062";
}
.fa-arrow-down:before {
  content: "\f063";
}
.fa-mail-forward:before,
.fa-share:before {
  content: "\f064";
}
.fa-expand:before {
  content: "\f065";
}
.fa-compress:before {
  content: "\f066";
}
.fa-plus:before {
  content: "\f067";
}
.fa-minus:before {
  content: "\f068";
}
.fa-asterisk:before {
  content: "\f069";
}
.fa-exclamation-circle:before {
  content: "\f06a";
}
.fa-gift:before {
  content: "\f06b";
}
.fa-leaf:before {
  content: "\f06c";
}
.fa-fire:before {
  content: "\f06d";
}
.fa-eye:before {
  content: "\f06e";
}
.fa-eye-slash:before {
  content: "\f070";
}
.fa-warning:before,
.fa-exclamation-triangle:before {
  content: "\f071";
}
.fa-plane:before {
  content: "\f072";
}
.fa-calendar:before {
  content: "\f073";
}
.fa-random:before {
  content: "\f074";
}
.fa-comment:before {
  content: "\f075";
}
.fa-magnet:before {
  content: "\f076";
}
.fa-chevron-up:before {
  content: "\f077";
}
.fa-chevron-down:before {
  content: "\f078";
}
.fa-retweet:before {
  content: "\f079";
}
.fa-shopping-cart:before {
  content: "\f07a";
}
.fa-folder:before {
  content: "\f07b";
}
.fa-folder-open:before {
  content: "\f07c";
}
.fa-arrows-v:before {
  content: "\f07d";
}
.fa-arrows-h:before {
  content: "\f07e";
}
.fa-bar-chart-o:before,
.fa-bar-chart:before {
  content: "\f080";
}
.fa-twitter-square:before {
  content: "\f081";
}
.fa-facebook-square:before {
  content: "\f082";
}
.fa-camera-retro:before {
  content: "\f083";
}
.fa-key:before {
  content: "\f084";
}
.fa-gears:before,
.fa-cogs:before {
  content: "\f085";
}
.fa-comments:before {
  content: "\f086";
}
.fa-thumbs-o-up:before {
  content: "\f087";
}
.fa-thumbs-o-down:before {
  content: "\f088";
}
.fa-star-half:before {
  content: "\f089";
}
.fa-heart-o:before {
  content: "\f08a";
}
.fa-sign-out:before {
  content: "\f08b";
}
.fa-linkedin-square:before {
  content: "\f08c";
}
.fa-thumb-tack:before {
  content: "\f08d";
}
.fa-external-link:before {
  content: "\f08e";
}
.fa-sign-in:before {
  content: "\f090";
}
.fa-trophy:before {
  content: "\f091";
}
.fa-github-square:before {
  content: "\f092";
}
.fa-upload:before {
  content: "\f093";
}
.fa-lemon-o:before {
  content: "\f094";
}
.fa-phone:before {
  content: "\f095";
}
.fa-square-o:before {
  content: "\f096";
}
.fa-bookmark-o:before {
  content: "\f097";
}
.fa-phone-square:before {
  content: "\f098";
}
.fa-twitter:before {
  content: "\f099";
}
.fa-facebook-f:before,
.fa-facebook:before {
  content: "\f09a";
}
.fa-github:before {
  content: "\f09b";
}
.fa-unlock:before {
  content: "\f09c";
}
.fa-credit-card:before {
  content: "\f09d";
}
.fa-feed:before,
.fa-rss:before {
  content: "\f09e";
}
.fa-hdd-o:before {
  content: "\f0a0";
}
.fa-bullhorn:before {
  content: "\f0a1";
}
.fa-bell:before {
  content: "\f0f3";
}
.fa-certificate:before {
  content: "\f0a3";
}
.fa-hand-o-right:before {
  content: "\f0a4";
}
.fa-hand-o-left:before {
  content: "\f0a5";
}
.fa-hand-o-up:before {
  content: "\f0a6";
}
.fa-hand-o-down:before {
  content: "\f0a7";
}
.fa-arrow-circle-left:before {
  content: "\f0a8";
}
.fa-arrow-circle-right:before {
  content: "\f0a9";
}
.fa-arrow-circle-up:before {
  content: "\f0aa";
}
.fa-arrow-circle-down:before {
  content: "\f0ab";
}
.fa-globe:before {
  content: "\f0ac";
}
.fa-wrench:before {
  content: "\f0ad";
}
.fa-tasks:before {
  content: "\f0ae";
}
.fa-filter:before {
  content: "\f0b0";
}
.fa-briefcase:before {
  content: "\f0b1";
}
.fa-arrows-alt:before {
  content: "\f0b2";
}
.fa-group:before,
.fa-users:before {
  content: "\f0c0";
}
.fa-chain:before,
.fa-link:before {
  content: "\f0c1";
}
.fa-cloud:before {
  content: "\f0c2";
}
.fa-flask:before {
  content: "\f0c3";
}
.fa-cut:before,
.fa-scissors:before {
  content: "\f0c4";
}
.fa-copy:before,
.fa-files-o:before {
  content: "\f0c5";
}
.fa-paperclip:before {
  content: "\f0c6";
}
.fa-save:before,
.fa-floppy-o:before {
  content: "\f0c7";
}
.fa-square:before {
  content: "\f0c8";
}
.fa-navicon:before,
.fa-reorder:before,
.fa-bars:before {
  content: "\f0c9";
}
.fa-list-ul:before {
  content: "\f0ca";
}
.fa-list-ol:before {
  content: "\f0cb";
}
.fa-strikethrough:before {
  content: "\f0cc";
}
.fa-underline:before {
  content: "\f0cd";
}
.fa-table:before {
  content: "\f0ce";
}
.fa-magic:before {
  content: "\f0d0";
}
.fa-truck:before {
  content: "\f0d1";
}
.fa-pinterest:before {
  content: "\f0d2";
}
.fa-pinterest-square:before {
  content: "\f0d3";
}
.fa-google-plus-square:before {
  content: "\f0d4";
}
.fa-google-plus:before {
  content: "\f0d5";
}
.fa-money:before {
  content: "\f0d6";
}
.fa-caret-down:before {
  content: "\f0d7";
}
.fa-caret-up:before {
  content: "\f0d8";
}
.fa-caret-left:before {
  content: "\f0d9";
}
.fa-caret-right:before {
  content: "\f0da";
}
.fa-columns:before {
  content: "\f0db";
}
.fa-unsorted:before,
.fa-sort:before {
  content: "\f0dc";
}
.fa-sort-down:before,
.fa-sort-desc:before {
  content: "\f0dd";
}
.fa-sort-up:before,
.fa-sort-asc:before {
  content: "\f0de";
}
.fa-envelope:before {
  content: "\f0e0";
}
.fa-linkedin:before {
  content: "\f0e1";
}
.fa-rotate-left:before,
.fa-undo:before {
  content: "\f0e2";
}
.fa-legal:before,
.fa-gavel:before {
  content: "\f0e3";
}
.fa-dashboard:before,
.fa-tachometer:before {
  content: "\f0e4";
}
.fa-comment-o:before {
  content: "\f0e5";
}
.fa-comments-o:before {
  content: "\f0e6";
}
.fa-flash:before,
.fa-bolt:before {
  content: "\f0e7";
}
.fa-sitemap:before {
  content: "\f0e8";
}
.fa-umbrella:before {
  content: "\f0e9";
}
.fa-paste:before,
.fa-clipboard:before {
  content: "\f0ea";
}
.fa-lightbulb-o:before {
  content: "\f0eb";
}
.fa-exchange:before {
  content: "\f0ec";
}
.fa-cloud-download:before {
  content: "\f0ed";
}
.fa-cloud-upload:before {
  content: "\f0ee";
}
.fa-user-md:before {
  content: "\f0f0";
}
.fa-stethoscope:before {
  content: "\f0f1";
}
.fa-suitcase:before {
  content: "\f0f2";
}
.fa-bell-o:before {
  content: "\f0a2";
}
.fa-coffee:before {
  content: "\f0f4";
}
.fa-cutlery:before {
  content: "\f0f5";
}
.fa-file-text-o:before {
  content: "\f0f6";
}
.fa-building-o:before {
  content: "\f0f7";
}
.fa-hospital-o:before {
  content: "\f0f8";
}
.fa-ambulance:before {
  content: "\f0f9";
}
.fa-medkit:before {
  content: "\f0fa";
}
.fa-fighter-jet:before {
  content: "\f0fb";
}
.fa-beer:before {
  content: "\f0fc";
}
.fa-h-square:before {
  content: "\f0fd";
}
.fa-plus-square:before {
  content: "\f0fe";
}
.fa-angle-double-left:before {
  content: "\f100";
}
.fa-angle-double-right:before {
  content: "\f101";
}
.fa-angle-double-up:before {
  content: "\f102";
}
.fa-angle-double-down:before {
  content: "\f103";
}
.fa-angle-left:before {
  content: "\f104";
}
.fa-angle-right:before {
  content: "\f105";
}
.fa-angle-up:before {
  content: "\f106";
}
.fa-angle-down:before {
  content: "\f107";
}
.fa-desktop:before {
  content: "\f108";
}
.fa-laptop:before {
  content: "\f109";
}
.fa-tablet:before {
  content: "\f10a";
}
.fa-mobile-phone:before,
.fa-mobile:before {
  content: "\f10b";
}
.fa-circle-o:before {
  content: "\f10c";
}
.fa-quote-left:before {
  content: "\f10d";
}
.fa-quote-right:before {
  content: "\f10e";
}
.fa-spinner:before {
  content: "\f110";
}
.fa-circle:before {
  content: "\f111";
}
.fa-mail-reply:before,
.fa-reply:before {
  content: "\f112";
}
.fa-github-alt:before {
  content: "\f113";
}
.fa-folder-o:before {
  content: "\f114";
}
.fa-folder-open-o:before {
  content: "\f115";
}
.fa-smile-o:before {
  content: "\f118";
}
.fa-frown-o:before {
  content: "\f119";
}
.fa-meh-o:before {
  content: "\f11a";
}
.fa-gamepad:before {
  content: "\f11b";
}
.fa-keyboard-o:before {
  content: "\f11c";
}
.fa-flag-o:before {
  content: "\f11d";
}
.fa-flag-checkered:before {
  content: "\f11e";
}
.fa-terminal:before {
  content: "\f120";
}
.fa-code:before {
  content: "\f121";
}
.fa-mail-reply-all:before,
.fa-reply-all:before {
  content: "\f122";
}
.fa-star-half-empty:before,
.fa-star-half-full:before,
.fa-star-half-o:before {
  content: "\f123";
}
.fa-location-arrow:before {
  content: "\f124";
}
.fa-crop:before {
  content: "\f125";
}
.fa-code-fork:before {
  content: "\f126";
}
.fa-unlink:before,
.fa-chain-broken:before {
  content: "\f127";
}
.fa-question:before {
  content: "\f128";
}
.fa-info:before {
  content: "\f129";
}
.fa-exclamation:before {
  content: "\f12a";
}
.fa-superscript:before {
  content: "\f12b";
}
.fa-subscript:before {
  content: "\f12c";
}
.fa-eraser:before {
  content: "\f12d";
}
.fa-puzzle-piece:before {
  content: "\f12e";
}
.fa-microphone:before {
  content: "\f130";
}
.fa-microphone-slash:before {
  content: "\f131";
}
.fa-shield:before {
  content: "\f132";
}
.fa-calendar-o:before {
  content: "\f133";
}
.fa-fire-extinguisher:before {
  content: "\f134";
}
.fa-rocket:before {
  content: "\f135";
}
.fa-maxcdn:before {
  content: "\f136";
}
.fa-chevron-circle-left:before {
  content: "\f137";
}
.fa-chevron-circle-right:before {
  content: "\f138";
}
.fa-chevron-circle-up:before {
  content: "\f139";
}
.fa-chevron-circle-down:before {
  content: "\f13a";
}
.fa-html5:before {
  content: "\f13b";
}
.fa-css3:before {
  content: "\f13c";
}
.fa-anchor:before {
  content: "\f13d";
}
.fa-unlock-alt:before {
  content: "\f13e";
}
.fa-bullseye:before {
  content: "\f140";
}
.fa-ellipsis-h:before {
  content: "\f141";
}
.fa-ellipsis-v:before {
  content: "\f142";
}
.fa-rss-square:before {
  content: "\f143";
}
.fa-play-circle:before {
  content: "\f144";
}
.fa-ticket:before {
  content: "\f145";
}
.fa-minus-square:before {
  content: "\f146";
}
.fa-minus-square-o:before {
  content: "\f147";
}
.fa-level-up:before {
  content: "\f148";
}
.fa-level-down:before {
  content: "\f149";
}
.fa-check-square:before {
  content: "\f14a";
}
.fa-pencil-square:before {
  content: "\f14b";
}
.fa-external-link-square:before {
  content: "\f14c";
}
.fa-share-square:before {
  content: "\f14d";
}
.fa-compass:before {
  content: "\f14e";
}
.fa-toggle-down:before,
.fa-caret-square-o-down:before {
  content: "\f150";
}
.fa-toggle-up:before,
.fa-caret-square-o-up:before {
  content: "\f151";
}
.fa-toggle-right:before,
.fa-caret-square-o-right:before {
  content: "\f152";
}
.fa-euro:before,
.fa-eur:before {
  content: "\f153";
}
.fa-gbp:before {
  content: "\f154";
}
.fa-dollar:before,
.fa-usd:before {
  content: "\f155";
}
.fa-rupee:before,
.fa-inr:before {
  content: "\f156";
}
.fa-cny:before,
.fa-rmb:before,
.fa-yen:before,
.fa-jpy:before {
  content: "\f157";
}
.fa-ruble:before,
.fa-rouble:before,
.fa-rub:before {
  content: "\f158";
}
.fa-won:before,
.fa-krw:before {
  content: "\f159";
}
.fa-bitcoin:before,
.fa-btc:before {
  content: "\f15a";
}
.fa-file:before {
  content: "\f15b";
}
.fa-file-text:before {
  content: "\f15c";
}
.fa-sort-alpha-asc:before {
  content: "\f15d";
}
.fa-sort-alpha-desc:before {
  content: "\f15e";
}
.fa-sort-amount-asc:before {
  content: "\f160";
}
.fa-sort-amount-desc:before {
  content: "\f161";
}
.fa-sort-numeric-asc:before {
  content: "\f162";
}
.fa-sort-numeric-desc:before {
  content: "\f163";
}
.fa-thumbs-up:before {
  content: "\f164";
}
.fa-thumbs-down:before {
  content: "\f165";
}
.fa-youtube-square:before {
  content: "\f166";
}
.fa-youtube:before {
  content: "\f167";
}
.fa-xing:before {
  content: "\f168";
}
.fa-xing-square:before {
  content: "\f169";
}
.fa-youtube-play:before {
  content: "\f16a";
}
.fa-dropbox:before {
  content: "\f16b";
}
.fa-stack-overflow:before {
  content: "\f16c";
}
.fa-instagram:before {
  content: "\f16d";
}
.fa-flickr:before {
  content: "\f16e";
}
.fa-adn:before {
  content: "\f170";
}
.fa-bitbucket:before {
  content: "\f171";
}
.fa-bitbucket-square:before {
  content: "\f172";
}
.fa-tumblr:before {
  content: "\f173";
}
.fa-tumblr-square:before {
  content: "\f174";
}
.fa-long-arrow-down:before {
  content: "\f175";
}
.fa-long-arrow-up:before {
  content: "\f176";
}
.fa-long-arrow-left:before {
  content: "\f177";
}
.fa-long-arrow-right:before {
  content: "\f178";
}
.fa-apple:before {
  content: "\f179";
}
.fa-windows:before {
  content: "\f17a";
}
.fa-android:before {
  content: "\f17b";
}
.fa-linux:before {
  content: "\f17c";
}
.fa-dribbble:before {
  content: "\f17d";
}
.fa-skype:before {
  content: "\f17e";
}
.fa-foursquare:before {
  content: "\f180";
}
.fa-trello:before {
  content: "\f181";
}
.fa-female:before {
  content: "\f182";
}
.fa-male:before {
  content: "\f183";
}
.fa-gittip:before,
.fa-gratipay:before {
  content: "\f184";
}
.fa-sun-o:before {
  content: "\f185";
}
.fa-moon-o:before {
  content: "\f186";
}
.fa-archive:before {
  content: "\f187";
}
.fa-bug:before {
  content: "\f188";
}
.fa-vk:before {
  content: "\f189";
}
.fa-weibo:before {
  content: "\f18a";
}
.fa-renren:before {
  content: "\f18b";
}
.fa-pagelines:before {
  content: "\f18c";
}
.fa-stack-exchange:before {
  content: "\f18d";
}
.fa-arrow-circle-o-right:before {
  content: "\f18e";
}
.fa-arrow-circle-o-left:before {
  content: "\f190";
}
.fa-toggle-left:before,
.fa-caret-square-o-left:before {
  content: "\f191";
}
.fa-dot-circle-o:before {
  content: "\f192";
}
.fa-wheelchair:before {
  content: "\f193";
}
.fa-vimeo-square:before {
  content: "\f194";
}
.fa-turkish-lira:before,
.fa-try:before {
  content: "\f195";
}
.fa-plus-square-o:before {
  content: "\f196";
}
.fa-space-shuttle:before {
  content: "\f197";
}
.fa-slack:before {
  content: "\f198";
}
.fa-envelope-square:before {
  content: "\f199";
}
.fa-wordpress:before {
  content: "\f19a";
}
.fa-openid:before {
  content: "\f19b";
}
.fa-institution:before,
.fa-bank:before,
.fa-university:before {
  content: "\f19c";
}
.fa-mortar-board:before,
.fa-graduation-cap:before {
  content: "\f19d";
}
.fa-yahoo:before {
  content: "\f19e";
}
.fa-google:before {
  content: "\f1a0";
}
.fa-reddit:before {
  content: "\f1a1";
}
.fa-reddit-square:before {
  content: "\f1a2";
}
.fa-stumbleupon-circle:before {
  content: "\f1a3";
}
.fa-stumbleupon:before {
  content: "\f1a4";
}
.fa-delicious:before {
  content: "\f1a5";
}
.fa-digg:before {
  content: "\f1a6";
}
.fa-pied-piper-pp:before {
  content: "\f1a7";
}
.fa-pied-piper-alt:before {
  content: "\f1a8";
}
.fa-drupal:before {
  content: "\f1a9";
}
.fa-joomla:before {
  content: "\f1aa";
}
.fa-language:before {
  content: "\f1ab";
}
.fa-fax:before {
  content: "\f1ac";
}
.fa-building:before {
  content: "\f1ad";
}
.fa-child:before {
  content: "\f1ae";
}
.fa-paw:before {
  content: "\f1b0";
}
.fa-spoon:before {
  content: "\f1b1";
}
.fa-cube:before {
  content: "\f1b2";
}
.fa-cubes:before {
  content: "\f1b3";
}
.fa-behance:before {
  content: "\f1b4";
}
.fa-behance-square:before {
  content: "\f1b5";
}
.fa-steam:before {
  content: "\f1b6";
}
.fa-steam-square:before {
  content: "\f1b7";
}
.fa-recycle:before {
  content: "\f1b8";
}
.fa-automobile:before,
.fa-car:before {
  content: "\f1b9";
}
.fa-cab:before,
.fa-taxi:before {
  content: "\f1ba";
}
.fa-tree:before {
  content: "\f1bb";
}
.fa-spotify:before {
  content: "\f1bc";
}
.fa-deviantart:before {
  content: "\f1bd";
}
.fa-soundcloud:before {
  content: "\f1be";
}
.fa-database:before {
  content: "\f1c0";
}
.fa-file-pdf-o:before {
  content: "\f1c1";
}
.fa-file-word-o:before {
  content: "\f1c2";
}
.fa-file-excel-o:before {
  content: "\f1c3";
}
.fa-file-powerpoint-o:before {
  content: "\f1c4";
}
.fa-file-photo-o:before,
.fa-file-picture-o:before,
.fa-file-image-o:before {
  content: "\f1c5";
}
.fa-file-zip-o:before,
.fa-file-archive-o:before {
  content: "\f1c6";
}
.fa-file-sound-o:before,
.fa-file-audio-o:before {
  content: "\f1c7";
}
.fa-file-movie-o:before,
.fa-file-video-o:before {
  content: "\f1c8";
}
.fa-file-code-o:before {
  content: "\f1c9";
}
.fa-vine:before {
  content: "\f1ca";
}
.fa-codepen:before {
  content: "\f1cb";
}
.fa-jsfiddle:before {
  content: "\f1cc";
}
.fa-life-bouy:before,
.fa-life-buoy:before,
.fa-life-saver:before,
.fa-support:before,
.fa-life-ring:before {
  content: "\f1cd";
}
.fa-circle-o-notch:before {
  content: "\f1ce";
}
.fa-ra:before,
.fa-resistance:before,
.fa-rebel:before {
  content: "\f1d0";
}
.fa-ge:before,
.fa-empire:before {
  content: "\f1d1";
}
.fa-git-square:before {
  content: "\f1d2";
}
.fa-git:before {
  content: "\f1d3";
}
.fa-y-combinator-square:before,
.fa-yc-square:before,
.fa-hacker-news:before {
  content: "\f1d4";
}
.fa-tencent-weibo:before {
  content: "\f1d5";
}
.fa-qq:before {
  content: "\f1d6";
}
.fa-wechat:before,
.fa-weixin:before {
  content: "\f1d7";
}
.fa-send:before,
.fa-paper-plane:before {
  content: "\f1d8";
}
.fa-send-o:before,
.fa-paper-plane-o:before {
  content: "\f1d9";
}
.fa-history:before {
  content: "\f1da";
}
.fa-circle-thin:before {
  content: "\f1db";
}
.fa-header:before {
  content: "\f1dc";
}
.fa-paragraph:before {
  content: "\f1dd";
}
.fa-sliders:before {
  content: "\f1de";
}
.fa-share-alt:before {
  content: "\f1e0";
}
.fa-share-alt-square:before {
  content: "\f1e1";
}
.fa-bomb:before {
  content: "\f1e2";
}
.fa-soccer-ball-o:before,
.fa-futbol-o:before {
  content: "\f1e3";
}
.fa-tty:before {
  content: "\f1e4";
}
.fa-binoculars:before {
  content: "\f1e5";
}
.fa-plug:before {
  content: "\f1e6";
}
.fa-slideshare:before {
  content: "\f1e7";
}
.fa-twitch:before {
  content: "\f1e8";
}
.fa-yelp:before {
  content: "\f1e9";
}
.fa-newspaper-o:before {
  content: "\f1ea";
}
.fa-wifi:before {
  content: "\f1eb";
}
.fa-calculator:before {
  content: "\f1ec";
}
.fa-paypal:before {
  content: "\f1ed";
}
.fa-google-wallet:before {
  content: "\f1ee";
}
.fa-cc-visa:before {
  content: "\f1f0";
}
.fa-cc-mastercard:before {
  content: "\f1f1";
}
.fa-cc-discover:before {
  content: "\f1f2";
}
.fa-cc-amex:before {
  content: "\f1f3";
}
.fa-cc-paypal:before {
  content: "\f1f4";
}
.fa-cc-stripe:before {
  content: "\f1f5";
}
.fa-bell-slash:before {
  content: "\f1f6";
}
.fa-bell-slash-o:before {
  content: "\f1f7";
}
.fa-trash:before {
  content: "\f1f8";
}
.fa-copyright:before {
  content: "\f1f9";
}
.fa-at:before {
  content: "\f1fa";
}
.fa-eyedropper:before {
  content: "\f1fb";
}
.fa-paint-brush:before {
  content: "\f1fc";
}
.fa-birthday-cake:before {
  content: "\f1fd";
}
.fa-area-chart:before {
  content: "\f1fe";
}
.fa-pie-chart:before {
  content: "\f200";
}
.fa-line-chart:before {
  content: "\f201";
}
.fa-lastfm:before {
  content: "\f202";
}
.fa-lastfm-square:before {
  content: "\f203";
}
.fa-toggle-off:before {
  content: "\f204";
}
.fa-toggle-on:before {
  content: "\f205";
}
.fa-bicycle:before {
  content: "\f206";
}
.fa-bus:before {
  content: "\f207";
}
.fa-ioxhost:before {
  content: "\f208";
}
.fa-angellist:before {
  content: "\f209";
}
.fa-cc:before {
  content: "\f20a";
}
.fa-shekel:before,
.fa-sheqel:before,
.fa-ils:before {
  content: "\f20b";
}
.fa-meanpath:before {
  content: "\f20c";
}
.fa-buysellads:before {
  content: "\f20d";
}
.fa-connectdevelop:before {
  content: "\f20e";
}
.fa-dashcube:before {
  content: "\f210";
}
.fa-forumbee:before {
  content: "\f211";
}
.fa-leanpub:before {
  content: "\f212";
}
.fa-sellsy:before {
  content: "\f213";
}
.fa-shirtsinbulk:before {
  content: "\f214";
}
.fa-simplybuilt:before {
  content: "\f215";
}
.fa-skyatlas:before {
  content: "\f216";
}
.fa-cart-plus:before {
  content: "\f217";
}
.fa-cart-arrow-down:before {
  content: "\f218";
}
.fa-diamond:before {
  content: "\f219";
}
.fa-ship:before {
  content: "\f21a";
}
.fa-user-secret:before {
  content: "\f21b";
}
.fa-motorcycle:before {
  content: "\f21c";
}
.fa-street-view:before {
  content: "\f21d";
}
.fa-heartbeat:before {
  content: "\f21e";
}
.fa-venus:before {
  content: "\f221";
}
.fa-mars:before {
  content: "\f222";
}
.fa-mercury:before {
  content: "\f223";
}
.fa-intersex:before,
.fa-transgender:before {
  content: "\f224";
}
.fa-transgender-alt:before {
  content: "\f225";
}
.fa-venus-double:before {
  content: "\f226";
}
.fa-mars-double:before {
  content: "\f227";
}
.fa-venus-mars:before {
  content: "\f228";
}
.fa-mars-stroke:before {
  content: "\f229";
}
.fa-mars-stroke-v:before {
  content: "\f22a";
}
.fa-mars-stroke-h:before {
  content: "\f22b";
}
.fa-neuter:before {
  content: "\f22c";
}
.fa-genderless:before {
  content: "\f22d";
}
.fa-facebook-official:before {
  content: "\f230";
}
.fa-pinterest-p:before {
  content: "\f231";
}
.fa-whatsapp:before {
  content: "\f232";
}
.fa-server:before {
  content: "\f233";
}
.fa-user-plus:before {
  content: "\f234";
}
.fa-user-times:before {
  content: "\f235";
}
.fa-hotel:before,
.fa-bed:before {
  content: "\f236";
}
.fa-viacoin:before {
  content: "\f237";
}
.fa-train:before {
  content: "\f238";
}
.fa-subway:before {
  content: "\f239";
}
.fa-medium:before {
  content: "\f23a";
}
.fa-yc:before,
.fa-y-combinator:before {
  content: "\f23b";
}
.fa-optin-monster:before {
  content: "\f23c";
}
.fa-opencart:before {
  content: "\f23d";
}
.fa-expeditedssl:before {
  content: "\f23e";
}
.fa-battery-4:before,
.fa-battery:before,
.fa-battery-full:before {
  content: "\f240";
}
.fa-battery-3:before,
.fa-battery-three-quarters:before {
  content: "\f241";
}
.fa-battery-2:before,
.fa-battery-half:before {
  content: "\f242";
}
.fa-battery-1:before,
.fa-battery-quarter:before {
  content: "\f243";
}
.fa-battery-0:before,
.fa-battery-empty:before {
  content: "\f244";
}
.fa-mouse-pointer:before {
  content: "\f245";
}
.fa-i-cursor:before {
  content: "\f246";
}
.fa-object-group:before {
  content: "\f247";
}
.fa-object-ungroup:before {
  content: "\f248";
}
.fa-sticky-note:before {
  content: "\f249";
}
.fa-sticky-note-o:before {
  content: "\f24a";
}
.fa-cc-jcb:before {
  content: "\f24b";
}
.fa-cc-diners-club:before {
  content: "\f24c";
}
.fa-clone:before {
  content: "\f24d";
}
.fa-balance-scale:before {
  content: "\f24e";
}
.fa-hourglass-o:before {
  content: "\f250";
}
.fa-hourglass-1:before,
.fa-hourglass-start:before {
  content: "\f251";
}
.fa-hourglass-2:before,
.fa-hourglass-half:before {
  content: "\f252";
}
.fa-hourglass-3:before,
.fa-hourglass-end:before {
  content: "\f253";
}
.fa-hourglass:before {
  content: "\f254";
}
.fa-hand-grab-o:before,
.fa-hand-rock-o:before {
  content: "\f255";
}
.fa-hand-stop-o:before,
.fa-hand-paper-o:before {
  content: "\f256";
}
.fa-hand-scissors-o:before {
  content: "\f257";
}
.fa-hand-lizard-o:before {
  content: "\f258";
}
.fa-hand-spock-o:before {
  content: "\f259";
}
.fa-hand-pointer-o:before {
  content: "\f25a";
}
.fa-hand-peace-o:before {
  content: "\f25b";
}
.fa-trademark:before {
  content: "\f25c";
}
.fa-registered:before {
  content: "\f25d";
}
.fa-creative-commons:before {
  content: "\f25e";
}
.fa-gg:before {
  content: "\f260";
}
.fa-gg-circle:before {
  content: "\f261";
}
.fa-tripadvisor:before {
  content: "\f262";
}
.fa-odnoklassniki:before {
  content: "\f263";
}
.fa-odnoklassniki-square:before {
  content: "\f264";
}
.fa-get-pocket:before {
  content: "\f265";
}
.fa-wikipedia-w:before {
  content: "\f266";
}
.fa-safari:before {
  content: "\f267";
}
.fa-chrome:before {
  content: "\f268";
}
.fa-firefox:before {
  content: "\f269";
}
.fa-opera:before {
  content: "\f26a";
}
.fa-internet-explorer:before {
  content: "\f26b";
}
.fa-tv:before,
.fa-television:before {
  content: "\f26c";
}
.fa-contao:before {
  content: "\f26d";
}
.fa-500px:before {
  content: "\f26e";
}
.fa-amazon:before {
  content: "\f270";
}
.fa-calendar-plus-o:before {
  content: "\f271";
}
.fa-calendar-minus-o:before {
  content: "\f272";
}
.fa-calendar-times-o:before {
  content: "\f273";
}
.fa-calendar-check-o:before {
  content: "\f274";
}
.fa-industry:before {
  content: "\f275";
}
.fa-map-pin:before {
  content: "\f276";
}
.fa-map-signs:before {
  content: "\f277";
}
.fa-map-o:before {
  content: "\f278";
}
.fa-map:before {
  content: "\f279";
}
.fa-commenting:before {
  content: "\f27a";
}
.fa-commenting-o:before {
  content: "\f27b";
}
.fa-houzz:before {
  content: "\f27c";
}
.fa-vimeo:before {
  content: "\f27d";
}
.fa-black-tie:before {
  content: "\f27e";
}
.fa-fonticons:before {
  content: "\f280";
}
.fa-reddit-alien:before {
  content: "\f281";
}
.fa-edge:before {
  content: "\f282";
}
.fa-credit-card-alt:before {
  content: "\f283";
}
.fa-codiepie:before {
  content: "\f284";
}
.fa-modx:before {
  content: "\f285";
}
.fa-fort-awesome:before {
  content: "\f286";
}
.fa-usb:before {
  content: "\f287";
}
.fa-product-hunt:before {
  content: "\f288";
}
.fa-mixcloud:before {
  content: "\f289";
}
.fa-scribd:before {
  content: "\f28a";
}
.fa-pause-circle:before {
  content: "\f28b";
}
.fa-pause-circle-o:before {
  content: "\f28c";
}
.fa-stop-circle:before {
  content: "\f28d";
}
.fa-stop-circle-o:before {
  content: "\f28e";
}
.fa-shopping-bag:before {
  content: "\f290";
}
.fa-shopping-basket:before {
  content: "\f291";
}
.fa-hashtag:before {
  content: "\f292";
}
.fa-bluetooth:before {
  content: "\f293";
}
.fa-bluetooth-b:before {
  content: "\f294";
}
.fa-percent:before {
  content: "\f295";
}
.fa-gitlab:before {
  content: "\f296";
}
.fa-wpbeginner:before {
  content: "\f297";
}
.fa-wpforms:before {
  content: "\f298";
}
.fa-envira:before {
  content: "\f299";
}
.fa-universal-access:before {
  content: "\f29a";
}
.fa-wheelchair-alt:before {
  content: "\f29b";
}
.fa-question-circle-o:before {
  content: "\f29c";
}
.fa-blind:before {
  content: "\f29d";
}
.fa-audio-description:before {
  content: "\f29e";
}
.fa-volume-control-phone:before {
  content: "\f2a0";
}
.fa-braille:before {
  content: "\f2a1";
}
.fa-assistive-listening-systems:before {
  content: "\f2a2";
}
.fa-asl-interpreting:before,
.fa-american-sign-language-interpreting:before {
  content: "\f2a3";
}
.fa-deafness:before,
.fa-hard-of-hearing:before,
.fa-deaf:before {
  content: "\f2a4";
}
.fa-glide:before {
  content: "\f2a5";
}
.fa-glide-g:before {
  content: "\f2a6";
}
.fa-signing:before,
.fa-sign-language:before {
  content: "\f2a7";
}
.fa-low-vision:before {
  content: "\f2a8";
}
.fa-viadeo:before {
  content: "\f2a9";
}
.fa-viadeo-square:before {
  content: "\f2aa";
}
.fa-snapchat:before {
  content: "\f2ab";
}
.fa-snapchat-ghost:before {
  content: "\f2ac";
}
.fa-snapchat-square:before {
  content: "\f2ad";
}
.fa-pied-piper:before {
  content: "\f2ae";
}
.fa-first-order:before {
  content: "\f2b0";
}
.fa-yoast:before {
  content: "\f2b1";
}
.fa-themeisle:before {
  content: "\f2b2";
}
.fa-google-plus-circle:before,
.fa-google-plus-official:before {
  content: "\f2b3";
}
.fa-fa:before,
.fa-font-awesome:before {
  content: "\f2b4";
}
.fa-handshake-o:before {
  content: "\f2b5";
}
.fa-envelope-open:before {
  content: "\f2b6";
}
.fa-envelope-open-o:before {
  content: "\f2b7";
}
.fa-linode:before {
  content: "\f2b8";
}
.fa-address-book:before {
  content: "\f2b9";
}
.fa-address-book-o:before {
  content: "\f2ba";
}
.fa-vcard:before,
.fa-address-card:before {
  content: "\f2bb";
}
.fa-vcard-o:before,
.fa-address-card-o:before {
  content: "\f2bc";
}
.fa-user-circle:before {
  content: "\f2bd";
}
.fa-user-circle-o:before {
  content: "\f2be";
}
.fa-user-o:before {
  content: "\f2c0";
}
.fa-id-badge:before {
  content: "\f2c1";
}
.fa-drivers-license:before,
.fa-id-card:before {
  content: "\f2c2";
}
.fa-drivers-license-o:before,
.fa-id-card-o:before {
  content: "\f2c3";
}
.fa-quora:before {
  content: "\f2c4";
}
.fa-free-code-camp:before {
  content: "\f2c5";
}
.fa-telegram:before {
  content: "\f2c6";
}
.fa-thermometer-4:before,
.fa-thermometer:before,
.fa-thermometer-full:before {
  content: "\f2c7";
}
.fa-thermometer-3:before,
.fa-thermometer-three-quarters:before {
  content: "\f2c8";
}
.fa-thermometer-2:before,
.fa-thermometer-half:before {
  content: "\f2c9";
}
.fa-thermometer-1:before,
.fa-thermometer-quarter:before {
  content: "\f2ca";
}
.fa-thermometer-0:before,
.fa-thermometer-empty:before {
  content: "\f2cb";
}
.fa-shower:before {
  content: "\f2cc";
}
.fa-bathtub:before,
.fa-s15:before,
.fa-bath:before {
  content: "\f2cd";
}
.fa-podcast:before {
  content: "\f2ce";
}
.fa-window-maximize:before {
  content: "\f2d0";
}
.fa-window-minimize:before {
  content: "\f2d1";
}
.fa-window-restore:before {
  content: "\f2d2";
}
.fa-times-rectangle:before,
.fa-window-close:before {
  content: "\f2d3";
}
.fa-times-rectangle-o:before,
.fa-window-close-o:before {
  content: "\f2d4";
}
.fa-bandcamp:before {
  content: "\f2d5";
}
.fa-grav:before {
  content: "\f2d6";
}
.fa-etsy:before {
  content: "\f2d7";
}
.fa-imdb:before {
  content: "\f2d8";
}
.fa-ravelry:before {
  content: "\f2d9";
}
.fa-eercast:before {
  content: "\f2da";
}
.fa-microchip:before {
  content: "\f2db";
}
.fa-snowflake-o:before {
  content: "\f2dc";
}
.fa-superpowers:before {
  content: "\f2dd";
}
.fa-wpexplorer:before {
  content: "\f2de";
}
.fa-meetup:before {
  content: "\f2e0";
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
/*!
*
* IPython base
*
*/
.modal.fade .modal-dialog {
  -webkit-transform: translate(0, 0);
  -ms-transform: translate(0, 0);
  -o-transform: translate(0, 0);
  transform: translate(0, 0);
}
code {
  color: #000;
}
pre {
  font-size: inherit;
  line-height: inherit;
}
label {
  font-weight: normal;
}
/* Make the page background atleast 100% the height of the view port */
/* Make the page itself atleast 70% the height of the view port */
.border-box-sizing {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
.corner-all {
  border-radius: 2px;
}
.no-padding {
  padding: 0px;
}
/* Flexible box model classes */
/* Taken from Alex Russell http://infrequently.org/2009/08/css-3-progress/ */
/* This file is a compatability layer.  It allows the usage of flexible box
model layouts accross multiple browsers, including older browsers.  The newest,
universal implementation of the flexible box model is used when available (see
`Modern browsers` comments below).  Browsers that are known to implement this
new spec completely include:

    Firefox 28.0+
    Chrome 29.0+
    Internet Explorer 11+
    Opera 17.0+

Browsers not listed, including Safari, are supported via the styling under the
`Old browsers` comments below.
*/
.hbox {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
.hbox > * {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
}
.vbox {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
.vbox > * {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
}
.hbox.reverse,
.vbox.reverse,
.reverse {
  /* Old browsers */
  -webkit-box-direction: reverse;
  -moz-box-direction: reverse;
  box-direction: reverse;
  /* Modern browsers */
  flex-direction: row-reverse;
}
.hbox.box-flex0,
.vbox.box-flex0,
.box-flex0 {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
  width: auto;
}
.hbox.box-flex1,
.vbox.box-flex1,
.box-flex1 {
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
.hbox.box-flex,
.vbox.box-flex,
.box-flex {
  /* Old browsers */
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
.hbox.box-flex2,
.vbox.box-flex2,
.box-flex2 {
  /* Old browsers */
  -webkit-box-flex: 2;
  -moz-box-flex: 2;
  box-flex: 2;
  /* Modern browsers */
  flex: 2;
}
.box-group1 {
  /*  Deprecated */
  -webkit-box-flex-group: 1;
  -moz-box-flex-group: 1;
  box-flex-group: 1;
}
.box-group2 {
  /* Deprecated */
  -webkit-box-flex-group: 2;
  -moz-box-flex-group: 2;
  box-flex-group: 2;
}
.hbox.start,
.vbox.start,
.start {
  /* Old browsers */
  -webkit-box-pack: start;
  -moz-box-pack: start;
  box-pack: start;
  /* Modern browsers */
  justify-content: flex-start;
}
.hbox.end,
.vbox.end,
.end {
  /* Old browsers */
  -webkit-box-pack: end;
  -moz-box-pack: end;
  box-pack: end;
  /* Modern browsers */
  justify-content: flex-end;
}
.hbox.center,
.vbox.center,
.center {
  /* Old browsers */
  -webkit-box-pack: center;
  -moz-box-pack: center;
  box-pack: center;
  /* Modern browsers */
  justify-content: center;
}
.hbox.baseline,
.vbox.baseline,
.baseline {
  /* Old browsers */
  -webkit-box-pack: baseline;
  -moz-box-pack: baseline;
  box-pack: baseline;
  /* Modern browsers */
  justify-content: baseline;
}
.hbox.stretch,
.vbox.stretch,
.stretch {
  /* Old browsers */
  -webkit-box-pack: stretch;
  -moz-box-pack: stretch;
  box-pack: stretch;
  /* Modern browsers */
  justify-content: stretch;
}
.hbox.align-start,
.vbox.align-start,
.align-start {
  /* Old browsers */
  -webkit-box-align: start;
  -moz-box-align: start;
  box-align: start;
  /* Modern browsers */
  align-items: flex-start;
}
.hbox.align-end,
.vbox.align-end,
.align-end {
  /* Old browsers */
  -webkit-box-align: end;
  -moz-box-align: end;
  box-align: end;
  /* Modern browsers */
  align-items: flex-end;
}
.hbox.align-center,
.vbox.align-center,
.align-center {
  /* Old browsers */
  -webkit-box-align: center;
  -moz-box-align: center;
  box-align: center;
  /* Modern browsers */
  align-items: center;
}
.hbox.align-baseline,
.vbox.align-baseline,
.align-baseline {
  /* Old browsers */
  -webkit-box-align: baseline;
  -moz-box-align: baseline;
  box-align: baseline;
  /* Modern browsers */
  align-items: baseline;
}
.hbox.align-stretch,
.vbox.align-stretch,
.align-stretch {
  /* Old browsers */
  -webkit-box-align: stretch;
  -moz-box-align: stretch;
  box-align: stretch;
  /* Modern browsers */
  align-items: stretch;
}
div.error {
  margin: 2em;
  text-align: center;
}
div.error > h1 {
  font-size: 500%;
  line-height: normal;
}
div.error > p {
  font-size: 200%;
  line-height: normal;
}
div.traceback-wrapper {
  text-align: left;
  max-width: 800px;
  margin: auto;
}
div.traceback-wrapper pre.traceback {
  max-height: 600px;
  overflow: auto;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
body {
  background-color: #fff;
  /* This makes sure that the body covers the entire window and needs to
       be in a different element than the display: box in wrapper below */
  position: absolute;
  left: 0px;
  right: 0px;
  top: 0px;
  bottom: 0px;
  overflow: visible;
}
body > #header {
  /* Initially hidden to prevent FLOUC */
  display: none;
  background-color: #fff;
  /* Display over codemirror */
  position: relative;
  z-index: 100;
}
body > #header #header-container {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  padding: 5px;
  padding-bottom: 5px;
  padding-top: 5px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
body > #header .header-bar {
  width: 100%;
  height: 1px;
  background: #e7e7e7;
  margin-bottom: -1px;
}
@media print {
  body > #header {
    display: none !important;
  }
}
#header-spacer {
  width: 100%;
  visibility: hidden;
}
@media print {
  #header-spacer {
    display: none;
  }
}
#ipython_notebook {
  padding-left: 0px;
  padding-top: 1px;
  padding-bottom: 1px;
}
[dir="rtl"] #ipython_notebook {
  margin-right: 10px;
  margin-left: 0;
}
[dir="rtl"] #ipython_notebook.pull-left {
  float: right !important;
  float: right;
}
.flex-spacer {
  flex: 1;
}
#noscript {
  width: auto;
  padding-top: 16px;
  padding-bottom: 16px;
  text-align: center;
  font-size: 22px;
  color: red;
  font-weight: bold;
}
#ipython_notebook img {
  height: 28px;
}
#site {
  width: 100%;
  display: none;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  overflow: auto;
}
@media print {
  #site {
    height: auto !important;
  }
}
/* Smaller buttons */
.ui-button .ui-button-text {
  padding: 0.2em 0.8em;
  font-size: 77%;
}
input.ui-button {
  padding: 0.3em 0.9em;
}
span#kernel_logo_widget {
  margin: 0 10px;
}
span#login_widget {
  float: right;
}
[dir="rtl"] span#login_widget {
  float: left;
}
span#login_widget > .button,
#logout {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
span#login_widget > .button:focus,
#logout:focus,
span#login_widget > .button.focus,
#logout.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
span#login_widget > .button:hover,
#logout:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
span#login_widget > .button:active,
#logout:active,
span#login_widget > .button.active,
#logout.active,
.open > .dropdown-togglespan#login_widget > .button,
.open > .dropdown-toggle#logout {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
span#login_widget > .button:active:hover,
#logout:active:hover,
span#login_widget > .button.active:hover,
#logout.active:hover,
.open > .dropdown-togglespan#login_widget > .button:hover,
.open > .dropdown-toggle#logout:hover,
span#login_widget > .button:active:focus,
#logout:active:focus,
span#login_widget > .button.active:focus,
#logout.active:focus,
.open > .dropdown-togglespan#login_widget > .button:focus,
.open > .dropdown-toggle#logout:focus,
span#login_widget > .button:active.focus,
#logout:active.focus,
span#login_widget > .button.active.focus,
#logout.active.focus,
.open > .dropdown-togglespan#login_widget > .button.focus,
.open > .dropdown-toggle#logout.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
span#login_widget > .button:active,
#logout:active,
span#login_widget > .button.active,
#logout.active,
.open > .dropdown-togglespan#login_widget > .button,
.open > .dropdown-toggle#logout {
  background-image: none;
}
span#login_widget > .button.disabled:hover,
#logout.disabled:hover,
span#login_widget > .button[disabled]:hover,
#logout[disabled]:hover,
fieldset[disabled] span#login_widget > .button:hover,
fieldset[disabled] #logout:hover,
span#login_widget > .button.disabled:focus,
#logout.disabled:focus,
span#login_widget > .button[disabled]:focus,
#logout[disabled]:focus,
fieldset[disabled] span#login_widget > .button:focus,
fieldset[disabled] #logout:focus,
span#login_widget > .button.disabled.focus,
#logout.disabled.focus,
span#login_widget > .button[disabled].focus,
#logout[disabled].focus,
fieldset[disabled] span#login_widget > .button.focus,
fieldset[disabled] #logout.focus {
  background-color: #fff;
  border-color: #ccc;
}
span#login_widget > .button .badge,
#logout .badge {
  color: #fff;
  background-color: #333;
}
.nav-header {
  text-transform: none;
}
#header > span {
  margin-top: 10px;
}
.modal_stretch .modal-dialog {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  min-height: 80vh;
}
.modal_stretch .modal-dialog .modal-body {
  max-height: calc(100vh - 200px);
  overflow: auto;
  flex: 1;
}
.modal-header {
  cursor: move;
}
@media (min-width: 768px) {
  .modal .modal-dialog {
    width: 700px;
  }
}
@media (min-width: 768px) {
  select.form-control {
    margin-left: 12px;
    margin-right: 12px;
  }
}
/*!
*
* IPython auth
*
*/
.center-nav {
  display: inline-block;
  margin-bottom: -4px;
}
[dir="rtl"] .center-nav form.pull-left {
  float: right !important;
  float: right;
}
[dir="rtl"] .center-nav .navbar-text {
  float: right;
}
[dir="rtl"] .navbar-inner {
  text-align: right;
}
[dir="rtl"] div.text-left {
  text-align: right;
}
/*!
*
* IPython tree view
*
*/
/* We need an invisible input field on top of the sentense*/
/* "Drag file onto the list ..." */
.alternate_upload {
  background-color: none;
  display: inline;
}
.alternate_upload.form {
  padding: 0;
  margin: 0;
}
.alternate_upload input.fileinput {
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  overflow: hidden;
  cursor: pointer;
  opacity: 0;
  z-index: 2;
}
.alternate_upload .btn-xs > input.fileinput {
  margin: -1px -5px;
}
.alternate_upload .btn-upload {
  position: relative;
  height: 22px;
}
::-webkit-file-upload-button {
  cursor: pointer;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
ul#tabs {
  margin-bottom: 4px;
}
ul#tabs a {
  padding-top: 6px;
  padding-bottom: 4px;
}
[dir="rtl"] ul#tabs.nav-tabs > li {
  float: right;
}
[dir="rtl"] ul#tabs.nav.nav-tabs {
  padding-right: 0;
}
ul.breadcrumb a:focus,
ul.breadcrumb a:hover {
  text-decoration: none;
}
ul.breadcrumb i.icon-home {
  font-size: 16px;
  margin-right: 4px;
}
ul.breadcrumb span {
  color: #5e5e5e;
}
.list_toolbar {
  padding: 4px 0 4px 0;
  vertical-align: middle;
}
.list_toolbar .tree-buttons {
  padding-top: 1px;
}
[dir="rtl"] .list_toolbar .tree-buttons .pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .list_toolbar .col-sm-4,
[dir="rtl"] .list_toolbar .col-sm-8 {
  float: right;
}
.dynamic-buttons {
  padding-top: 3px;
  display: inline-block;
}
.list_toolbar [class*="span"] {
  min-height: 24px;
}
.list_header {
  font-weight: bold;
  background-color: #EEE;
}
.list_placeholder {
  font-weight: bold;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
}
.list_container {
  margin-top: 4px;
  margin-bottom: 20px;
  border: 1px solid #ddd;
  border-radius: 2px;
}
.list_container > div {
  border-bottom: 1px solid #ddd;
}
.list_container > div:hover .list-item {
  background-color: red;
}
.list_container > div:last-child {
  border: none;
}
.list_item:hover .list_item {
  background-color: #ddd;
}
.list_item a {
  text-decoration: none;
}
.list_item:hover {
  background-color: #fafafa;
}
.list_header > div,
.list_item > div {
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
  line-height: 22px;
}
.list_header > div input,
.list_item > div input {
  margin-right: 7px;
  margin-left: 14px;
  vertical-align: text-bottom;
  line-height: 22px;
  position: relative;
  top: -1px;
}
.list_header > div .item_link,
.list_item > div .item_link {
  margin-left: -1px;
  vertical-align: baseline;
  line-height: 22px;
}
[dir="rtl"] .list_item > div input {
  margin-right: 0;
}
.new-file input[type=checkbox] {
  visibility: hidden;
}
.item_name {
  line-height: 22px;
  height: 24px;
}
.item_icon {
  font-size: 14px;
  color: #5e5e5e;
  margin-right: 7px;
  margin-left: 7px;
  line-height: 22px;
  vertical-align: baseline;
}
.item_modified {
  margin-right: 7px;
  margin-left: 7px;
}
[dir="rtl"] .item_modified.pull-right {
  float: left !important;
  float: left;
}
.item_buttons {
  line-height: 1em;
  margin-left: -5px;
}
.item_buttons .btn,
.item_buttons .btn-group,
.item_buttons .input-group {
  float: left;
}
.item_buttons > .btn,
.item_buttons > .btn-group,
.item_buttons > .input-group {
  margin-left: 5px;
}
.item_buttons .btn {
  min-width: 13ex;
}
.item_buttons .running-indicator {
  padding-top: 4px;
  color: #5cb85c;
}
.item_buttons .kernel-name {
  padding-top: 4px;
  color: #5bc0de;
  margin-right: 7px;
  float: left;
}
[dir="rtl"] .item_buttons.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .item_buttons .kernel-name {
  margin-left: 7px;
  float: right;
}
.toolbar_info {
  height: 24px;
  line-height: 24px;
}
.list_item input:not([type=checkbox]) {
  padding-top: 3px;
  padding-bottom: 3px;
  height: 22px;
  line-height: 14px;
  margin: 0px;
}
.highlight_text {
  color: blue;
}
#project_name {
  display: inline-block;
  padding-left: 7px;
  margin-left: -2px;
}
#project_name > .breadcrumb {
  padding: 0px;
  margin-bottom: 0px;
  background-color: transparent;
  font-weight: bold;
}
.sort_button {
  display: inline-block;
  padding-left: 7px;
}
[dir="rtl"] .sort_button.pull-right {
  float: left !important;
  float: left;
}
#tree-selector {
  padding-right: 0px;
}
#button-select-all {
  min-width: 50px;
}
[dir="rtl"] #button-select-all.btn {
  float: right ;
}
#select-all {
  margin-left: 7px;
  margin-right: 2px;
  margin-top: 2px;
  height: 16px;
}
[dir="rtl"] #select-all.pull-left {
  float: right !important;
  float: right;
}
.menu_icon {
  margin-right: 2px;
}
.tab-content .row {
  margin-left: 0px;
  margin-right: 0px;
}
.folder_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f114";
}
.folder_icon:before.fa-pull-left {
  margin-right: .3em;
}
.folder_icon:before.fa-pull-right {
  margin-left: .3em;
}
.folder_icon:before.pull-left {
  margin-right: .3em;
}
.folder_icon:before.pull-right {
  margin-left: .3em;
}
.notebook_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f02d";
  position: relative;
  top: -1px;
}
.notebook_icon:before.fa-pull-left {
  margin-right: .3em;
}
.notebook_icon:before.fa-pull-right {
  margin-left: .3em;
}
.notebook_icon:before.pull-left {
  margin-right: .3em;
}
.notebook_icon:before.pull-right {
  margin-left: .3em;
}
.running_notebook_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f02d";
  position: relative;
  top: -1px;
  color: #5cb85c;
}
.running_notebook_icon:before.fa-pull-left {
  margin-right: .3em;
}
.running_notebook_icon:before.fa-pull-right {
  margin-left: .3em;
}
.running_notebook_icon:before.pull-left {
  margin-right: .3em;
}
.running_notebook_icon:before.pull-right {
  margin-left: .3em;
}
.file_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f016";
  position: relative;
  top: -2px;
}
.file_icon:before.fa-pull-left {
  margin-right: .3em;
}
.file_icon:before.fa-pull-right {
  margin-left: .3em;
}
.file_icon:before.pull-left {
  margin-right: .3em;
}
.file_icon:before.pull-right {
  margin-left: .3em;
}
#notebook_toolbar .pull-right {
  padding-top: 0px;
  margin-right: -1px;
}
ul#new-menu {
  left: auto;
  right: 0;
}
#new-menu .dropdown-header {
  font-size: 10px;
  border-bottom: 1px solid #e5e5e5;
  padding: 0 0 3px;
  margin: -3px 20px 0;
}
.kernel-menu-icon {
  padding-right: 12px;
  width: 24px;
  content: "\f096";
}
.kernel-menu-icon:before {
  content: "\f096";
}
.kernel-menu-icon-current:before {
  content: "\f00c";
}
#tab_content {
  padding-top: 20px;
}
#running .panel-group .panel {
  margin-top: 3px;
  margin-bottom: 1em;
}
#running .panel-group .panel .panel-heading {
  background-color: #EEE;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
  line-height: 22px;
}
#running .panel-group .panel .panel-heading a:focus,
#running .panel-group .panel .panel-heading a:hover {
  text-decoration: none;
}
#running .panel-group .panel .panel-body {
  padding: 0px;
}
#running .panel-group .panel .panel-body .list_container {
  margin-top: 0px;
  margin-bottom: 0px;
  border: 0px;
  border-radius: 0px;
}
#running .panel-group .panel .panel-body .list_container .list_item {
  border-bottom: 1px solid #ddd;
}
#running .panel-group .panel .panel-body .list_container .list_item:last-child {
  border-bottom: 0px;
}
.delete-button {
  display: none;
}
.duplicate-button {
  display: none;
}
.rename-button {
  display: none;
}
.move-button {
  display: none;
}
.download-button {
  display: none;
}
.shutdown-button {
  display: none;
}
.dynamic-instructions {
  display: inline-block;
  padding-top: 4px;
}
/*!
*
* IPython text editor webapp
*
*/
.selected-keymap i.fa {
  padding: 0px 5px;
}
.selected-keymap i.fa:before {
  content: "\f00c";
}
#mode-menu {
  overflow: auto;
  max-height: 20em;
}
.edit_app #header {
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
.edit_app #menubar .navbar {
  /* Use a negative 1 bottom margin, so the border overlaps the border of the
    header */
  margin-bottom: -1px;
}
.dirty-indicator {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator.pull-left {
  margin-right: .3em;
}
.dirty-indicator.pull-right {
  margin-left: .3em;
}
.dirty-indicator-dirty {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator-dirty.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-dirty.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-dirty.pull-left {
  margin-right: .3em;
}
.dirty-indicator-dirty.pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator-clean.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean.pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean.pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f00c";
}
.dirty-indicator-clean:before.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean:before.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean:before.pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean:before.pull-right {
  margin-left: .3em;
}
#filename {
  font-size: 16pt;
  display: table;
  padding: 0px 5px;
}
#current-mode {
  padding-left: 5px;
  padding-right: 5px;
}
#texteditor-backdrop {
  padding-top: 20px;
  padding-bottom: 20px;
}
@media not print {
  #texteditor-backdrop {
    background-color: #EEE;
  }
}
@media print {
  #texteditor-backdrop #texteditor-container .CodeMirror-gutter,
  #texteditor-backdrop #texteditor-container .CodeMirror-gutters {
    background-color: #fff;
  }
}
@media not print {
  #texteditor-backdrop #texteditor-container .CodeMirror-gutter,
  #texteditor-backdrop #texteditor-container .CodeMirror-gutters {
    background-color: #fff;
  }
}
@media not print {
  #texteditor-backdrop #texteditor-container {
    padding: 0px;
    background-color: #fff;
    -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
    box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  }
}
.CodeMirror-dialog {
  background-color: #fff;
}
/*!
*
* IPython notebook
*
*/
/* CSS font colors for translated ANSI escape sequences */
/* The color values are a mix of
   http://www.xcolors.net/dl/baskerville-ivorylight and
   http://www.xcolors.net/dl/euphrasia */
.ansi-black-fg {
  color: #3E424D;
}
.ansi-black-bg {
  background-color: #3E424D;
}
.ansi-black-intense-fg {
  color: #282C36;
}
.ansi-black-intense-bg {
  background-color: #282C36;
}
.ansi-red-fg {
  color: #E75C58;
}
.ansi-red-bg {
  background-color: #E75C58;
}
.ansi-red-intense-fg {
  color: #B22B31;
}
.ansi-red-intense-bg {
  background-color: #B22B31;
}
.ansi-green-fg {
  color: #00A250;
}
.ansi-green-bg {
  background-color: #00A250;
}
.ansi-green-intense-fg {
  color: #007427;
}
.ansi-green-intense-bg {
  background-color: #007427;
}
.ansi-yellow-fg {
  color: #DDB62B;
}
.ansi-yellow-bg {
  background-color: #DDB62B;
}
.ansi-yellow-intense-fg {
  color: #B27D12;
}
.ansi-yellow-intense-bg {
  background-color: #B27D12;
}
.ansi-blue-fg {
  color: #208FFB;
}
.ansi-blue-bg {
  background-color: #208FFB;
}
.ansi-blue-intense-fg {
  color: #0065CA;
}
.ansi-blue-intense-bg {
  background-color: #0065CA;
}
.ansi-magenta-fg {
  color: #D160C4;
}
.ansi-magenta-bg {
  background-color: #D160C4;
}
.ansi-magenta-intense-fg {
  color: #A03196;
}
.ansi-magenta-intense-bg {
  background-color: #A03196;
}
.ansi-cyan-fg {
  color: #60C6C8;
}
.ansi-cyan-bg {
  background-color: #60C6C8;
}
.ansi-cyan-intense-fg {
  color: #258F8F;
}
.ansi-cyan-intense-bg {
  background-color: #258F8F;
}
.ansi-white-fg {
  color: #C5C1B4;
}
.ansi-white-bg {
  background-color: #C5C1B4;
}
.ansi-white-intense-fg {
  color: #A1A6B2;
}
.ansi-white-intense-bg {
  background-color: #A1A6B2;
}
.ansi-default-inverse-fg {
  color: #FFFFFF;
}
.ansi-default-inverse-bg {
  background-color: #000000;
}
.ansi-bold {
  font-weight: bold;
}
.ansi-underline {
  text-decoration: underline;
}
/* The following styles are deprecated an will be removed in a future version */
.ansibold {
  font-weight: bold;
}
.ansi-inverse {
  outline: 0.5px dotted;
}
/* use dark versions for foreground, to improve visibility */
.ansiblack {
  color: black;
}
.ansired {
  color: darkred;
}
.ansigreen {
  color: darkgreen;
}
.ansiyellow {
  color: #c4a000;
}
.ansiblue {
  color: darkblue;
}
.ansipurple {
  color: darkviolet;
}
.ansicyan {
  color: steelblue;
}
.ansigray {
  color: gray;
}
/* and light for background, for the same reason */
.ansibgblack {
  background-color: black;
}
.ansibgred {
  background-color: red;
}
.ansibggreen {
  background-color: green;
}
.ansibgyellow {
  background-color: yellow;
}
.ansibgblue {
  background-color: blue;
}
.ansibgpurple {
  background-color: magenta;
}
.ansibgcyan {
  background-color: cyan;
}
.ansibggray {
  background-color: gray;
}
div.cell {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  border-radius: 2px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  border-width: 1px;
  border-style: solid;
  border-color: transparent;
  width: 100%;
  padding: 5px;
  /* This acts as a spacer between cells, that is outside the border */
  margin: 0px;
  outline: none;
  position: relative;
  overflow: visible;
}
div.cell:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: transparent;
}
div.cell.jupyter-soft-selected {
  border-left-color: #E3F2FD;
  border-left-width: 1px;
  padding-left: 5px;
  border-right-color: #E3F2FD;
  border-right-width: 1px;
  background: #E3F2FD;
}
@media print {
  div.cell.jupyter-soft-selected {
    border-color: transparent;
  }
}
div.cell.selected,
div.cell.selected.jupyter-soft-selected {
  border-color: #ababab;
}
div.cell.selected:before,
div.cell.selected.jupyter-soft-selected:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: #42A5F5;
}
@media print {
  div.cell.selected,
  div.cell.selected.jupyter-soft-selected {
    border-color: transparent;
  }
}
.edit_mode div.cell.selected {
  border-color: #66BB6A;
}
.edit_mode div.cell.selected:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: #66BB6A;
}
@media print {
  .edit_mode div.cell.selected {
    border-color: transparent;
  }
}
.prompt {
  /* This needs to be wide enough for 3 digit prompt numbers: In[100]: */
  min-width: 14ex;
  /* This padding is tuned to match the padding on the CodeMirror editor. */
  padding: 0.4em;
  margin: 0px;
  font-family: monospace;
  text-align: right;
  /* This has to match that of the the CodeMirror class line-height below */
  line-height: 1.21429em;
  /* Don't highlight prompt number selection */
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  /* Use default cursor */
  cursor: default;
}
@media (max-width: 540px) {
  .prompt {
    text-align: left;
  }
}
div.inner_cell {
  min-width: 0;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
/* input_area and input_prompt must match in top border and margin for alignment */
div.input_area {
  border: 1px solid #cfcfcf;
  border-radius: 2px;
  background: #f7f7f7;
  line-height: 1.21429em;
}
/* This is needed so that empty prompt areas can collapse to zero height when there
   is no content in the output_subarea and the prompt. The main purpose of this is
   to make sure that empty JavaScript output_subareas have no height. */
div.prompt:empty {
  padding-top: 0;
  padding-bottom: 0;
}
div.unrecognized_cell {
  padding: 5px 5px 5px 0px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
div.unrecognized_cell .inner_cell {
  border-radius: 2px;
  padding: 5px;
  font-weight: bold;
  color: red;
  border: 1px solid #cfcfcf;
  background: #eaeaea;
}
div.unrecognized_cell .inner_cell a {
  color: inherit;
  text-decoration: none;
}
div.unrecognized_cell .inner_cell a:hover {
  color: inherit;
  text-decoration: none;
}
@media (max-width: 540px) {
  div.unrecognized_cell > div.prompt {
    display: none;
  }
}
div.code_cell {
  /* avoid page breaking on code cells when printing */
}
@media print {
  div.code_cell {
    page-break-inside: avoid;
  }
}
/* any special styling for code cells that are currently running goes here */
div.input {
  page-break-inside: avoid;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.input {
    /* Old browsers */
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-box-align: stretch;
    display: -moz-box;
    -moz-box-orient: vertical;
    -moz-box-align: stretch;
    display: box;
    box-orient: vertical;
    box-align: stretch;
    /* Modern browsers */
    display: flex;
    flex-direction: column;
    align-items: stretch;
  }
}
/* input_area and input_prompt must match in top border and margin for alignment */
div.input_prompt {
  color: #303F9F;
  border-top: 1px solid transparent;
}
div.input_area > div.highlight {
  margin: 0.4em;
  border: none;
  padding: 0px;
  background-color: transparent;
}
div.input_area > div.highlight > pre {
  margin: 0px;
  border: none;
  padding: 0px;
  background-color: transparent;
}
/* The following gets added to the <head> if it is detected that the user has a
 * monospace font with inconsistent normal/bold/italic height.  See
 * notebookmain.js.  Such fonts will have keywords vertically offset with
 * respect to the rest of the text.  The user should select a better font.
 * See: https://github.com/ipython/ipython/issues/1503
 *
 * .CodeMirror span {
 *      vertical-align: bottom;
 * }
 */
.CodeMirror {
  line-height: 1.21429em;
  /* Changed from 1em to our global default */
  font-size: 14px;
  height: auto;
  /* Changed to auto to autogrow */
  background: none;
  /* Changed from white to allow our bg to show through */
}
.CodeMirror-scroll {
  /*  The CodeMirror docs are a bit fuzzy on if overflow-y should be hidden or visible.*/
  /*  We have found that if it is visible, vertical scrollbars appear with font size changes.*/
  overflow-y: hidden;
  overflow-x: auto;
}
.CodeMirror-lines {
  /* In CM2, this used to be 0.4em, but in CM3 it went to 4px. We need the em value because */
  /* we have set a different line-height and want this to scale with that. */
  /* Note that this should set vertical padding only, since CodeMirror assumes
       that horizontal padding will be set on CodeMirror pre */
  padding: 0.4em 0;
}
.CodeMirror-linenumber {
  padding: 0 8px 0 4px;
}
.CodeMirror-gutters {
  border-bottom-left-radius: 2px;
  border-top-left-radius: 2px;
}
.CodeMirror pre {
  /* In CM3 this went to 4px from 0 in CM2. This sets horizontal padding only,
    use .CodeMirror-lines for vertical */
  padding: 0 0.4em;
  border: 0;
  border-radius: 0;
}
.CodeMirror-cursor {
  border-left: 1.4px solid black;
}
@media screen and (min-width: 2138px) and (max-width: 4319px) {
  .CodeMirror-cursor {
    border-left: 2px solid black;
  }
}
@media screen and (min-width: 4320px) {
  .CodeMirror-cursor {
    border-left: 4px solid black;
  }
}
/*

Original style from softwaremaniacs.org (c) Ivan Sagalaev <Maniac@SoftwareManiacs.Org>
Adapted from GitHub theme

*/
.highlight-base {
  color: #000;
}
.highlight-variable {
  color: #000;
}
.highlight-variable-2 {
  color: #1a1a1a;
}
.highlight-variable-3 {
  color: #333333;
}
.highlight-string {
  color: #BA2121;
}
.highlight-comment {
  color: #408080;
  font-style: italic;
}
.highlight-number {
  color: #080;
}
.highlight-atom {
  color: #88F;
}
.highlight-keyword {
  color: #008000;
  font-weight: bold;
}
.highlight-builtin {
  color: #008000;
}
.highlight-error {
  color: #f00;
}
.highlight-operator {
  color: #AA22FF;
  font-weight: bold;
}
.highlight-meta {
  color: #AA22FF;
}
/* previously not defined, copying from default codemirror */
.highlight-def {
  color: #00f;
}
.highlight-string-2 {
  color: #f50;
}
.highlight-qualifier {
  color: #555;
}
.highlight-bracket {
  color: #997;
}
.highlight-tag {
  color: #170;
}
.highlight-attribute {
  color: #00c;
}
.highlight-header {
  color: blue;
}
.highlight-quote {
  color: #090;
}
.highlight-link {
  color: #00c;
}
/* apply the same style to codemirror */
.cm-s-ipython span.cm-keyword {
  color: #008000;
  font-weight: bold;
}
.cm-s-ipython span.cm-atom {
  color: #88F;
}
.cm-s-ipython span.cm-number {
  color: #080;
}
.cm-s-ipython span.cm-def {
  color: #00f;
}
.cm-s-ipython span.cm-variable {
  color: #000;
}
.cm-s-ipython span.cm-operator {
  color: #AA22FF;
  font-weight: bold;
}
.cm-s-ipython span.cm-variable-2 {
  color: #1a1a1a;
}
.cm-s-ipython span.cm-variable-3 {
  color: #333333;
}
.cm-s-ipython span.cm-comment {
  color: #408080;
  font-style: italic;
}
.cm-s-ipython span.cm-string {
  color: #BA2121;
}
.cm-s-ipython span.cm-string-2 {
  color: #f50;
}
.cm-s-ipython span.cm-meta {
  color: #AA22FF;
}
.cm-s-ipython span.cm-qualifier {
  color: #555;
}
.cm-s-ipython span.cm-builtin {
  color: #008000;
}
.cm-s-ipython span.cm-bracket {
  color: #997;
}
.cm-s-ipython span.cm-tag {
  color: #170;
}
.cm-s-ipython span.cm-attribute {
  color: #00c;
}
.cm-s-ipython span.cm-header {
  color: blue;
}
.cm-s-ipython span.cm-quote {
  color: #090;
}
.cm-s-ipython span.cm-link {
  color: #00c;
}
.cm-s-ipython span.cm-error {
  color: #f00;
}
.cm-s-ipython span.cm-tab {
  background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAMCAYAAAAkuj5RAAAAAXNSR0IArs4c6QAAAGFJREFUSMft1LsRQFAQheHPowAKoACx3IgEKtaEHujDjORSgWTH/ZOdnZOcM/sgk/kFFWY0qV8foQwS4MKBCS3qR6ixBJvElOobYAtivseIE120FaowJPN75GMu8j/LfMwNjh4HUpwg4LUAAAAASUVORK5CYII=);
  background-position: right;
  background-repeat: no-repeat;
}
div.output_wrapper {
  /* this position must be relative to enable descendents to be absolute within it */
  position: relative;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  z-index: 1;
}
/* class for the output area when it should be height-limited */
div.output_scroll {
  /* ideally, this would be max-height, but FF barfs all over that */
  height: 24em;
  /* FF needs this *and the wrapper* to specify full width, or it will shrinkwrap */
  width: 100%;
  overflow: auto;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.8);
  box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.8);
  display: block;
}
/* output div while it is collapsed */
div.output_collapsed {
  margin: 0px;
  padding: 0px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
div.out_prompt_overlay {
  height: 100%;
  padding: 0px 0.4em;
  position: absolute;
  border-radius: 2px;
}
div.out_prompt_overlay:hover {
  /* use inner shadow to get border that is computed the same on WebKit/FF */
  -webkit-box-shadow: inset 0 0 1px #000;
  box-shadow: inset 0 0 1px #000;
  background: rgba(240, 240, 240, 0.5);
}
div.output_prompt {
  color: #D84315;
}
/* This class is the outer container of all output sections. */
div.output_area {
  padding: 0px;
  page-break-inside: avoid;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
div.output_area .MathJax_Display {
  text-align: left !important;
}
div.output_area .rendered_html table {
  margin-left: 0;
  margin-right: 0;
}
div.output_area .rendered_html img {
  margin-left: 0;
  margin-right: 0;
}
div.output_area img,
div.output_area svg {
  max-width: 100%;
  height: auto;
}
div.output_area img.unconfined,
div.output_area svg.unconfined {
  max-width: none;
}
div.output_area .mglyph > img {
  max-width: none;
}
/* This is needed to protect the pre formating from global settings such
   as that of bootstrap */
.output {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.output_area {
    /* Old browsers */
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-box-align: stretch;
    display: -moz-box;
    -moz-box-orient: vertical;
    -moz-box-align: stretch;
    display: box;
    box-orient: vertical;
    box-align: stretch;
    /* Modern browsers */
    display: flex;
    flex-direction: column;
    align-items: stretch;
  }
}
div.output_area pre {
  margin: 0;
  padding: 1px 0 1px 0;
  border: 0;
  vertical-align: baseline;
  color: black;
  background-color: transparent;
  border-radius: 0;
}
/* This class is for the output subarea inside the output_area and after
   the prompt div. */
div.output_subarea {
  overflow-x: auto;
  padding: 0.4em;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
  max-width: calc(100% - 14ex);
}
div.output_scroll div.output_subarea {
  overflow-x: visible;
}
/* The rest of the output_* classes are for special styling of the different
   output types */
/* all text output has this class: */
div.output_text {
  text-align: left;
  color: #000;
  /* This has to match that of the the CodeMirror class line-height below */
  line-height: 1.21429em;
}
/* stdout/stderr are 'text' as well as 'stream', but execute_result/error are *not* streams */
div.output_stderr {
  background: #fdd;
  /* very light red background for stderr */
}
div.output_latex {
  text-align: left;
}
/* Empty output_javascript divs should have no height */
div.output_javascript:empty {
  padding: 0;
}
.js-error {
  color: darkred;
}
/* raw_input styles */
div.raw_input_container {
  line-height: 1.21429em;
  padding-top: 5px;
}
pre.raw_input_prompt {
  /* nothing needed here. */
}
input.raw_input {
  font-family: monospace;
  font-size: inherit;
  color: inherit;
  width: auto;
  /* make sure input baseline aligns with prompt */
  vertical-align: baseline;
  /* padding + margin = 0.5em between prompt and cursor */
  padding: 0em 0.25em;
  margin: 0em 0.25em;
}
input.raw_input:focus {
  box-shadow: none;
}
p.p-space {
  margin-bottom: 10px;
}
div.output_unrecognized {
  padding: 5px;
  font-weight: bold;
  color: red;
}
div.output_unrecognized a {
  color: inherit;
  text-decoration: none;
}
div.output_unrecognized a:hover {
  color: inherit;
  text-decoration: none;
}
.rendered_html {
  color: #000;
  /* any extras will just be numbers: */
}
.rendered_html em {
  font-style: italic;
}
.rendered_html strong {
  font-weight: bold;
}
.rendered_html u {
  text-decoration: underline;
}
.rendered_html :link {
  text-decoration: underline;
}
.rendered_html :visited {
  text-decoration: underline;
}
.rendered_html h1 {
  font-size: 185.7%;
  margin: 1.08em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h2 {
  font-size: 157.1%;
  margin: 1.27em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h3 {
  font-size: 128.6%;
  margin: 1.55em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h4 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h5 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
  font-style: italic;
}
.rendered_html h6 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
  font-style: italic;
}
.rendered_html h1:first-child {
  margin-top: 0.538em;
}
.rendered_html h2:first-child {
  margin-top: 0.636em;
}
.rendered_html h3:first-child {
  margin-top: 0.777em;
}
.rendered_html h4:first-child {
  margin-top: 1em;
}
.rendered_html h5:first-child {
  margin-top: 1em;
}
.rendered_html h6:first-child {
  margin-top: 1em;
}
.rendered_html ul:not(.list-inline),
.rendered_html ol:not(.list-inline) {
  padding-left: 2em;
}
.rendered_html ul {
  list-style: disc;
}
.rendered_html ul ul {
  list-style: square;
  margin-top: 0;
}
.rendered_html ul ul ul {
  list-style: circle;
}
.rendered_html ol {
  list-style: decimal;
}
.rendered_html ol ol {
  list-style: upper-alpha;
  margin-top: 0;
}
.rendered_html ol ol ol {
  list-style: lower-alpha;
}
.rendered_html ol ol ol ol {
  list-style: lower-roman;
}
.rendered_html ol ol ol ol ol {
  list-style: decimal;
}
.rendered_html * + ul {
  margin-top: 1em;
}
.rendered_html * + ol {
  margin-top: 1em;
}
.rendered_html hr {
  color: black;
  background-color: black;
}
.rendered_html pre {
  margin: 1em 2em;
  padding: 0px;
  background-color: #fff;
}
.rendered_html code {
  background-color: #eff0f1;
}
.rendered_html p code {
  padding: 1px 5px;
}
.rendered_html pre code {
  background-color: #fff;
}
.rendered_html pre,
.rendered_html code {
  border: 0;
  color: #000;
  font-size: 100%;
}
.rendered_html blockquote {
  margin: 1em 2em;
}
.rendered_html table {
  margin-left: auto;
  margin-right: auto;
  border: none;
  border-collapse: collapse;
  border-spacing: 0;
  color: black;
  font-size: 12px;
  table-layout: fixed;
}
.rendered_html thead {
  border-bottom: 1px solid black;
  vertical-align: bottom;
}
.rendered_html tr,
.rendered_html th,
.rendered_html td {
  text-align: right;
  vertical-align: middle;
  padding: 0.5em 0.5em;
  line-height: normal;
  white-space: normal;
  max-width: none;
  border: none;
}
.rendered_html th {
  font-weight: bold;
}
.rendered_html tbody tr:nth-child(odd) {
  background: #f5f5f5;
}
.rendered_html tbody tr:hover {
  background: rgba(66, 165, 245, 0.2);
}
.rendered_html * + table {
  margin-top: 1em;
}
.rendered_html p {
  text-align: left;
}
.rendered_html * + p {
  margin-top: 1em;
}
.rendered_html img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.rendered_html * + img {
  margin-top: 1em;
}
.rendered_html img,
.rendered_html svg {
  max-width: 100%;
  height: auto;
}
.rendered_html img.unconfined,
.rendered_html svg.unconfined {
  max-width: none;
}
.rendered_html .alert {
  margin-bottom: initial;
}
.rendered_html * + .alert {
  margin-top: 1em;
}
[dir="rtl"] .rendered_html p {
  text-align: right;
}
div.text_cell {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.text_cell > div.prompt {
    display: none;
  }
}
div.text_cell_render {
  /*font-family: "Helvetica Neue", Arial, Helvetica, Geneva, sans-serif;*/
  outline: none;
  resize: none;
  width: inherit;
  border-style: none;
  padding: 0.5em 0.5em 0.5em 0.4em;
  color: #000;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
a.anchor-link:link {
  text-decoration: none;
  padding: 0px 20px;
  visibility: hidden;
}
h1:hover .anchor-link,
h2:hover .anchor-link,
h3:hover .anchor-link,
h4:hover .anchor-link,
h5:hover .anchor-link,
h6:hover .anchor-link {
  visibility: visible;
}
.text_cell.rendered .input_area {
  display: none;
}
.text_cell.rendered .rendered_html {
  overflow-x: auto;
  overflow-y: hidden;
}
.text_cell.rendered .rendered_html tr,
.text_cell.rendered .rendered_html th,
.text_cell.rendered .rendered_html td {
  max-width: none;
}
.text_cell.unrendered .text_cell_render {
  display: none;
}
.text_cell .dropzone .input_area {
  border: 2px dashed #bababa;
  margin: -1px;
}
.cm-header-1,
.cm-header-2,
.cm-header-3,
.cm-header-4,
.cm-header-5,
.cm-header-6 {
  font-weight: bold;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
.cm-header-1 {
  font-size: 185.7%;
}
.cm-header-2 {
  font-size: 157.1%;
}
.cm-header-3 {
  font-size: 128.6%;
}
.cm-header-4 {
  font-size: 110%;
}
.cm-header-5 {
  font-size: 100%;
  font-style: italic;
}
.cm-header-6 {
  font-size: 100%;
  font-style: italic;
}
/*!
*
* IPython notebook webapp
*
*/
@media (max-width: 767px) {
  .notebook_app {
    padding-left: 0px;
    padding-right: 0px;
  }
}
#ipython-main-app {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  height: 100%;
}
div#notebook_panel {
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  height: 100%;
}
div#notebook {
  font-size: 14px;
  line-height: 20px;
  overflow-y: hidden;
  overflow-x: auto;
  width: 100%;
  /* This spaces the page away from the edge of the notebook area */
  padding-top: 20px;
  margin: 0px;
  outline: none;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  min-height: 100%;
}
@media not print {
  #notebook-container {
    padding: 15px;
    background-color: #fff;
    min-height: 0;
    -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
    box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  }
}
@media print {
  #notebook-container {
    width: 100%;
  }
}
div.ui-widget-content {
  border: 1px solid #ababab;
  outline: none;
}
pre.dialog {
  background-color: #f7f7f7;
  border: 1px solid #ddd;
  border-radius: 2px;
  padding: 0.4em;
  padding-left: 2em;
}
p.dialog {
  padding: 0.2em;
}
/* Word-wrap output correctly.  This is the CSS3 spelling, though Firefox seems
   to not honor it correctly.  Webkit browsers (Chrome, rekonq, Safari) do.
 */
pre,
code,
kbd,
samp {
  white-space: pre-wrap;
}
#fonttest {
  font-family: monospace;
}
p {
  margin-bottom: 0;
}
.end_space {
  min-height: 100px;
  transition: height .2s ease;
}
.notebook_app > #header {
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
@media not print {
  .notebook_app {
    background-color: #EEE;
  }
}
kbd {
  border-style: solid;
  border-width: 1px;
  box-shadow: none;
  margin: 2px;
  padding-left: 2px;
  padding-right: 2px;
  padding-top: 1px;
  padding-bottom: 1px;
}
.jupyter-keybindings {
  padding: 1px;
  line-height: 24px;
  border-bottom: 1px solid gray;
}
.jupyter-keybindings input {
  margin: 0;
  padding: 0;
  border: none;
}
.jupyter-keybindings i {
  padding: 6px;
}
.well code {
  background-color: #ffffff;
  border-color: #ababab;
  border-width: 1px;
  border-style: solid;
  padding: 2px;
  padding-top: 1px;
  padding-bottom: 1px;
}
/* CSS for the cell toolbar */
.celltoolbar {
  border: thin solid #CFCFCF;
  border-bottom: none;
  background: #EEE;
  border-radius: 2px 2px 0px 0px;
  width: 100%;
  height: 29px;
  padding-right: 4px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
  /* Old browsers */
  -webkit-box-pack: end;
  -moz-box-pack: end;
  box-pack: end;
  /* Modern browsers */
  justify-content: flex-end;
  display: -webkit-flex;
}
@media print {
  .celltoolbar {
    display: none;
  }
}
.ctb_hideshow {
  display: none;
  vertical-align: bottom;
}
/* ctb_show is added to the ctb_hideshow div to show the cell toolbar.
   Cell toolbars are only shown when the ctb_global_show class is also set.
*/
.ctb_global_show .ctb_show.ctb_hideshow {
  display: block;
}
.ctb_global_show .ctb_show + .input_area,
.ctb_global_show .ctb_show + div.text_cell_input,
.ctb_global_show .ctb_show ~ div.text_cell_render {
  border-top-right-radius: 0px;
  border-top-left-radius: 0px;
}
.ctb_global_show .ctb_show ~ div.text_cell_render {
  border: 1px solid #cfcfcf;
}
.celltoolbar {
  font-size: 87%;
  padding-top: 3px;
}
.celltoolbar select {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
  width: inherit;
  font-size: inherit;
  height: 22px;
  padding: 0px;
  display: inline-block;
}
.celltoolbar select:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.celltoolbar select::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.celltoolbar select:-ms-input-placeholder {
  color: #999;
}
.celltoolbar select::-webkit-input-placeholder {
  color: #999;
}
.celltoolbar select::-ms-expand {
  border: 0;
  background-color: transparent;
}
.celltoolbar select[disabled],
.celltoolbar select[readonly],
fieldset[disabled] .celltoolbar select {
  background-color: #eeeeee;
  opacity: 1;
}
.celltoolbar select[disabled],
fieldset[disabled] .celltoolbar select {
  cursor: not-allowed;
}
textarea.celltoolbar select {
  height: auto;
}
select.celltoolbar select {
  height: 30px;
  line-height: 30px;
}
textarea.celltoolbar select,
select[multiple].celltoolbar select {
  height: auto;
}
.celltoolbar label {
  margin-left: 5px;
  margin-right: 5px;
}
.tags_button_container {
  width: 100%;
  display: flex;
}
.tag-container {
  display: flex;
  flex-direction: row;
  flex-grow: 1;
  overflow: hidden;
  position: relative;
}
.tag-container > * {
  margin: 0 4px;
}
.remove-tag-btn {
  margin-left: 4px;
}
.tags-input {
  display: flex;
}
.cell-tag:last-child:after {
  content: "";
  position: absolute;
  right: 0;
  width: 40px;
  height: 100%;
  /* Fade to background color of cell toolbar */
  background: linear-gradient(to right, rgba(0, 0, 0, 0), #EEE);
}
.tags-input > * {
  margin-left: 4px;
}
.cell-tag,
.tags-input input,
.tags-input button {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
  box-shadow: none;
  width: inherit;
  font-size: inherit;
  height: 22px;
  line-height: 22px;
  padding: 0px 4px;
  display: inline-block;
}
.cell-tag:focus,
.tags-input input:focus,
.tags-input button:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.cell-tag::-moz-placeholder,
.tags-input input::-moz-placeholder,
.tags-input button::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.cell-tag:-ms-input-placeholder,
.tags-input input:-ms-input-placeholder,
.tags-input button:-ms-input-placeholder {
  color: #999;
}
.cell-tag::-webkit-input-placeholder,
.tags-input input::-webkit-input-placeholder,
.tags-input button::-webkit-input-placeholder {
  color: #999;
}
.cell-tag::-ms-expand,
.tags-input input::-ms-expand,
.tags-input button::-ms-expand {
  border: 0;
  background-color: transparent;
}
.cell-tag[disabled],
.tags-input input[disabled],
.tags-input button[disabled],
.cell-tag[readonly],
.tags-input input[readonly],
.tags-input button[readonly],
fieldset[disabled] .cell-tag,
fieldset[disabled] .tags-input input,
fieldset[disabled] .tags-input button {
  background-color: #eeeeee;
  opacity: 1;
}
.cell-tag[disabled],
.tags-input input[disabled],
.tags-input button[disabled],
fieldset[disabled] .cell-tag,
fieldset[disabled] .tags-input input,
fieldset[disabled] .tags-input button {
  cursor: not-allowed;
}
textarea.cell-tag,
textarea.tags-input input,
textarea.tags-input button {
  height: auto;
}
select.cell-tag,
select.tags-input input,
select.tags-input button {
  height: 30px;
  line-height: 30px;
}
textarea.cell-tag,
textarea.tags-input input,
textarea.tags-input button,
select[multiple].cell-tag,
select[multiple].tags-input input,
select[multiple].tags-input button {
  height: auto;
}
.cell-tag,
.tags-input button {
  padding: 0px 4px;
}
.cell-tag {
  background-color: #fff;
  white-space: nowrap;
}
.tags-input input[type=text]:focus {
  outline: none;
  box-shadow: none;
  border-color: #ccc;
}
.completions {
  position: absolute;
  z-index: 110;
  overflow: hidden;
  border: 1px solid #ababab;
  border-radius: 2px;
  -webkit-box-shadow: 0px 6px 10px -1px #adadad;
  box-shadow: 0px 6px 10px -1px #adadad;
  line-height: 1;
}
.completions select {
  background: white;
  outline: none;
  border: none;
  padding: 0px;
  margin: 0px;
  overflow: auto;
  font-family: monospace;
  font-size: 110%;
  color: #000;
  width: auto;
}
.completions select option.context {
  color: #286090;
}
#kernel_logo_widget .current_kernel_logo {
  display: none;
  margin-top: -1px;
  margin-bottom: -1px;
  width: 32px;
  height: 32px;
}
[dir="rtl"] #kernel_logo_widget {
  float: left !important;
  float: left;
}
.modal .modal-body .move-path {
  display: flex;
  flex-direction: row;
  justify-content: space;
  align-items: center;
}
.modal .modal-body .move-path .server-root {
  padding-right: 20px;
}
.modal .modal-body .move-path .path-input {
  flex: 1;
}
#menubar {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  margin-top: 1px;
}
#menubar .navbar {
  border-top: 1px;
  border-radius: 0px 0px 2px 2px;
  margin-bottom: 0px;
}
#menubar .navbar-toggle {
  float: left;
  padding-top: 7px;
  padding-bottom: 7px;
  border: none;
}
#menubar .navbar-collapse {
  clear: left;
}
[dir="rtl"] #menubar .navbar-toggle {
  float: right;
}
[dir="rtl"] #menubar .navbar-collapse {
  clear: right;
}
[dir="rtl"] #menubar .navbar-nav {
  float: right;
}
[dir="rtl"] #menubar .nav {
  padding-right: 0px;
}
[dir="rtl"] #menubar .navbar-nav > li {
  float: right;
}
[dir="rtl"] #menubar .navbar-right {
  float: left !important;
}
[dir="rtl"] ul.dropdown-menu {
  text-align: right;
  left: auto;
}
[dir="rtl"] ul#new-menu.dropdown-menu {
  right: auto;
  left: 0;
}
.nav-wrapper {
  border-bottom: 1px solid #e7e7e7;
}
i.menu-icon {
  padding-top: 4px;
}
[dir="rtl"] i.menu-icon.pull-right {
  float: left !important;
  float: left;
}
ul#help_menu li a {
  overflow: hidden;
  padding-right: 2.2em;
}
ul#help_menu li a i {
  margin-right: -1.2em;
}
[dir="rtl"] ul#help_menu li a {
  padding-left: 2.2em;
}
[dir="rtl"] ul#help_menu li a i {
  margin-right: 0;
  margin-left: -1.2em;
}
[dir="rtl"] ul#help_menu li a i.pull-right {
  float: left !important;
  float: left;
}
.dropdown-submenu {
  position: relative;
}
.dropdown-submenu > .dropdown-menu {
  top: 0;
  left: 100%;
  margin-top: -6px;
  margin-left: -1px;
}
[dir="rtl"] .dropdown-submenu > .dropdown-menu {
  right: 100%;
  margin-right: -1px;
}
.dropdown-submenu:hover > .dropdown-menu {
  display: block;
}
.dropdown-submenu > a:after {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  display: block;
  content: "\f0da";
  float: right;
  color: #333333;
  margin-top: 2px;
  margin-right: -10px;
}
.dropdown-submenu > a:after.fa-pull-left {
  margin-right: .3em;
}
.dropdown-submenu > a:after.fa-pull-right {
  margin-left: .3em;
}
.dropdown-submenu > a:after.pull-left {
  margin-right: .3em;
}
.dropdown-submenu > a:after.pull-right {
  margin-left: .3em;
}
[dir="rtl"] .dropdown-submenu > a:after {
  float: left;
  content: "\f0d9";
  margin-right: 0;
  margin-left: -10px;
}
.dropdown-submenu:hover > a:after {
  color: #262626;
}
.dropdown-submenu.pull-left {
  float: none;
}
.dropdown-submenu.pull-left > .dropdown-menu {
  left: -100%;
  margin-left: 10px;
}
#notification_area {
  float: right !important;
  float: right;
  z-index: 10;
}
[dir="rtl"] #notification_area {
  float: left !important;
  float: left;
}
.indicator_area {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
}
[dir="rtl"] .indicator_area {
  float: left !important;
  float: left;
}
#kernel_indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
  border-left: 1px solid;
}
#kernel_indicator .kernel_indicator_name {
  padding-left: 5px;
  padding-right: 5px;
}
[dir="rtl"] #kernel_indicator {
  float: left !important;
  float: left;
  border-left: 0;
  border-right: 1px solid;
}
#modal_indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
}
[dir="rtl"] #modal_indicator {
  float: left !important;
  float: left;
}
#readonly-indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
  margin-top: 2px;
  margin-bottom: 0px;
  margin-left: 0px;
  margin-right: 0px;
  display: none;
}
.modal_indicator:before {
  width: 1.28571429em;
  text-align: center;
}
.edit_mode .modal_indicator:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f040";
}
.edit_mode .modal_indicator:before.fa-pull-left {
  margin-right: .3em;
}
.edit_mode .modal_indicator:before.fa-pull-right {
  margin-left: .3em;
}
.edit_mode .modal_indicator:before.pull-left {
  margin-right: .3em;
}
.edit_mode .modal_indicator:before.pull-right {
  margin-left: .3em;
}
.command_mode .modal_indicator:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: ' ';
}
.command_mode .modal_indicator:before.fa-pull-left {
  margin-right: .3em;
}
.command_mode .modal_indicator:before.fa-pull-right {
  margin-left: .3em;
}
.command_mode .modal_indicator:before.pull-left {
  margin-right: .3em;
}
.command_mode .modal_indicator:before.pull-right {
  margin-left: .3em;
}
.kernel_idle_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f10c";
}
.kernel_idle_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_idle_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_idle_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_idle_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_busy_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f111";
}
.kernel_busy_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_busy_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_busy_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_busy_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_dead_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f1e2";
}
.kernel_dead_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_dead_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_dead_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_dead_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_disconnected_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f127";
}
.kernel_disconnected_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_disconnected_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_disconnected_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_disconnected_icon:before.pull-right {
  margin-left: .3em;
}
.notification_widget {
  color: #777;
  z-index: 10;
  background: rgba(240, 240, 240, 0.5);
  margin-right: 4px;
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.notification_widget:focus,
.notification_widget.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.notification_widget:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.notification_widget:active,
.notification_widget.active,
.open > .dropdown-toggle.notification_widget {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.notification_widget:active:hover,
.notification_widget.active:hover,
.open > .dropdown-toggle.notification_widget:hover,
.notification_widget:active:focus,
.notification_widget.active:focus,
.open > .dropdown-toggle.notification_widget:focus,
.notification_widget:active.focus,
.notification_widget.active.focus,
.open > .dropdown-toggle.notification_widget.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.notification_widget:active,
.notification_widget.active,
.open > .dropdown-toggle.notification_widget {
  background-image: none;
}
.notification_widget.disabled:hover,
.notification_widget[disabled]:hover,
fieldset[disabled] .notification_widget:hover,
.notification_widget.disabled:focus,
.notification_widget[disabled]:focus,
fieldset[disabled] .notification_widget:focus,
.notification_widget.disabled.focus,
.notification_widget[disabled].focus,
fieldset[disabled] .notification_widget.focus {
  background-color: #fff;
  border-color: #ccc;
}
.notification_widget .badge {
  color: #fff;
  background-color: #333;
}
.notification_widget.warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.notification_widget.warning:focus,
.notification_widget.warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.notification_widget.warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.notification_widget.warning:active,
.notification_widget.warning.active,
.open > .dropdown-toggle.notification_widget.warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.notification_widget.warning:active:hover,
.notification_widget.warning.active:hover,
.open > .dropdown-toggle.notification_widget.warning:hover,
.notification_widget.warning:active:focus,
.notification_widget.warning.active:focus,
.open > .dropdown-toggle.notification_widget.warning:focus,
.notification_widget.warning:active.focus,
.notification_widget.warning.active.focus,
.open > .dropdown-toggle.notification_widget.warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.notification_widget.warning:active,
.notification_widget.warning.active,
.open > .dropdown-toggle.notification_widget.warning {
  background-image: none;
}
.notification_widget.warning.disabled:hover,
.notification_widget.warning[disabled]:hover,
fieldset[disabled] .notification_widget.warning:hover,
.notification_widget.warning.disabled:focus,
.notification_widget.warning[disabled]:focus,
fieldset[disabled] .notification_widget.warning:focus,
.notification_widget.warning.disabled.focus,
.notification_widget.warning[disabled].focus,
fieldset[disabled] .notification_widget.warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.notification_widget.warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.notification_widget.success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.notification_widget.success:focus,
.notification_widget.success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.notification_widget.success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.notification_widget.success:active,
.notification_widget.success.active,
.open > .dropdown-toggle.notification_widget.success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.notification_widget.success:active:hover,
.notification_widget.success.active:hover,
.open > .dropdown-toggle.notification_widget.success:hover,
.notification_widget.success:active:focus,
.notification_widget.success.active:focus,
.open > .dropdown-toggle.notification_widget.success:focus,
.notification_widget.success:active.focus,
.notification_widget.success.active.focus,
.open > .dropdown-toggle.notification_widget.success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.notification_widget.success:active,
.notification_widget.success.active,
.open > .dropdown-toggle.notification_widget.success {
  background-image: none;
}
.notification_widget.success.disabled:hover,
.notification_widget.success[disabled]:hover,
fieldset[disabled] .notification_widget.success:hover,
.notification_widget.success.disabled:focus,
.notification_widget.success[disabled]:focus,
fieldset[disabled] .notification_widget.success:focus,
.notification_widget.success.disabled.focus,
.notification_widget.success[disabled].focus,
fieldset[disabled] .notification_widget.success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.notification_widget.success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.notification_widget.info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.notification_widget.info:focus,
.notification_widget.info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.notification_widget.info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.notification_widget.info:active,
.notification_widget.info.active,
.open > .dropdown-toggle.notification_widget.info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.notification_widget.info:active:hover,
.notification_widget.info.active:hover,
.open > .dropdown-toggle.notification_widget.info:hover,
.notification_widget.info:active:focus,
.notification_widget.info.active:focus,
.open > .dropdown-toggle.notification_widget.info:focus,
.notification_widget.info:active.focus,
.notification_widget.info.active.focus,
.open > .dropdown-toggle.notification_widget.info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.notification_widget.info:active,
.notification_widget.info.active,
.open > .dropdown-toggle.notification_widget.info {
  background-image: none;
}
.notification_widget.info.disabled:hover,
.notification_widget.info[disabled]:hover,
fieldset[disabled] .notification_widget.info:hover,
.notification_widget.info.disabled:focus,
.notification_widget.info[disabled]:focus,
fieldset[disabled] .notification_widget.info:focus,
.notification_widget.info.disabled.focus,
.notification_widget.info[disabled].focus,
fieldset[disabled] .notification_widget.info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.notification_widget.info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.notification_widget.danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.notification_widget.danger:focus,
.notification_widget.danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.notification_widget.danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.notification_widget.danger:active,
.notification_widget.danger.active,
.open > .dropdown-toggle.notification_widget.danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.notification_widget.danger:active:hover,
.notification_widget.danger.active:hover,
.open > .dropdown-toggle.notification_widget.danger:hover,
.notification_widget.danger:active:focus,
.notification_widget.danger.active:focus,
.open > .dropdown-toggle.notification_widget.danger:focus,
.notification_widget.danger:active.focus,
.notification_widget.danger.active.focus,
.open > .dropdown-toggle.notification_widget.danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.notification_widget.danger:active,
.notification_widget.danger.active,
.open > .dropdown-toggle.notification_widget.danger {
  background-image: none;
}
.notification_widget.danger.disabled:hover,
.notification_widget.danger[disabled]:hover,
fieldset[disabled] .notification_widget.danger:hover,
.notification_widget.danger.disabled:focus,
.notification_widget.danger[disabled]:focus,
fieldset[disabled] .notification_widget.danger:focus,
.notification_widget.danger.disabled.focus,
.notification_widget.danger[disabled].focus,
fieldset[disabled] .notification_widget.danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.notification_widget.danger .badge {
  color: #d9534f;
  background-color: #fff;
}
div#pager {
  background-color: #fff;
  font-size: 14px;
  line-height: 20px;
  overflow: hidden;
  display: none;
  position: fixed;
  bottom: 0px;
  width: 100%;
  max-height: 50%;
  padding-top: 8px;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  /* Display over codemirror */
  z-index: 100;
  /* Hack which prevents jquery ui resizable from changing top. */
  top: auto !important;
}
div#pager pre {
  line-height: 1.21429em;
  color: #000;
  background-color: #f7f7f7;
  padding: 0.4em;
}
div#pager #pager-button-area {
  position: absolute;
  top: 8px;
  right: 20px;
}
div#pager #pager-contents {
  position: relative;
  overflow: auto;
  width: 100%;
  height: 100%;
}
div#pager #pager-contents #pager-container {
  position: relative;
  padding: 15px 0px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
div#pager .ui-resizable-handle {
  top: 0px;
  height: 8px;
  background: #f7f7f7;
  border-top: 1px solid #cfcfcf;
  border-bottom: 1px solid #cfcfcf;
  /* This injects handle bars (a short, wide = symbol) for
        the resize handle. */
}
div#pager .ui-resizable-handle::after {
  content: '';
  top: 2px;
  left: 50%;
  height: 3px;
  width: 30px;
  margin-left: -15px;
  position: absolute;
  border-top: 1px solid #cfcfcf;
}
.quickhelp {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
  line-height: 1.8em;
}
.shortcut_key {
  display: inline-block;
  width: 21ex;
  text-align: right;
  font-family: monospace;
}
.shortcut_descr {
  display: inline-block;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
span.save_widget {
  height: 30px;
  margin-top: 4px;
  display: flex;
  justify-content: flex-start;
  align-items: baseline;
  width: 50%;
  flex: 1;
}
span.save_widget span.filename {
  height: 100%;
  line-height: 1em;
  margin-left: 16px;
  border: none;
  font-size: 146.5%;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  border-radius: 2px;
}
span.save_widget span.filename:hover {
  background-color: #e6e6e6;
}
[dir="rtl"] span.save_widget.pull-left {
  float: right !important;
  float: right;
}
[dir="rtl"] span.save_widget span.filename {
  margin-left: 0;
  margin-right: 16px;
}
span.checkpoint_status,
span.autosave_status {
  font-size: small;
  white-space: nowrap;
  padding: 0 5px;
}
@media (max-width: 767px) {
  span.save_widget {
    font-size: small;
    padding: 0 0 0 5px;
  }
  span.checkpoint_status,
  span.autosave_status {
    display: none;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  span.checkpoint_status {
    display: none;
  }
  span.autosave_status {
    font-size: x-small;
  }
}
.toolbar {
  padding: 0px;
  margin-left: -5px;
  margin-top: 2px;
  margin-bottom: 5px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
.toolbar select,
.toolbar label {
  width: auto;
  vertical-align: middle;
  margin-right: 2px;
  margin-bottom: 0px;
  display: inline;
  font-size: 92%;
  margin-left: 0.3em;
  margin-right: 0.3em;
  padding: 0px;
  padding-top: 3px;
}
.toolbar .btn {
  padding: 2px 8px;
}
.toolbar .btn-group {
  margin-top: 0px;
  margin-left: 5px;
}
.toolbar-btn-label {
  margin-left: 6px;
}
#maintoolbar {
  margin-bottom: -3px;
  margin-top: -8px;
  border: 0px;
  min-height: 27px;
  margin-left: 0px;
  padding-top: 11px;
  padding-bottom: 3px;
}
#maintoolbar .navbar-text {
  float: none;
  vertical-align: middle;
  text-align: right;
  margin-left: 5px;
  margin-right: 0px;
  margin-top: 0px;
}
.select-xs {
  height: 24px;
}
[dir="rtl"] .btn-group > .btn,
.btn-group-vertical > .btn {
  float: right;
}
.pulse,
.dropdown-menu > li > a.pulse,
li.pulse > a.dropdown-toggle,
li.pulse.open > a.dropdown-toggle {
  background-color: #F37626;
  color: white;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
/** WARNING IF YOU ARE EDITTING THIS FILE, if this is a .css file, It has a lot
 * of chance of beeing generated from the ../less/[samename].less file, you can
 * try to get back the less file by reverting somme commit in history
 **/
/*
 * We'll try to get something pretty, so we
 * have some strange css to have the scroll bar on
 * the left with fix button on the top right of the tooltip
 */
@-moz-keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-webkit-keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-moz-keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@-webkit-keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
/*properties of tooltip after "expand"*/
.bigtooltip {
  overflow: auto;
  height: 200px;
  -webkit-transition-property: height;
  -webkit-transition-duration: 500ms;
  -moz-transition-property: height;
  -moz-transition-duration: 500ms;
  transition-property: height;
  transition-duration: 500ms;
}
/*properties of tooltip before "expand"*/
.smalltooltip {
  -webkit-transition-property: height;
  -webkit-transition-duration: 500ms;
  -moz-transition-property: height;
  -moz-transition-duration: 500ms;
  transition-property: height;
  transition-duration: 500ms;
  text-overflow: ellipsis;
  overflow: hidden;
  height: 80px;
}
.tooltipbuttons {
  position: absolute;
  padding-right: 15px;
  top: 0px;
  right: 0px;
}
.tooltiptext {
  /*avoid the button to overlap on some docstring*/
  padding-right: 30px;
}
.ipython_tooltip {
  max-width: 700px;
  /*fade-in animation when inserted*/
  -webkit-animation: fadeOut 400ms;
  -moz-animation: fadeOut 400ms;
  animation: fadeOut 400ms;
  -webkit-animation: fadeIn 400ms;
  -moz-animation: fadeIn 400ms;
  animation: fadeIn 400ms;
  vertical-align: middle;
  background-color: #f7f7f7;
  overflow: visible;
  border: #ababab 1px solid;
  outline: none;
  padding: 3px;
  margin: 0px;
  padding-left: 7px;
  font-family: monospace;
  min-height: 50px;
  -moz-box-shadow: 0px 6px 10px -1px #adadad;
  -webkit-box-shadow: 0px 6px 10px -1px #adadad;
  box-shadow: 0px 6px 10px -1px #adadad;
  border-radius: 2px;
  position: absolute;
  z-index: 1000;
}
.ipython_tooltip a {
  float: right;
}
.ipython_tooltip .tooltiptext pre {
  border: 0;
  border-radius: 0;
  font-size: 100%;
  background-color: #f7f7f7;
}
.pretooltiparrow {
  left: 0px;
  margin: 0px;
  top: -16px;
  width: 40px;
  height: 16px;
  overflow: hidden;
  position: absolute;
}
.pretooltiparrow:before {
  background-color: #f7f7f7;
  border: 1px #ababab solid;
  z-index: 11;
  content: "";
  position: absolute;
  left: 15px;
  top: 10px;
  width: 25px;
  height: 25px;
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -o-transform: rotate(45deg);
}
ul.typeahead-list i {
  margin-left: -10px;
  width: 18px;
}
[dir="rtl"] ul.typeahead-list i {
  margin-left: 0;
  margin-right: -10px;
}
ul.typeahead-list {
  max-height: 80vh;
  overflow: auto;
}
ul.typeahead-list > li > a {
  /** Firefox bug **/
  /* see https://github.com/jupyter/notebook/issues/559 */
  white-space: normal;
}
ul.typeahead-list  > li > a.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .typeahead-list {
  text-align: right;
}
.cmd-palette .modal-body {
  padding: 7px;
}
.cmd-palette form {
  background: white;
}
.cmd-palette input {
  outline: none;
}
.no-shortcut {
  min-width: 20px;
  color: transparent;
}
[dir="rtl"] .no-shortcut.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .command-shortcut.pull-right {
  float: left !important;
  float: left;
}
.command-shortcut:before {
  content: "(command mode)";
  padding-right: 3px;
  color: #777777;
}
.edit-shortcut:before {
  content: "(edit)";
  padding-right: 3px;
  color: #777777;
}
[dir="rtl"] .edit-shortcut.pull-right {
  float: left !important;
  float: left;
}
#find-and-replace #replace-preview .match,
#find-and-replace #replace-preview .insert {
  background-color: #BBDEFB;
  border-color: #90CAF9;
  border-style: solid;
  border-width: 1px;
  border-radius: 0px;
}
[dir="ltr"] #find-and-replace .input-group-btn + .form-control {
  border-left: none;
}
[dir="rtl"] #find-and-replace .input-group-btn + .form-control {
  border-right: none;
}
#find-and-replace #replace-preview .replace .match {
  background-color: #FFCDD2;
  border-color: #EF9A9A;
  border-radius: 0px;
}
#find-and-replace #replace-preview .replace .insert {
  background-color: #C8E6C9;
  border-color: #A5D6A7;
  border-radius: 0px;
}
#find-and-replace #replace-preview {
  max-height: 60vh;
  overflow: auto;
}
#find-and-replace #replace-preview pre {
  padding: 5px 10px;
}
.terminal-app {
  background: #EEE;
}
.terminal-app #header {
  background: #fff;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
.terminal-app .terminal {
  width: 100%;
  float: left;
  font-family: monospace;
  color: white;
  background: black;
  padding: 0.4em;
  border-radius: 2px;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.4);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.4);
}
.terminal-app .terminal,
.terminal-app .terminal dummy-screen {
  line-height: 1em;
  font-size: 14px;
}
.terminal-app .terminal .xterm-rows {
  padding: 10px;
}
.terminal-app .terminal-cursor {
  color: black;
  background: white;
}
.terminal-app #terminado-container {
  margin-top: 20px;
}
/*# sourceMappingURL=style.min.css.map */
    </style>
<style type="text/css">
    .highlight .hll { background-color: #ffffcc }
.highlight  { background: #f8f8f8; }
.highlight .c { color: #408080; font-style: italic } /* Comment */
.highlight .err { border: 1px solid #FF0000 } /* Error */
.highlight .k { color: #008000; font-weight: bold } /* Keyword */
.highlight .o { color: #666666 } /* Operator */
.highlight .ch { color: #408080; font-style: italic } /* Comment.Hashbang */
.highlight .cm { color: #408080; font-style: italic } /* Comment.Multiline */
.highlight .cp { color: #BC7A00 } /* Comment.Preproc */
.highlight .cpf { color: #408080; font-style: italic } /* Comment.PreprocFile */
.highlight .c1 { color: #408080; font-style: italic } /* Comment.Single */
.highlight .cs { color: #408080; font-style: italic } /* Comment.Special */
.highlight .gd { color: #A00000 } /* Generic.Deleted */
.highlight .ge { font-style: italic } /* Generic.Emph */
.highlight .gr { color: #FF0000 } /* Generic.Error */
.highlight .gh { color: #000080; font-weight: bold } /* Generic.Heading */
.highlight .gi { color: #00A000 } /* Generic.Inserted */
.highlight .go { color: #888888 } /* Generic.Output */
.highlight .gp { color: #000080; font-weight: bold } /* Generic.Prompt */
.highlight .gs { font-weight: bold } /* Generic.Strong */
.highlight .gu { color: #800080; font-weight: bold } /* Generic.Subheading */
.highlight .gt { color: #0044DD } /* Generic.Traceback */
.highlight .kc { color: #008000; font-weight: bold } /* Keyword.Constant */
.highlight .kd { color: #008000; font-weight: bold } /* Keyword.Declaration */
.highlight .kn { color: #008000; font-weight: bold } /* Keyword.Namespace */
.highlight .kp { color: #008000 } /* Keyword.Pseudo */
.highlight .kr { color: #008000; font-weight: bold } /* Keyword.Reserved */
.highlight .kt { color: #B00040 } /* Keyword.Type */
.highlight .m { color: #666666 } /* Literal.Number */
.highlight .s { color: #BA2121 } /* Literal.String */
.highlight .na { color: #7D9029 } /* Name.Attribute */
.highlight .nb { color: #008000 } /* Name.Builtin */
.highlight .nc { color: #0000FF; font-weight: bold } /* Name.Class */
.highlight .no { color: #880000 } /* Name.Constant */
.highlight .nd { color: #AA22FF } /* Name.Decorator */
.highlight .ni { color: #999999; font-weight: bold } /* Name.Entity */
.highlight .ne { color: #D2413A; font-weight: bold } /* Name.Exception */
.highlight .nf { color: #0000FF } /* Name.Function */
.highlight .nl { color: #A0A000 } /* Name.Label */
.highlight .nn { color: #0000FF; font-weight: bold } /* Name.Namespace */
.highlight .nt { color: #008000; font-weight: bold } /* Name.Tag */
.highlight .nv { color: #19177C } /* Name.Variable */
.highlight .ow { color: #AA22FF; font-weight: bold } /* Operator.Word */
.highlight .w { color: #bbbbbb } /* Text.Whitespace */
.highlight .mb { color: #666666 } /* Literal.Number.Bin */
.highlight .mf { color: #666666 } /* Literal.Number.Float */
.highlight .mh { color: #666666 } /* Literal.Number.Hex */
.highlight .mi { color: #666666 } /* Literal.Number.Integer */
.highlight .mo { color: #666666 } /* Literal.Number.Oct */
.highlight .sa { color: #BA2121 } /* Literal.String.Affix */
.highlight .sb { color: #BA2121 } /* Literal.String.Backtick */
.highlight .sc { color: #BA2121 } /* Literal.String.Char */
.highlight .dl { color: #BA2121 } /* Literal.String.Delimiter */
.highlight .sd { color: #BA2121; font-style: italic } /* Literal.String.Doc */
.highlight .s2 { color: #BA2121 } /* Literal.String.Double */
.highlight .se { color: #BB6622; font-weight: bold } /* Literal.String.Escape */
.highlight .sh { color: #BA2121 } /* Literal.String.Heredoc */
.highlight .si { color: #BB6688; font-weight: bold } /* Literal.String.Interpol */
.highlight .sx { color: #008000 } /* Literal.String.Other */
.highlight .sr { color: #BB6688 } /* Literal.String.Regex */
.highlight .s1 { color: #BA2121 } /* Literal.String.Single */
.highlight .ss { color: #19177C } /* Literal.String.Symbol */
.highlight .bp { color: #008000 } /* Name.Builtin.Pseudo */
.highlight .fm { color: #0000FF } /* Name.Function.Magic */
.highlight .vc { color: #19177C } /* Name.Variable.Class */
.highlight .vg { color: #19177C } /* Name.Variable.Global */
.highlight .vi { color: #19177C } /* Name.Variable.Instance */
.highlight .vm { color: #19177C } /* Name.Variable.Magic */
.highlight .il { color: #666666 } /* Literal.Number.Integer.Long */
    </style>


<style type="text/css">
/* Overrides of notebook CSS for static HTML export */
body {
  overflow: visible;
  padding: 8px;
}

div#notebook {
  overflow: visible;
  border-top: none;
}@media print {
  div.cell {
    display: block;
    page-break-inside: avoid;
  }
  div.output_wrapper {
    display: block;
    page-break-inside: avoid;
  }
  div.output {
    display: block;
    page-break-inside: avoid;
  }
}
</style>

<!-- Custom stylesheet, it must be in the same directory as the html file -->
<link rel="stylesheet" href="custom.css">

<!-- Loading mathjax macro -->
<!-- Load mathjax -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/latest.js?config=TeX-AMS_HTML"></script>
    <!-- MathJax configuration -->
    <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        tex2jax: {
            inlineMath: [ ['$','$'], ["\\(","\\)"] ],
            displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
            processEscapes: true,
            processEnvironments: true
        },
        // Center justify equations in code and markdown cells. Elsewhere
        // we use CSS to left justify single line equations in code cells.
        displayAlign: 'center',
        "HTML-CSS": {
            styles: {'.MathJax_Display': {"margin": 0}},
            linebreaks: { automatic: true }
        }
    });
    </script>
    <!-- End of mathjax configuration --></head>
<body>
  <div tabindex="-1" id="notebook" class="border-box-sizing">
    <div class="container" id="notebook-container">

<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h1 id="PyMKS-Introduction">PyMKS Introduction<a class="anchor-link" href="#PyMKS-Introduction">&#182;</a></h1><p>In this short introduction, we will demonstrate the functionality in PyMKS. We will quantify microstructures using 2-point statistics, predict effective properties using homogenization and predict local properties using localization. If you would like more technical details about any of these methods please see the <a href="THEORY.html">theory section</a>.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[1]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">pymks</span>

<span class="kn">import</span> <span class="nn">warnings</span>
<span class="n">warnings</span><span class="o">.</span><span class="n">filterwarnings</span><span class="p">(</span><span class="s1">&#39;ignore&#39;</span><span class="p">)</span>

<span class="o">%</span><span class="k">matplotlib</span> inline
<span class="o">%</span><span class="k">load_ext</span> autoreload
<span class="o">%</span><span class="k">autoreload</span> 2
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="Quantify-Microstructures-using-2-Point-Statistics">Quantify Microstructures using 2-Point Statistics<a class="anchor-link" href="#Quantify-Microstructures-using-2-Point-Statistics">&#182;</a></h3><p>Lets make two dual-phase microstructures with different morphologies.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[2]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks.datasets</span> <span class="kn">import</span> <span class="n">make_microstructure</span>
<span class="kn">import</span> <span class="nn">numpy</span> <span class="k">as</span> <span class="nn">np</span>

<span class="n">X_1</span> <span class="o">=</span> <span class="n">make_microstructure</span><span class="p">(</span><span class="n">n_samples</span><span class="o">=</span><span class="mi">1</span><span class="p">,</span> <span class="n">grain_size</span><span class="o">=</span><span class="p">(</span><span class="mi">25</span><span class="p">,</span> <span class="mi">25</span><span class="p">))</span>
<span class="n">X_2</span> <span class="o">=</span> <span class="n">make_microstructure</span><span class="p">(</span><span class="n">n_samples</span><span class="o">=</span><span class="mi">1</span><span class="p">,</span> <span class="n">grain_size</span><span class="o">=</span><span class="p">(</span><span class="mi">95</span><span class="p">,</span> <span class="mi">15</span><span class="p">))</span>

<span class="n">X</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">concatenate</span><span class="p">((</span><span class="n">X_1</span><span class="p">,</span> <span class="n">X_2</span><span class="p">))</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Throughout PyMKS <code>X</code> is used to represent microstructures. Now that we have made the two microstructures, lets take a look at them.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[3]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks.tools</span> <span class="kn">import</span> <span class="n">draw_microstructures</span>

<span class="n">draw_microstructures</span><span class="p">(</span><span class="n">X</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>We can compute the 2-point statistics for these two periodic microstructures using the <code>correlate</code> function from <code>pymks.stats</code>. This function computes all of the autocorrelations and cross-correlation(s) for a microstructure. Before we compute the 2-point statistics, we will discretize them using the <code>PrimitiveBasis</code> function.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[4]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks</span> <span class="kn">import</span> <span class="n">PrimitiveBasis</span>
<span class="kn">from</span> <span class="nn">pymks.stats</span> <span class="kn">import</span> <span class="n">correlate</span>


<span class="n">p_basis</span> <span class="o">=</span> <span class="n">PrimitiveBasis</span><span class="p">(</span><span class="n">n_states</span><span class="o">=</span><span class="mi">2</span><span class="p">,</span> <span class="n">domain</span><span class="o">=</span><span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">1</span><span class="p">])</span>
<span class="n">X_corr</span> <span class="o">=</span> <span class="n">correlate</span><span class="p">(</span><span class="n">X</span><span class="p">,</span> <span class="n">p_basis</span><span class="p">,</span> <span class="n">periodic_axes</span><span class="o">=</span><span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">1</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Let's take a look at the two autocorrelations and the cross-correlation for these two microstructures.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[5]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks.tools</span> <span class="kn">import</span> <span class="n">draw_correlations</span>

<span class="nb">print</span><span class="p">(</span><span class="n">X_corr</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">shape</span><span class="p">)</span>

<span class="n">draw_correlations</span><span class="p">(</span><span class="n">X_corr</span><span class="p">[</span><span class="mi">0</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>(101, 101, 3)
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABcwAAAGVCAYAAADDg7I7AAAABHNCSVQICAgIfAhkiAAAAAlwSFlz
AAAPYQAAD2EBqD+naQAAIABJREFUeJzsvXmUFNX9/v/c6u4ZhmFREGQRRBj3JSwuiCyCiLgAXxUU
UWMU0bgcNzSgBheUuCVijPrBHQX3BDUG1J9KCAJqXIILiRJBCKC4yz5Ld9/fHzjT73urbk1NT88M
PfO8zplzaqruVrdu1bvrVj1PKa21BiGEEEIIIYQQQgghhBDSxPEaugGEEEIIIYQQQgghhBBCyI4A
J8wJIYQQQgghhBBCCCGEEHDCnBBCCCGEEEIIIYQQQggBwAlzQgghhBBCCCGEEEIIIQQAJ8wJIYQQ
QgghhBBCCCGEEACcMCeEEEIIIYQQQgghhBBCAHDCnBBCCCGEEEIIIYQQQggBwAlzQgghhBBCCCGE
EEIIIQQAJ8wJIYQQQgghhBBCCCGEEACcMCeEEEIIIYQQQgghhBBCAHDCnBBCCCGEEEIIIYQQQggB
wAnzvGHr1q248847MWTIEHTo0AGFhYVo06YN+vXrh+uvvx5r1qxp6CZmjed56N69e6Ori1TPuHHj
cMYZZzR0MwghJOcwbudfXaR6GLcJIY0Vxu38q4tUD+M2IdnDCfM8YMmSJejRoweuvPJKvPvuuzjw
wAMxZswYHHHEEVi5ciVuvvlm7LXXXpg/f35DN7XBWL16NTzPw5AhQ6pNq5SqhxaR6ti2bRvmzJmD
wsLChm4KIYTkFMbt6mHczj8YtwkhjRXG7eph3M4/GLcJqR2cMN/BWbp0KYYOHYpvvvkGV199Nb75
5hu89tprmD17Nl566SWsX78ec+bMQdeuXbF27dqGbu4Oz6efforXX3+9oZvhY/z48dh7773RunVr
PPvss/VW74YNG3DeeedhwoQJ+O1vf4uTTz4Z8+bNy0nZ1e3TokWLUFFRgXPPPTcn9UWlLveZEEIY
t3ML43YwqVQKRx11FNatW5ezMnfUuF1JXewzIYQwbucWxm2Tpni/XQnjNsl7NNmhOeCAA7Tnefqm
m24KTbdx40a9bNmyempVblFK6T322KNWZXzxxRdaKaUHDx6co1bVP3fccYf2PE9/9dVX9VJfOp3W
gwYN0r/+9a+r1q1evVq3aNFCz5s3Lyd1hO3TNddco/fbb7+c1BOV+thnQkjThnE7Gozb2fPRRx/p
IUOGaM/z9OrVq3Na9o4Wtyupy30mhDRtGLejwbhdc5ri/XYljNukMcA3zHdgXnnlFSxbtgy77bYb
rrnmmtC0LVu2xH777Wese+uttzBq1Ci0b98ezZo1wx577IGLLroIX331lS+/lFht2rQJV1xxBbp3
746CggJcccUV1W6XrF27FhdffDFKSkpQVFSEtm3bYsSIEXjrrbdqtP9z587FOeecg/322w+tW7dG
ixYt0LNnT9xyyy0oLy+vSnfjjTeie/fuUEphwYIF8Dyv6u+cc84xynR5qmXbV6WlpZg8eTK6deuG
Zs2aYc8998Ttt99eo/2sZMmSJdh3333RoUOHrPLXlCeeeAJvvvkmrrrqqqp1Xbt2xahRo3DZZZfl
pI6wfVqwYAEmTJiQk3qiUh/7TAhpujBuM27XJf/9739xwgkn4LbbbqszefWOFrfrY58JIU0Xxm3G
7bqkKd5vM26TRkVDz9gTNxdffLH2PE9PnDixxnlnzZql4/G49jxPDxgwQI8bN07vs88+WimlO3To
oD/77DMj/apVq7RSSvft21f36tVLt23bVp900kl69OjReurUqdVur2TJkiV655131p7n6X333VeP
Hj1aDxo0SBcUFOh4PK6fffZZX1tdT7w7dOigd9ppJ92/f389duxYfeyxx+q2bdtqpZQeOnSoTqfT
WmutX3zxRT1mzBitlNIdO3bUZ599dtXfww8/XG1d2fbVEUccoQcMGKB32WUXPXr0aH3sscfq5s2b
a6WUnjJlSo2OVzqd1jvvvLO+9NJLa5SvNhx33HG6Y8eOvvUzZszQnufpf/7zn7UqP2yfNm/erFu2
bKm///77WtVRU+p6nwkhTRvGbcbt+uKGG27I+VtbO2LcltTFPhNCmjaM24zbdUlTvN+WMG6TfIcT
5jsw/fv3157n6SeeeKJG+dasWaObN2+uE4mE/tvf/mZsu+KKK7RSSh966KHG+sqgpJTS/fv31xs3
bqzRdq23y9Q6duyoE4mEfuqpp4xt77//vm7Tpo1u1aqV/u6774xtrgD+17/+VZeWlhrrNm/erEeO
HKk9z9OzZs3yta86iZhdV236yvM8PWTIEL1582ZjP+PxuG7RooXesmVLaFsk7777rlZK6Zdeeily
ntrSvn173bdvX9/6l156SSul9L333lur8sP26ZVXXtFjx46tVfnZUNf7TAhp2jBuM27XF3VxE7oj
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
Ol+et956S48aNUq3a9dOFxYW6m7duumLL75Yf/nll760q1at0p7n6SFDhgTWX912yddff60nT56s
DzzwQN2iRQvdokULveeee+oTTzxRz5o1y/fUXimlu3fv7ivns88+06NGjdIdOnTQLVq00H369NEP
P/ywM8+3336rzzrrLN2pUyedSCS053m+J7SuunLZVzV54q211n/4wx/08ccfr8ePH683bdoUKU+u
+Oabb/RZZ52lf/WrX+mrrrpKH3XUUfrPf/6zL92oUaO053l68eLFkcptyH2qjqj7TAghtYFxm3E7
13z//fd6+PDhulevXjoej2vP83Tr1q31wIED9bXXXmukbSxxuyb7TAghtYFxm3G7Lmhq99uM26Qx
obSuh08fE0LyFq012rZti0MPPRSvvPJKQzeHEEIIISEwbhNCCCH5A+M2ITsmtGQhhITyr3/9Cxs2
bMDUqVMbuimEEEIIqQbGbUIIISR/YNwmZMckJxPmjz32GDzP8/3FYjF88803vvRLlixB//79UVxc
jI4dO+LSSy/Fli1batWGp556qlb5yXbYj7WnsfVh7969kUqlcOihh9ZrvY2tHxsK9iMJgnG78cB+
rD2NrQ8Zt/Mb9iMJgnG78cB+rD2NrQ8Zt/Mb9mPjJWdvmCulcPPNN2P27NlVf7NmzcJOO+1kpFu6
dCmGDh2K0tJSTJ8+HRMmTMADDzyAU045pVb1c5DmBvZj7WEf5gb2Y25ojP1YXl6OSZMmoXPnzmje
vDn69u2L119/vdp8UW82V69eHZiu8u/88883ytVa4/bbb0f37t1RVFSEX/ziF3j66ad99e+xxx7O
Mvfee+/ad0wNYdxuHLAfaw/7MDewH3NDY+zHbOO2zYQJE+B5HkaOHGms37ZtG+69914cc8wx6NSp
E1q1aoXevXtjxowZSKfTvnJWrFiB0aNHo02bNiguLsaAAQOwYMECX7oXXngBw4cPR+fOndGsWTN0
6dIFY8aMwbJly2rc9lzAuN04YD/WHvZhbmA/5obG2I/Zxu358+dj/Pjx2HvvvVFcXIwePXpgwoQJ
WL9+vS+t1hozZsxAr1690LJlS3To0AHHHXcc3nrrLSPdV199hTPOOAP77LMPWrVqhZ133hmHHXYY
Hn/8cV+Zc+bMwdixY9GjRw8UFxdjn332wZVXXokNGzZk1Q/xrHI5GD58OHr37h2a5pprrkGbNm3w
j3/8A8XFxQCA3XffHeeddx5ef/11DB06NJdNIoQQ0sg466yzMGfOHFx++eUoKSnBzJkzcdxxx2HB
ggXo169faF6lFG666SZ069bNWC9vNtu1a4fZs2f78r788st48sknccwxxxjrr7nmGtx22204//zz
cfDBB+PFF1/EuHHj4HmecXP6xz/+0feV+NWrV+Paa6/1lVlfMG4TQgipa2oTtyt577338Nhjj6Go
qMi3beXKlbjkkkswdOhQTJw4Ea1atcKrr76KCy+8EO+88w4effTRqrRr165F3759kUgkMGnSJDRv
3hyPPvoohg0bhvnz56N///5VaT/++GO0adMGl112GXbZZResX78ejzzyCA499FC8/fbbOPDAA2vf
OTWEcZsQQkhdk23cnjRpEn788UeMGTMGe+65J1auXIk//elPmDt3LpYuXYr27dtXpb3yyisxffp0
/PKXv8RFF12En376CTNmzMCgQYOwZMkSHHzwwQCA7777Dl9++SXGjBmDrl27oqKiAq+99hp+9atf
Yfny5bj55puryjz//PPRuXNnnHnmmejatSs+/vhj3HPPPXj55ZfxwQcfoLCwsGYdkYsvh86cOVN7
nqfff/99vWnTJp1KpQLTbdy4UScSCT158mRjfXl5uW7ZsqWeMGFC1m0YMWJE1nlJBvZj7WEf5gb2
Y25obP34zjvvaKWUvvPOO6vWlZaW6pKSEn3EEUeE5pWxKhuGDh2qd9ppJ11WVla1bt26dbqgoEBf
csklRtqBAwfqrl276nQ6HVrmTTfdpD3P02+//XZWbcoWxu3GA/ux9rAPcwP7MTc0tn6sTdyW9OvX
T5977rm6W7duvj767rvv9L///W9fnnPOOUd7nqdXrFhRte7CCy/UBQUF+r///W/Vuq1bt+quXbvq
gw8+uNp2fP311zqRSOgLLrggcttzAeN244H9WHvYh7mB/ZgbGls/1iZuv/nmm751Cxcu1EopPWXK
lKp1yWRSN2/eXJ966qlG2i+++EIrpfRll11WbTtHjBihW7Zsadxv/+Mf//Cle/zxx7VSSj/88MPV
lmmTM0sWrTWOPPJItGrVCs2bN8eoUaPw+eefG2k+/vhjJJNJ9OnTx1ifSCTQs2dP/Otf/8pVcwgh
hDRC/vznPyMej2PChAlV6woLCzF+/Hi89dZbWLduXaRyNm/eHCjTdrF+/Xr8/e9/x8knn4yCgoKq
9S+88AKSySQuuOACI/0FF1yAtWvX+iRlNk899RT22GMPHHbYYZHbkisYtwkhhNQ1uYjbjz/+OJYt
W4Zp06YFbm/bti323Xdf3/oTTzwRAPCf//ynat2iRYvQq1cvlJSUVK0rKirCyJEj8cEHH2DFihWh
bWnXrh2aN2+On376qdp25xrGbUIIIXVNbeK2VGlVMmDAALRp08aIxRUVFdi2bZvxxjmwPcZ6nofm
zZtX287dd98dW7duRXl5edW6gQMH+tIF/RaISk4mzJs3b46zzz4b9913H1544QVMmjQJb7zxBo44
4gijM7/66isopdCxY0dfGR07dsSXX36ZdRu6d++edV6Sgf1Ye9iHuYH9mBsaWz8uXboUe+21F1q0
aGGsr/xIztKlS0PzR7nZDOKpp56C1hqnn366rz2V/mh2e7TWoTemS5cuxX/+8x9fmfUB43bjgf1Y
e9iHuYH9mBsaWz/WNm5v3rwZkydPxrXXXuu7sa6Or776CgCwyy67VK0rKysLtHWpvDl///33fds2
bNiA7777Dp988gnOPfdcbNq0qd5tTRi3Gw/sx9rDPswN7Mfc0Nj6sbZx22bLli3YvHmzEYubNWuG
ww47DDNnzsSTTz6JNWvW4KOPPsKvfvUrtG3b1pisr6S0tBTff/89Vq9ejcceewwzZ85Ev379qrVZ
CfotEJkav5MekUWLFmnP8wy52qxZs7Tnefrdd9/1pf/lL3+pd95557pqDiGEEIvk5i0N3YQac8AB
B+ihQ4f61v/73//WSin9wAMPOPM+++yz+pxzztGzZs3SL774or7uuut0cXGxbt++vV67dm1ovX36
9NGdO3f2rT/hhBN0SUmJb/3WrVu1Ukpfc801zjInTpyoPc/Tn376aWjd9QXjNiGE7Ng0tbittdZX
Xnml7tGjhy4vL9da60BLliDKy8v1fvvtp0tKSgz7kpEjR+o2bdrozZs3G+kPP/xw7XmeIUGvZJ99
9tFKKa2U0q1atdLXXXddtfXXB4zbhBCyY9MU47ZNpQXpggULjPUrVqzQffr0qYqvSildUlKily9f
HljOrbfeaqQ9+uijq72H11rr8ePH60QioT///PMatVtrrWv00c+Kigr88MMPxrrKV+ZtjjjiCBx2
2GHGl1Qrn+aXlZX50peWlgY+7a/kqaee8n19du+998Ydd9yBqff+f/jfV35ZnOepwOW4WAaAeDxW
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
ozjllFOwzTbbYOrUqZg9ezYuvfTSUrpbb70Vb37zmzFlyhRsvfXWOP300/Hss8/Wv/gxQnFbCCF6
k8kUtwHghRdewBlnnIGtt94am2yyCebMmYOf/OQnJs1vf/vbyv+1V/+deeaZJn1RFPjEJz6BWbNm
YcqUKXjjG9+IW2+9tfL8S5YswZw5c7DVVlth+vTpOOCAA3DTTTeNqh3GxJLlwx/+MG655Ra0SG4x
b9487Lnnnrjqqqvwla98pXvCVgvvfe97x+K0QgghJiHvf//7cccdd2DBggXYZZddsHDhQhx11FG4
55578Ja3vCXM98gjj6DZbOKss87Ctttui+eeew433XQT3v72t+Ob3/wm3vWudw2nzbIMO+ywA666
6iojsXvta19rynzllVdw4IEHYuXKlfibv/kb7LDDDvjpT3+Kz372s7jnnnvw4IMPDqf92c9+hi22
2AIf+tCHsOWWW2LFihW48cYbsf/+++OHP/wh9txzzzFspTSK20IIIdYXo43bF154IZ577jnMnTsX
u+66Kx599FFce+21WLx4MZYuXYqtt956OO1Xv/pV3Hbbbdhnn30wc+bMZH2WLl2Kd7zjHdh+++1x
3nnnYcaMGfjd736Hxx9/3KT7P//n/+Dss8/GYYcdhmuuuQbLly/Hpz/9aTz44IP40Y9+hP7+/rVr
mBGguC2EEGJ9Mdq4XRQFjjrqKPzsZz/DBRdcgBkzZuC6667DIYccgoceegg777wzAGCrrbaqvIn9
r//6r/jqV7+Kww8/3Oy/+OKLcfXVV+PMM8/Evvvui69//es45ZRT0Gg0MG/evOF03/jGN3D88cfj
LW95C/7u7/4OWZbhtttuw2mnnYZnn30W55577ojaISvWodnOvvvuiyzL8OMf/xjAkERs0aJFeP75
5/HKK69g0003HZPzXHXDt7F8xfMAgH7yK2JvQvaELPshdok8D70P5CD5S3XIW4rTdZxXWm58Jdlv
0qbrcBmBF2rH1Scy8488N/2xlNdi5F/Jno4t5z3a19f93Ed94tMxkQ/ooPPyGiDPylUDbdrupnt1
lfXHitLZNnX9FbRJHluTGcsuHnPem5XH6Ub9vN39EtznPLq4TVvk15UlxjZ/tJZqCf9dHvft6vHn
P9s5EPv8Dg7Wa/toNKZWq8zY8FW3fcN5qtVNx565o5kD3F+pPHXWLD+WuIy+YFwdedAuOPbQN6GK
hXf8CE8/+1LlsXXNNjM2xV+dcMCI8jzwwAM48MAD8alPfQoLFiwAAKxatQp77LEHttlmG9x7770j
Km/lypWYNWsW3vSmN+Gb3/zm8P53vOMdePbZZ/H//t//S+a/5ZZb8Jd/+ZdYvHgxjjjiiOH9H/3o
R/Gxj30MDz30EN74xjeG+X//+99j++23x+mnn47rrrtuRHVfFyhuK24DituA4vZqFLcVt5n1Hbfv
vfdeHHTQQWbf97//fRx88MG45JJLcMUVVwzvX7FiBbbaais0m00cc8wxWLZsGR599NFSmUVRYK+9
9sJmm22G7373u+FN78HBQWyzzTbYe++98Z3vfGd4/+LFi3HMMcfg2muvxdlnnz2itlgXrK+4/fhH
r8Gq3z0BAMj6yZOa173AO9kTeZgX3r+Z/I7ZZ9ykc49PGj9o8iMvcu8NTZ/b9co2dQ32pzyxU37d
pr04XnD7Np1/M/WD6RPyGS8ZXJt3WdD1OG9p/lysWtXdfnWgu73yVZvn1VXVedrVbQ1UeL4P15P2
u0BSq63g2mejjbrbG9M2+6sDAMV0492eGttB4C7dZqOxaa6bx2m7zTns55rjtBikvozyuLrW2g+4
wB20vWsf/s7DfubeW9z0F5dBZWdN97xv0F+peWPKqzmWeE6Zem7cjR9Tjz0MM088GlVMprh92223
4S/+4i+waNEiHH/88QCAZ555BrNnz8ZRRx21xie9DzvsMPzHf/wHnn766eH4/OSTT+LP/uzP8D/+
x//AZz7zmeG0Bx98MB577DE89thjw+/NOPzww/Gf//mf+M1vfjP8A3On08HrXvc6bLLJJqUn3dfE
mFiyRDz99NPYcsstzb4//vGP2GyzzfCa17wGM2bMwDnnnINXXnllXVZDCCHEBOH2229Hq9XCBz/4
weF9G220EebPn4/7778fTzzxxIjKmzJlCrbaais8//zzlcc7nU4yRr344osAYJ5yA4Btt912uPwU
W221FaZOnRqef32juC2EEGIsWZu47W+WA8Db3vY2bLHFFviv//ovs3/bbbdF098YqeBb3/oWli1b
hssvvxz9/f1YuXIl8oqbdj//+c/x/PPPmyfXAODoo4/GJptsEkrB1zeK20IIIcaStYnbixYtwrbb
bjt8sxwAttxyS8ybNw9f//rXMTgYv/h1xYoV+O53v4sTTzzR/Jh91113od1u46yzzjLpzzrrLCxf
vhz333//8L4XX3wR06dPN2qsZrOJLbfcco3/l1exzm6Y33TTTXjiiSfwF3/xF8P7Xvva1+KCCy7A
woULceutt+K4447DddddhyOPPLLyi4oQQoh1S14UyPNx+huFwGnp0qWYPXs2NtlkE7N///33Hz6+
Jl566SU8++yzePjhh3HxxRdj2bJlOPTQQ0vpHnnkEUybNg2bbroptttuO1x22WVouyc/3v72tyPL
Mpx77rn40Y9+hCeeeALf/OY38fd///c4/vjjMXv27FK5L7zwAp555hn8/Oc/x+mnn46XXnqp8vzr
G8VtIYTY8JmMcZt55ZVX8PLLL5duEtfl29/+NrIsQ19fH/bdd19MmzYNU6dOxXvf+14899xzw+lW
/ekJ2ap/sKdMmTLip9TWBYrbQgix4TOZ4vZPfvIT7LPPPqX9+++/P/74xz/ikUceCfPecsstKIoC
p556aqk+06ZNw+te97pSmUVRmHh8yCGHYNmyZbjsssvw61//Go8++ig+9rGP4cEHH8SFF14YX3TA
mHiYe37xi1/gnHPOwVvf+lacdtppw/uvvPJKk27evHnYddddcckll+D2228v/YJfm6IYlrzwgMgK
knmwPCr1M0G1Qqwsi2YpbF4tSS7JWkmGE0nDASsPZylsXZl2nf1D9QsP2XTUKKxOyWpOvqgOWUJi
zx2RJeS4vN0iWayXRbOMmJVXRhbtztM2simqDyUrXQEdjKTGgJXnch24TXx96lBq66J626frGKuB
amm3l9i382oJN9sOjGaB9nArZOGHuL0bWXX7+sJNXd3ciK6jkbBHMPOr5k+TUV1Tc8WsOcaOIpbY
m/ydvLQGrS/yUZz3qaeewnbbbVfav91226EoCjz55JNrLGPevHn41re+BQDo7+/HmWeeiUsuucSk
2WWXXTBnzhzsueeeeOWVV3D77bfj4x//OH75y1/illtuGU73+te/Hl/4whdw3nnn4c///M+H9//V
X/0VvvjFL1ae/8ADD8TDDz8MANh0001xySWX4K//+q/XfPHrEMXt8jaguO1R3C7XQXG7jOK24jYz
FnGbueaaazA4OGhuEo+EX/7ylyiKAvPmzcORRx6Jj3zkI/jpT3+Kv//7v8fy5cvx/e9/HwCw6667
Issy/OAHP8D73//+4fwPP/ww/vu//xtZluG5557D9OnTR1WPtWW9x23kwJ8sPNhOIst5rHcnTuEn
ZVhsUb0NFzd57LE1ih+TbG9hrCm81QWtj5SuSNirREE4tBWpKiNE7ChoAAAgAElEQVSALWOyFu+n
dSWhoDAxj+O+W4sKXtuoCUo2I4FVhflS4exM2D4ky+lYVBZg+4XbygTuRGy1vmr2mLFU4Tpk1ds1
SfY349JF1jS8v/BP3/IxLo9tWMbih7CovX3zcJyr26ZcHtfV9xfbBYHXGFpXGvZas5rzy+SJxmNq
LBTV64+xGEr0w2SK20899RQOPvjgyrzAkL3KG97whsq8N998M7bbbju84x3vKJW5zTbbJMtczWWX
XYbf/OY3uPLKK/Hxj38cADBt2jQsWrQIxxxzTFjviDG/Yf7000/j6KOPxvTp0/G1r31tDf9cAQsW
LMCll16KJUuWJAP4LbfcYm5SAMCsWbPw6U9/ekzqLYQQE50PfehDw36evbp+rly5EhuRD+FqNt54
4+Hja+Lqq6/Geeedh8cffxxf/vKXMTAwgMHBQSP9uuGGG0yeU089FWeeeSa++MUvYsGCBcO/sAPA
zJkzccABB+Doo4/GjjvuiO9///v4zGc+gxkzZuCTn/xk6fwLFy7Eiy++iEcffRRf+tKXsHLlSrTb
bSMdW58obgshxIaJ4rble9/7Hq644gqcfPLJlf+Q1+Hll18GABxwwAHDL8o8/vjjMWXKFFx88cX4
zne+gzlz5mDGjBmYN28evvzlL+N1r3sdjj/+eCxfvhz/63/9L/T392NwcBArV64clxvmittCCLFh
MtnjdipvURRh3l/+8pd46KGH8OEPf3it6tPf34/Zs2dj7ty5OOGEE9DpdPCFL3wBp556KpYsWWL+
h6/DmP53/uKLL+KII47Aiy++iHvvvXfYwzXFxhtvjBkzZuAPf/hDMt173/teve1bCCHWgqqAnRdj
80ThaBjFQwGYMmXKsEyaefXVV4ePr4m99tprePvUU0/FPvvsgw984AO47bbbkvk+/OEP44YbbjDB
9gc/+AHe/e5344EHHsCb3jT0grZjjz0Wm266Ka644grMnz+/JB874IDui1dOPvlkvP71rwcAfOIT
n1hj3ccaxW0hhNhwUdzu8otf/AInnHAC9tprr9KP2iOtT5ZlpSfUTznlFFx00UW47777MGfOHADA
5z//ebz66qs4//zzcd555yHLMvzlX/4ldt55Z9x5550lufr6QHFbCCE2XCZ73E7lzbIszHvTTTch
yzKccsopa1Wfs88+Gw888AAeeuih4X1z587FG97wBpx77rnG77wOY3bDfNWqVXj3u9+NX/3qV/j2
t7+N3XbbrVa+l19+Gc888wy22mqrUZ97tScQYCWMjYwkjw2j4XT5g3JJVtF2UgaWr/KxjpHC2jws
jW13EulIzm3ls900/q3LKenmarxUmIvg8ny6NT21UAXXldVjpn8ScleuQ6PI3LHudosk0rwI9fX5
PuahbiV5dch5LHFbleTF3c/NhGycZegtuqBGIPMunSvoEj8ujFqZPvD4BexY5/HI0qHSHKhhaVB6
OzjB15q7PoaR0ldfdwY/LgI5t2lTe5q6Y9tIQpvVefxYiDB9XJKsVW6G/e2xbd/dPz7huT78S/xq
on/atttuu0oZ2FNPPQVgyLtzJPT19eHYY4/F1VdfjVWrVlX+er2aHXbYAQDMP5xf+MIXsO222w7f
LF/Nsccei49+9KO47777SjfMmc033xxz5szBzTffvN5vmCtu/2m/4vaf6tPdVtxW3K5CcVtxezXr
O24//vjjeNe73oXp06dj8eLFmDZt2ihr3j2fl3evfnk3+5hvttlmuPPOO7F8+XI89thj2GmnnbDD
DjvgrW99K7baaitsttlmo67HaBjPuF3kxbAlRGZsSzgw8JoTrxG2XLY3cGt9h+xV+FhgpwIAxQDZ
q9ROF9iCeIuFOneeUrYOxmrOpUsF2DrlMWQfUeSuXOO8EVtdmPrxl4IWpeu3t5KyovsdmmuWDaBy
v6uOtdph2x/fNrx2G7s0a1ljLGzYSiZlEcOfo64sWakF9nvOFq1gG5U2j+3q/aVjRTA2U5YsDW4f
ZxFDH6O4XQrCoQ0LnaccuOP6McauJbAfymrOk1Qfh4y8noX9ol/zPOPD+orb22233XC6keS95ZZb
sNtuu5X+p15d5j333LPGMgcHB3HjjTeWvMpbrRaOPPJIfO5znxuxqntMbpjneY558+bhRz/6Eb7x
jW9UPua+atUqDA4Oln6Jv+KKKwAARx555FhURQghxAgo6MbleJwbqP4lPmLvvffGPffcg5dfftnE
kx/+8IfIsgx77733iOvxxz/+EUVR4KWXXkreMP/1r38NAOYfzqeffhqdTqeUdvUbwP1LQqtYuXIl
XnjhhZFWe61Q3BZCiN5kssXtP/zhD3jXu96FdruNe+65p9LHdCS8+c1vxg033IAnnnjC7F99c6Dq
pvL222+P7bffHgDw/PPP48EHH8TcuXPXqh4jRXFbCCF6k8kUt/fee2/ce++9pf0//OEPMXXqVMye
Pbt07Ec/+hF+9atfDXuOV5X5z//8z/jFL35hHkTz9Xn22WfRbrfD/83zPEen0xnRDfNR/JRZ5n//
7/+Nu+++G0ceeSSeeeYZ3HzzzeYPAFasWIEdd9wRZ599Nq699lpce+21OProo/EP//APOPLII3Hs
sceORVWEEEKMgLwoxvVvpJx00klot9v4whe+MLxvYGAACxcuxIEHHoiZM2cCGIo5Dz/8sAmY//3f
/10q7/nnn8eiRYuw4447YssttwQAvPTSSxgYGCil/fjHP44sy3D44YcP75s9ezaefvppfO973zNp
v/rVryLLMvMredX5H3vsMXz729/GfvvtV7cJxgTFbSGE6E0mU9z+4x//iCOPPBJPPfUUvvnNb2LW
rFlr3X7HHXccNtpoI3zpS18y+2+44QZkWYbDDjssmf+iiy5Cp9PBggUL1rouI0FxWwghepPJFLdP
OukkPP3007jjjjuG9z3zzDO4/fbbceyxx6LPvSwY6P7fHFmCHXfccWi1WrjuuuvM/uuvvx4zZ87E
W97yFgBDSrHNN98cd955p3lo7eWXX8bdd9+N17/+9cmH46oYkyfMf/rTnyLLMtx99924++67S8dP
PfVUbL755jjmmGOwZMkSfOUrX0Gn08Euu+yCq666qtLYfSR0OsWw7LQRyGlZgVL+vaELS1FZutpx
UheWubZJCjtAsuxBJ8MZHKR07Xrp+Dxct9QvVF5GvJqUjNXkcaqeJklZjayZ5bxuIsbv8F57WELb
JBlWP6UpvHyfRnoe1jv+/YhtAlKwVLdptm3ZXG/e5msrq8+qZd/cq76WeTCG207a3TFWA53K/T4P
t51v7+H9Xmpemaosi86DocrX7fM0U5LpivypOpTsDSLZeE2JWR7MXf+y+zpKtBTc3rx2jNMP2uuE
/fffH3PnzsVFF12Ep59+GrvssgsWLlyI3/72t+af37/927/FV77yFTz22GPYcccdAQw9WbX99tvj
gAMOwNZbb43f/va3WLhwIZ566injX/7QQw8NS9R22WUXrFy5EnfccQfuv/9+nHnmmeZX9XPOOQdf
+tKXcMwxx+Ccc87BTjvthHvuuQe33norDj/8cHMjfM8998Q73/lO7L333pg+fToeeeQR3HjjjWi3
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
Ae9F3v/+9+OOO+7AggULsMsuu2DhwoU46qijcM899+Atb3lLmO/CCy/Ec889h7lz52LXXXfFo48+
imuvvRaLFy/G0qVLsfXWWw+nPe+883DNNdfgtNNOw9lnn43nn38e119/PQ4++GDcd9992HfffQEA
J554InbdddfSuS666CK88sor2G+//cz+LMtw/fXXY9q0acP7ms2EJHEdo7ituD1cP8XtEaC4rbhd
Pqa4HTPauP3www/jk5/8JHbddVfstddepR+tIy699FK8+uqrxgqCWbp0Kd7xjndg++23x3nnnYcZ
M2bgd7/7HR5//HGT7v7778dnP/tZ7L777th9992xdOnS+he9jtgQ4rYZ4LzONLpWKcWrdn7xepaZ
/HQTP2XJwnk6ZGExaH8EMJ8T9hh17ExKNiVkW2HmLt9RcROer9WcMa9nr2EL84F73cVtY6lC1hnG
rsNbatCx2jUrgvjDN/lqtpXv0SxxbJhGvEAbe5bUQs4xy1jJxHY4RWD3wrZGQGz3Ytqtpr1Q5v/f
oPFsrJFaCUuWyKLFWO/FeQr6zpT5yB3Yx1irHz/mgvoUcd8ZWyLTvtX2LqXyFLeTcbsoChx11FH4
2c9+hgsuuAAzZszAddddh0MOOQQPPfQQdt555+G0S5cuxaGHHordd98d11xzDZYvX45PfvKT+NWv
foXFixebci+++GJcffXVOPPMM7Hvvvvi61//Ok455RQ0Gg3MmzdvON0rr7yCQw45BC+99BIuueQS
tFot/OM//iMOOeQQLF26FNOnTx9RO4y5h/nLL7+MKVOmVN4AuOOOO/Dud797OHgDwDvf+U7Mnj0b
t91229gEcCGEELUpUM8CcV2de6Q88MAD+L//9//iU5/6FBYsWAAAeN/73oc99tgDF1xwAe69994w
7zXXXIODDjrI7Dv88MNx8MEH47Of/SyuuOIKAECn08H111+PefPmYeHChcNpTzrpJMyaNQs333zz
8A3zPfbYA3vssYcpc/ny5Vi+fDnOOOMMtFrlMHviiSdiiy22GMXVrxsUt4UQoneYTHF73333xbPP
PovNN98cixYtqnXD/Oc//zmuv/56XH755bjsssvK11AUeN/73ofdd98d3/3ud9Hf3x+Wddxxx+Gk
k07CtGnT8KlPfWqDuGEOKG4LIUQvMZni9te+9jXcf//9WLRoEY4//ngAwNy5czF79mxcfvnluOmm
m4bTXnzxxdhiiy3w7//+78MPk+20004444wzsGTJEhx66KEAhp4Y/8d//Ef8z//5P/GZz3wGADB/
/nwcfPDBOP/88zF37tzhH8g/97nP4de//jV+/OMfY5999gEAHHHEEdhjjz3wqU99Ch//+MdH1BZj
asnygQ98AJttthk23nhjzJkzBw8++ODwsSeffBK///3vh28yMPvvv3/4iL4QQoh1x3j5qa3+Gym3
3347Wq0WPvjBDw7v22ijjTB//nzcf//9eOKJJ8K8/mY5ALztbW/DFltsgf/6r/8a3jc4OIiVK1ea
J84BYKuttqplofLVr34VAHDqqadWHs/zHC+99FKyjPWF4rYQQvQWkyluT5s2DZtvvvmIznfuuefi
xBNPxEEHHVT5BP+3vvUtLFu2DJdffjn6+/uxcuVKo9JgNt98c6MI2xBQ3BZCiN5iMsXtRYsWYdtt
tx2+WQ4AW265JebNm4evf/3rGPzTS5tfeuklLFmyBO973/tMnD3ttNMwbdo03HbbbcP77rrrLrTb
bZx11lnmXGeddRaWL19ufkxftGgR9ttvv+Gb5QCw22674Z3v/P/bu/eoKM7DfeDPrFwWWEFUYhck
IhJiohiCdzGWqFExVmKCErQaPR7psbWKptGoJ6a/1ms1kkRLe4JtiPXSVKOpjdZWtHhDRVQ0arxh
5YAiajFBUC4L7/cPfy4ze3NhB3aB53MOR3nnnZmXl9l52Jl33xmm2Ka9VLlg7uHhgfj4eHzyySfY
tWsXli1bhvPnz2PIkCE4e/YsAKCoqAgAoNfrzdbX6/UoKSkxdh4REZElubm5CA8Ph06nU5T369fP
uLw+ysvLUVZWho4dOxrLtFot+vfvj/T0dGzZsgUFBQU4d+4cpk6dig4dOij+eLBky5YtCA4OtniB
XgiB0NBQ+Pn5oW3btpg8eTLu3LlTrzargblNRERNQe3ctmXbtm04fvw4fve731mts3//fkiSBHd3
d/Tp0wc+Pj7w9vZGYmIi7t+/r1pb1MbcJiKipuBIbp85c0ZxsVq+7sOHD3HlyhUAwLfffguDwYDe
vXsr6rm7uyMyMlJxgzc3Nxc+Pj7o3r272TaFEMa6QgicO3fO6k3jvLw8i/Oj26LKlCwDBw7EwIED
jd+PGTMGb731Fnr16oWFCxdiz549ePToEYDHdyZMabVaAMCjR4/g7u5e7/0r75zI76DI7wfI5kK1
Md+XfH400/kZ7SGf/7TaZIJ9+Typ1uZFtZf5z1DX+WdwVgAAGnxJREFUVvkHCw3y+eJM5oHUyOdw
lc0nJYTJthVzaNYVy6dRM52HUj5noKPzotqaE9R0Tk972iMnbMwpqpwf1PI8otb2b9ZOk9+x/HdR
K1nZho1pjZtq6izFfJw2jmf5fL7ycltzc8p/J26mc4LKXntuVuYHNX19KuYolW27VlguB5QnQI1b
3fZMj1nF8Sxvt2yON9O5T93aPP24Nx3QpOhv2c8nn8tZ/lp9vI598+JabUONaPDDQBxVW1P/BhcV
FVl9IyiEwK1bt+q1vZSUFFRXV+Ptt99WlG/evBkTJkzAT3/6U2NZt27dcOTIEYSEhFjd3sWLF3Hu
3Dm8//77Zsv8/f3xy1/+EgMHDoSnpycOHz6M9evX4+TJk8jJyTH7o6QxMbfrMLefLGNuW9vW4/Yw
t5nbzG1XyG1rKioq8N5772HevHkIDg7G9evXLda7evUqhBCYMGECYmNjsXjxYpw9exbLly9HYWEh
Dh8+rEp71Obs3EatqAsU2ZzS1ueGVr7eFfNJy19IpvNgW6F4rRhszGEunxNdPh90Q+ZDMP0ZrFw5
EXbOww55U83mzpatJ19HEdw25pO2Nre0vWytb22ObNP+sSO3zbZVa3mZELWW69ggmfapYk5q2Tza
st+XZGHqRFkj7Nqv1dXtrSibR1uYnNsVx5Zs3nPFOjbmMJfPJy7cTOpZ+70YrMxnDijnFrcy57jp
3xGKo8JNdu6xcTwr5kGX/Y7M52G34/xhevzI+1T+XAL5+cL0AcnyZxwxt23mdlFREX784x9bXBd4
/EmoHj16oKioCJIkWd2PfNqXoqIidOrUyeY2AaCkpASVlZVWt/mkrqXnj1mj+hzmT3Tr1g1xcXHY
uXMnhBDw8vICAFRWVprVraioAABjHUu2bt2KrVu3KspCQ0Px8ccfq9hqIqKWKzk52fgGsrmePx89
evTUN4L2OnToEH7zm98gISHBLNh1Oh169OiBQYMGYdiwYbh9+zZWrlyJuLg4HDlyxOoc5Js2bYIk
SZg4caLZstmzZyu+HzduHPr27YtJkyYhNTUV8+fPt7vtjYG5TUTkWpjb9luxYgUMBgMWLlxos15Z
WRkAoH///ti4cSOAx3ns5eWFRYsW4cCBAxg6dKgqbWpszG0iItfS2nPb1rpCCOO6T7vBK9+Hve2x
96ZxfTTaBXMACA4ORlVVFcrLy41X9J98VEyuqKgI7du3t3m3OzExEYmJiRaXvdjtGfjpzDtFftdL
PmrEzeROlJtsREgb+YgUO0aamJKPGqmptT6ipFp2567a5Knd8tFuytFtdfXMb87KR1XJRhDJ7qgJ
05uKsNxW01FVin3JF8m6x/SGchtF39f1t7xP3U1+Dx7udd9rPer+7+WpPC48ZMvk68i3ZzpKSLIy
Wk4xUs3kAdw1VkenyfvK4mbNmI5iUhyb8rup8hu1No4/xYOa5aPETBokHxFZWVV3p7SiSnnXtKqq
7oevko3UqKqWH4smx6lihJTl0WS2bszLf1bTUWeKUWyyfpAgf32ajFSTH4/ybckWmI58kP9e5G1w
c9OY1Kv73l1+vpCPbjN9Ddhx/jB9TSper7K+k/d9jcnrU/77t9bd+gBfALAY2GEhHVDboMeBOC4s
pEO91/Hy8mrwG0G5S5cu4c0330SvXr2QlpamWFZTU4Phw4fj1VdfNT5YBHj80KwePXpg9erVWLFi
hcXtbt261eKDQK1JTEzEu+++i4yMDKdfMAeY28ztx5jbzG1LmNvMbWfmti03btzAmjVr8Ic//OGp
zxnx8vKCJElmnyybOHEiFi5ciKysrGZzwRxoutz27Nkdkp+v+QI3K6NCPZT7UYzklZ8jNA0YYS4f
4W6Sx/JlqKwbMVpbbTpiVDZKXT5aVz5ljemIUPkJQHauFvJ9mr40ZesoRg/XmLZbHhLyj4bJ6kgm
I3Jl5zZJMQpXVs/k9y151n2mTfKq+ztMY/o6lP3+NPJ15NtzV15KsjrCXP6N6chdxd88tRb/b29w
m44+VvwdIV8ma6fZiGUZa+02GwUuO2ZERd25rrbC5LxXVVVXr1L+f9kxZ/qJCflxIj/OGvDJMJjm
tvxn11juH9N1YOXvH1ufhFCcF2R/A8JkdL/iGJYvk+e72WvAjvOHaf8oXnuy46+6xkodKM8FVrrb
PfDxCOjWntu21pUkybju027wyvdhb3scvWlsSaNeMM/Ly4NWq4VOp4NOp0NAQABycnLM6mVnZyMy
MrLB+5k3LcaBVhIRtV6f/b94p+7fYDAgKSkJ9+7dU5Rbe9Om1+stfgzsyZvDwMDAp+6zoKAAI0aM
gL+/P3bv3m32QK9Dhw7h/PnzSElJUZSHhYXhhRdewNGjRy1u98iRI8jPz8eqVaue2ga54OBglJSU
1GudxsLcJiJyba0xt59myZIl6Ny5M4YMGYL8/HzF9u/evYv8/Hx06dJFsT/Tj3c/edC3K89jbklT
5XbnxbMcaSYRUavVmnJbr9dbvWkrX/fJ9C7W6sr3odfrkZmZ+dRttm/fHp6ennbt316qPPTTtOMB
4OzZs/jHP/6BkSNHGsveeustfPPNN4qnqu7fvx9XrlzBhAkTHGpDcnKyQ+vTY+xHx7EP1cF+VIer
96Obmxv+/Oc/Y9euXYovayOcIiMjceXKFeNHqp84fvw4JEl66pvBkpISjBgxAgaDAf/6178szodW
XFwMSZJQYzq6AEB1dTUMpqNj/r/NmzdDo9FYbbs1N27cQEBAQL3WcRRzu+VgPzqOfagO9qM6XL0f
mzq37VFQUIBr164hNDQUXbt2RdeuXTFx4kRIkoSZM2ciNDQUpaWlAIDevXtDCKHINaBuDtSmzmN7
MbdbDvaj49iH6mA/qsPV+7EpczsyMhKnT582Kz9+/Di8vb0RHh4OAOjZsyfc3NzMbvBWV1cjNzdX
sY/IyEg8fPgQly5dstkeSZIQERFh8abxiRMnEBoaajZQ7mlUuWCekJCAMWPGYPny5diwYQPmzp2L
6Oho6HQ6xcfWFy1aBG9vb8TExGD9+vVYsWIFJkyYgJdeeglTp051qA3WHuxC9cN+dBz7UB3sR3W0
tH6Mj4+HwWDAZ599ZiyrqqpCeno6BgwYgKCgIADA7du3cfnyZcVF74cPHyI2NhZFRUXYs2cPQkND
Le4jPDwcQgj89a9/VZSfPn0aly9ftvjkb4PBgO3bt+OVV15B586dLW7X0pvd1NRU3L17F7GxsU//
4VXE3G452I+OYx+qg/2ojpbWj47ktr2WLVuGnTt34uuvvzZ+LV26FACwYMEC7Ny50/gmOS4uDp6e
nvj8888V20hLS4MkSXjttdca+qM2KuZ2y8F+dBz7UB3sR3W0tH50JLfj4+NRXFyMHTt2GMvu3buH
7du3Y+zYscZpwXx9fTF8+HBs2rQJ5eXlxrobN25EeXm54gZvXFwc3NzckJqaqmjnH//4RwQFBWHQ
oEGK/Z88eVJx0f7y5cs4cOBAg24aqzIly7hx47B582akpKSgtLQUAQEBiI+Px5IlSxQXJDp37oyD
Bw9i3rx5WLhwITw8PDBmzBisWbOmYU/rJiKiVqVfv34YP348Fi5ciOLiYoSFhSE9PR35+fmKN7/v
v/8+Nm7ciBs3buDZZ58F8Hh+0pMnT2L69Om4cOECLly4YKyv0+kQFxcHAIiKisJrr72GL774Aj/8
8ANGjBiBW7duYf369fDx8cGcOXPM2rV3717873//w6RJk6y2vUuXLkhISEBERAS0Wi0OHz6ML7/8
ElFRUUhKSlKri+zC3CYioqbgSG4DwNKlSyFJEi5cuAAhBDZu3IjDhw8DABYvXgwAijfLT/j5+UEI
gb59+2Ls2LHG8k6dOmHx4sX48MMPMXLkSLzxxhvIzc3Fhg0bMHHiRPTu3dtYt7S0FJ9++ikkScLR
o0chhMC6devQrl07tGvXDr/4xS9U7y9rmNtERNQUHMnt+Ph4fPzxx5g2bRouXLiAjh07IjU1FbW1
tfj1r3+t2M+yZcsQHR2NIUOGICkpCQUFBVi7di1GjhypuHkdFBSE5ORkrFmzBlVVVejbty927tyJ
o0ePYsuWLYq5+n/+858jLS0No0ePxq9+9Su4ubkhJSUFer0e8+bNq39niBbiJz/5ibOb0CKwHx3H
PlQH+1EdLbEfKysrxfz580VgYKDw8vIS/fv3F/v27VPUmTp1qmjTpo3Iz883loWEhAiNRmPxq2vX
ror1KyoqxNKlS0XPnj2Fj4+P8Pf3F3FxceLs2bMW25SYmCi0Wq24f/++1XYnJSWJnj17Cj8/P+Hp
6SnCw8PFokWLRFlZmQO90Xy1xGPTGdiPjmMfqoP9qI6W2I8NzW0hhJAkyWJut2nTxuY+MzMzhUaj
EV999ZXF5b///e9F9+7dhaenp+jSpYv48MMPhcFgUNS5ceOG1f2b/t3QGrTEY9MZ2I+OYx+qg/2o
jpbYj47k9vfffy9mzJghAgIChE6nE0OHDhWnT5+2uJ+jR4+KwYMHC29vb9GpUycxe/Zsq++NV65c
Kbp27Sq0Wq2IiIgQW7dutVjv5s2bYsKECaJdu3bC19dXxMXFiby8vAb0ghCSEDYeq9uMjB07Frt2
7XJ2M5o99qPj2IfqYD+qg/1IrorHpjrYj45jH6qD/agO9iO5Kh6b6mA/Oo59qA72ozrYjy1Xm1+b
jotvxiIiIpzdhBaB/eg49qE62I/qYD+Sq+KxqQ72o+PYh+pgP6qD/UiuisemOtiPjmMfqoP9qA72
Y8vUYkaYExERERERERERERE5QuPsBhARERERERERERERuQJeMCciIiIiIiIiIiIiAi+YExERERER
EREREREB4AVzIiIiIiIiIiIiIiIAzeyC+RdffAGNRmP21aZNG9y5c8esflZWFgYPHgwfHx/o9XrM
mTMH5eXlTmi5azlw4ACmT5+O559/Hj4+PujWrRtmzJiB27dvm9WNiYmx2OejR492QstdV1VVFRYs
WICgoCB4e3tjwIAByMjIcHazXFZOTg5mzZqFnj17QqfToUuXLkhISMDVq1cV9aZNm2bx+HvxxRed
1HLXcvDgQavnxOzsbEXdS5cuYdSoUWjbti06dOiAKVOm4N69e05qObUWzG11MLfVx9yuH+a2Opjb
5OqY2+pgbquPuV0/zG11MLdbNzdnN6C+JEnCb3/7W4SEhCjK27Vrp/g+NzcXw4cPx4svvoiUlBQU
FhZi9erVuHbtGnbv3t2ELXY9CxYswP379zF+/Hg899xzuH79OtatW4fdu3cjNzcXzzzzjLGuJEkI
Dg7GypUrIYQwlgcGBjqj6S7rnXfewY4dOzB37lyEhYUhPT0do0ePRmZmJgYNGuTs5rmcVatWISsr
C+PHj0evXr1w+/ZtrFu3DlFRUThx4oQioLVaLf70pz8pjj8/Pz9nNNtlJScno0+fPoqysLAw4/9v
3ryJV155Bf7+/li5ciUePHiA1atX4/z588jOzoabW7OLAmpGmNuOY26rj7ldP8xtdTG3yZUxtx3H
3FYfc7t+mNvqYm63UqIZSU9PFxqNRpw6deqpdWNjY0VQUJAoKyszlm3YsEFoNBqxb9++xmymyzt8
+LBZ2aFDh4QkSeKDDz5QlMfExIiIiIimalqzdOLECSFJkli7dq2xrKKiQoSFhYno6Ggntsx1HTt2
TFRXVyvKrl69KrRarZg8ebKxbOrUqaJt27ZN3bxmIzMzU0iSJL766iub9WbOnCl8fHxEYWGhsSwj
I0NIkiTS0tIau5nUijG31cHcVhdzu/6Y2+pgbpOrY26rg7mtLuZ2/TG31cHcbt2a1ZQscmVlZait
rbW47MGDB8jIyMDkyZPh4+NjLJ8yZQp8fHzwt7/9rama6ZIGDx5sVvbKK6+gffv2+O677yyuU1NT
w4/XWbF9+3a4ublhxowZxjJPT09Mnz4dx44dw82bN53YOtc0YMAAs7usYWFh6NGjh8VjsLa2Fg8e
PGiq5jVLZWVlqKmpsbhsx44dGDNmDIKCgoxlw4YNQ3h4eKs/H1LTYW43HHNbXczt+mNuq4+5Ta6O
ud1wzG11Mbfrj7mtPuZ269PsLpgLIRATEwNfX194e3sjLi4O165dU9T59ttvYTAY0Lt3b0W5u7s7
IiMjcebMmaZscrNQXl6OsrIydOzY0WzZlStX4OPjg7Zt20Kv12PJkiUwGAxOaKVrys3NRXh4OHQ6
naK8X79+xuVkn+LiYrNj8OHDh/D19YWfnx86dOiAWbNm8Y9JE9OmTYOvry+0Wi2GDh2KU6dOGZfd
unULd+7cMfsIGfD4GOX5kBobc7txMLcbjrmtHuZ2wzC3yZUxtxsHc7vhmNvqYW43DHO7dWpWE+l4
e3tj2rRpePXVV+Hr64tTp07ho48+QnR0NE6fPm28m1NUVARJkqDX6822odfrceTIkaZuustLSUlB
dXU13n77bUV5WFgYhg4dioiICJSXl2P79u1YunQprl69iq1btzqpta6lqKjI6rEmhMCtW7ec0Krm
Z9OmTbh58yaWLl1qLAsMDMT8+fMRFRWF2tpa7N27F6mpqTh37hwyMzOh0TS7e36q8vDwQHx8PEaP
Ho2OHTvi4sWLWLNmDYYMGYKsrCy89NJLKCoqAgCrx2hJSQmqq6vh7u7e1M2nVoC53XiY2w3H3FYH
c7v+mNvk6pjbjYe53XDMbXUwt+uPud3KOXM+GDUcOXJEaDQaMXPmTGPZX/7yF6HRaMTJkyfN6k+Z
MkX4+/s3ZRNd3sGDB4W7u7tITEy0q35SUpLQaDTixIkTjdyy5qFbt27i9ddfNyu/fv26kCRJfPLJ
J05oVfPy3XffCT8/PzF48GBRW1trs+7y5cuFRqMRX375ZRO1rnm5du2a8Pb2FrGxsUKIx3MoSpIk
tm3bZlZ3yZIlQqPRiB9++KGpm0mtGHPbccxtxzC3HcfcVg9zm1wdc9txzG3HMLcdx9xWD3O79XDJ
20XV1dUoLi5WfFmbPy06Ohr9+/dHRkaGsczLywsAUFlZaVa/oqLCuLyls6cfL126hDfffBO9evVC
WlqaXdt99913IYRQ9Hlr5uXlZfVYe7KcrCsuLsbrr78Of39/bNu2DZIk2aw/d+5cSJLE48+Kbt26
IS4uDv/5z38ghHjq+RDgMUqOY26rg7ndNJjbjmFuq4u5Tc7A3FYHc7tpMLcdw9xWF3O79XDJC+ZZ
WVnQ6/UIDAw0/ltYWGi1fnBwMEpKSozfP/lozpOPRsgVFRUhMDCwUdrtap7WjwUFBRgxYgT8/f2x
e/duxQNbbAkODgYARZ+3Znq93uqxBqDVHG8NUVpailGjRqG0tBR79+7Fj370o6euo9Vq0aFDBx5/
NgQHB6Oqqgrl5eXGj4ZZO0bbt2/Pj4eRw5jb6mBuNw3mdsMxtxsHc5uaGnNbHcztpsHcbjjmduNg
brcOLjmHeWRkpNndLFsv7OvXryMgIMD4fc+ePeHm5oacnBzEx8cby6urq5Gbm4uEhAT1G+2CbPVj
SUkJRowYAYPBgMzMTHTq1Mnu7ebl5QGAos9bs8jISGRmZqKsrEzxIJLjx49DkiRERkY6sXWuq7Ky
EmPGjMG1a9ewf/9+PP/883atV1ZWhnv37vH4syEvLw9arRY6nQ46nQ4BAQHIyckxq5ednc3jk1TB
3FYHc7tpMLcbhrndeJjb1NSY2+pgbjcN5nbDMLcbD3O7lXDaZDANcPfuXbOy3bt3C0mSxNy5cxXl
sbGxIigoSJSVlRnLNmzYIDQajfj3v//d6G11ZeXl5aJfv37Cz89PnDlzxmq90tJSUVlZaVaekJAg
NBqNzXVbkxMnTghJksRHH31kLKusrBTPPfecGDRokBNb5rpqamrE2LFjhYeHh9i7d6/FOhUVFeLB
gwdm5e+9957QaDTi73//e2M30+VZOifm5uYKDw8PMW7cOGPZzJkzhY+PjygsLDSWZWRkCEmSxGef
fdYkbaXWibmtDua2upjb9cfcVgdzm1wdc1sdzG11Mbfrj7mtDuZ26yYJIYSzL9rbKzw8HC+//DL6
9OkDPz8/nDp1Cp9//jmCgoKQnZ2tuAN25swZREdH44UXXkBSUhIKCgqwdu1axMTEYM+ePU78KZzv
jTfewK5duzB9+nTExMQolul0OsTFxQEADh48iMTERCQmJiIsLAyPHj3Cjh07cOzYMfzsZz9Damqq
E1rvmhISEvD1118jOTkZYWFhSE9PR05ODg4cOIDo6GhnN8/lJCcn49NPP8XYsWMxfvx4s+WTJk1C
fn4+Xn75ZSQmJqJ79+4AgL179+Kf//wnRo8ejW+++aapm+1yhg0bBi8vLwwaNAjPPPMMLly4gLS0
NHh6eiIrK8s4iqCwsBBRUVHw8/PDnDlz8ODBA6xZswbPPvsssrOz+RExajTMbXUwt9XH3K4f5rY6
mNvk6pjb6mBuq4+5XT/MbXUwt1s5Z1+xr48PPvhAREVFCX9/f+Hp6SlCQkLErFmzxJ07dyzWP3r0
qBg8eLDw9vYWnTp1ErNnz1bcAW+tQkJChEajsfjVtWtXY73//ve/IiEhQYSGhgpvb2+h0+lE3759
RVpamhNb75oqKyvF/PnzRWBgoPDy8hL9+/cX+/btc3azXFZMTIzVY1Cj0QghhPj+++/FlClTRHh4
uNDpdMLLy0tERESIVatWCYPB4OSfwDWsW7dODBgwQHTs2FF4eHiIoKAg8c4774i8vDyzuhcvXhSj
Ro0SOp1OtG/fXkyZMsXquZNILcxtdTC31cfcrh/mtjqY2+TqmNvqYG6rj7ldP8xtdTC3W7dmNcKc
iIiIiIiIiIiIiKixaJzdACIiIiIiIiIiIiIiV8AL5kRERERERERERERE4AVzIiIiIiIiIiIiIiIA
vGBORERERERERERERASAF8yJiIiIiIiIiIiIiADwgjkREREREREREREREQBeMCciIiIiIiIiIiIi
AsAL5kREREREREREREREAHjBnIiIiIiIiIiIiIgIAC+YExEREREREREREREB4AVzIiIiIiIiIiIi
IiIAvGBORERERERERERERASAF8yJiIiIiIiIiIiIiAAA/weuJ3Qv2sen8gAAAABJRU5ErkJggg==
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[6]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">draw_correlations</span><span class="p">(</span><span class="n">X_corr</span><span class="p">[</span><span class="mi">1</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
okWL9LBhw3Tbtm11YWGh7tSpk7722mv1d99950v77bffas/z9KBBg5KWn+q4ZP369fq2227TRxxx
hG7atKlu2rSpPvjgg/U555yjX375Zd+v9kop3blzZ18+S5cu1cOGDdOlpaW6adOmunfv3vqFF15w
nrNhwwZ92WWX6fbt2+v8/HzteZ7vF1pXWdm0VTq/eGut9aOPPqqHDh2qR48erbdt2xbqnGzx/fff
68suu0z/9Kc/1TfffLM++eST9RtvvOFLN2zYMO15nl6wYEGofOuzTakI22ZCCKkJ9Nv029lm48aN
+vTTT9c9e/bUeXl52vM83aJFC92/f3995513Gmkbit9Op82EEFIT6Lfpt2uDxva+Tb9NGhJK6zpY
+pgQkrNordGmTRsce+yxePfdd+u7OoQQQggJgH6bEEIIyR3otwnZO6EkCyEkkM8++wxbtmzB/fff
X99VIYQQQkgK6LcJIYSQ3IF+m5C9k6xMmL/00kvwPM/3F4lE8P333/vSL1y4ECeeeCJKSkpQVlaG
66+/HhUVFTWqw/Tp02t0PtkD7VhzGpoNe/XqhWg0imOPPbZOy21odqwvGqIdd+/ejVtvvRX77bcf
iouL0adPH8yePTvlefPmzcOwYcPQsWNHFBUVoaysDEOGDMHChQt9abXWePrpp9GzZ080a9YMpaWl
OOOMM7Bo0SJf2vHjx2PYsGEoLS2F53nOh91ly5ZhzJgx6Nu3L4qKiuB5Hv7973+nb4AsQL/dcKAd
a05DsyH9dm7TEO2Yqd+uZvbs2Tj55JPRsmVLNG/eHEcffTRef/11I83777+P0aNH44gjjkBeXh46
d+7szG/dunW48sor0blzZxQXF6NLly646aab8OOPP/rSzpgxA71790ZRURHatWuHn//859i4cWP4
xmcJ+u2GA+1YcxqaDem3c5uGaMe6eN9Ox28DwIoVKzBq1Cjsu+++KC4uRteuXXH33XcnTfvqq6/i
hBNOQNOmTdGqVSv07dsXc+fODdV2Sda+MFdK4YEHHsDUqVPjfy+//DJatmxppFuyZAkGDx6MnTt3
YuLEibjiiivw7LPPYsSIETUqvyEO0vqAdqw5tGF2oB2zQ0O042WXXYZJkybhkksuweOPP468vDyc
ccYZSR2xZNmyZYhEIrj66qvx1FNP4eabb8b69evRv39//PnPfzbSjh07Fv/v//0/HHXUUZg4cSLG
jh2LZcuW4aSTTsInn3xipL377rvxySefoFevXlBKOctftGgRJk+ejPLychx22GGBaesC+u2GAe1Y
c2jD7EA7ZoeGaMdM/TYATJkyBaeddhoKCgrw0EMP4de//jVOOukkrFq1ykj3yiuvYMaMGWjZsiX2
228/Z34VFRXo06cP3n77bVx22WWYPHkyhg4dismTJ+OUU04x0v7mN7/BqFGjsM8++2DixIm48sor
MWPGDAwePBi7d+/OzBg1gH67YUA71hzaMDvQjtmhIdqxLt63w/ptYI9f6927N7744guMHTsWkydP
xqhRo/Ddd9/50o4bNw6jRo1Cx44dMXHiRIwfPx5HHXUU1qxZk74hsiGE/uKLL2rP8/TixYtTph0y
ZIjeb7/9dHl5eXzf888/rz3P0++//37GdTjrrLMyPpckoB1rDm2YHWjH7NDQ7Ph///d/WimlJ0yY
EN+3c+dO3aVLF923b9+089u+fbsuLS3VQ4YMie+rqqrSxcXF+oILLjDSfvPNN1oppW+44QZj/8qV
K7XWWv/www9aKaXvu+++pGVt2rQp7vt+/etfa8/z4ufWNfTbDQfasebQhtmBdswODc2ONfHb3377
rS4uLtZjxoxJWc7atWt1VVWV1lrrM888Ux944IFJ073yyiva8zz9pz/9ydh/7733as/z9JIlS7TW
Wu/evVu3atVKDxw40Ej3xz/+USul9OTJk1PWKZvQbzccaMeaQxtmB9oxOzQ0O9bF+7bW4f12LBbT
3bt31yeccILetWtXYFmLFi3Snufpxx57LO16JiPrGubl5eWIxWJJj23btg2zZ8/GJZdcgpKSkvj+
Sy+9FCUlJXjttdeyXR1CCCENiDfeeAN5eXm44oor4vsKCwsxevRoLFq0KO1fjouKitC2bVts3rw5
vq+yshI7duxAu3btjLRt27aF53koLi429nfs2DFUWS1btjR8394C/TYhhJDaoiZ++ze/+Q1isRju
u+8+AAiUFCktLUUkEklZn61btwKAz8eXlpYC2PNcAABffvklNm/e7Psqe+jQoWjatClmzJiRsqza
gn6bEEJIbVEX79tAeL/93nvv4auvvsK9996LgoIC7Nixw+kDJ02ahLKyMlx33XUAgp8bwpC1CXOt
NQYMGIDmzZujuLgYw4YNw/Lly400X3zxBaqqqtC7d29jf35+Pnr06IHPPvssW9UhhBDSAFmyZAm6
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
CSFknDCJ4vbq1avlrLPOkr333ls23HBDieNY7r///ty0H/zgB3Nj7P7775973mOPPVbmzJkjU6ZM
kblz58rpp58ur7zyikp3xx13yEc+8hGZOXOm9Pb2yqxZs+TQQw+VVatWFWqHMX/D/Le//a3cfPPN
8i//8i9y2mmniYjI0UcfLe9973vljDPOkF//+tdjXSRCCJm0RHHcRk+1Yvl+5jOfkdtuu01OO+00
mTt3rixdulT2339/ue+++2ThwoXmcWeeeaa8+uqrcuihh8rWW28tTz31lHznO9+RO++8U373u9/J
5ptvLiIiTz31lJx88smyzz77yOmnny4bbrih3H333XLCCSfIgw8+KNdff33jnNddd50sWbJEPvGJ
T8iJJ54or7/+ulx99dWy8847y9133y177713I+3PfvYzOeigg2ThwoXy1a9+VaIokh//+Mfy6U9/
Wl5++WU55ZRTCrXHaMO4TQgh44fJFLeRhx9+WL7//e9LX19f7v5qtSr777+/PPDAA3LMMcfItttu
K6+++qo8+OCD8vrrr8uWW27ZSHvOOefIRRddJMcdd5x84AMfkJ/+9Kdy5JFHShzH8slPflLXOYrk
u9/9rkydOrXxXamk30odbzBuE0LI+GEyxe0nnnhCvvGNb8jWW28t2267raxcudIuWxTJrFmz5Otf
/7pS42G8FhFZs2aN7LzzztLf3y8nnHCCzJo1Sx577DG5/PLL5b777lMvqv33f/+3bLLJJnLqqafK
ZpttJqtXr5YlS5bIjjvuKA888IDMnz+/qXYY8wfmP/nJT6RcLssxxxzT+K6np0cWLVokX/7yl+W5
556TmTNntiQvVHkombcjbUH5D8ppUYLpU7EqWTWqNVpwL1VIpl0AlL5ndAcFiqBksoaUKEr091gE
bHs3e0vi7JNx1ZUcN3/bbWulmDVPrN82ra9Jpd1JDSU+jvwMJD9WHdz6WHJjnwxZy9jzpcIiuu3x
fNgmbnnUPr/ocVjctrel62Gd0WrHTLxABZ1xvA9XZm2hVYl2n0OpN14jS+add46Jzkj+CLz00ktl
t912U9/tu+++sueee8rll18u5513noiIbLHFFvL444/LvHnzGumOOeYYWbRokSxdulTOPfdcmTNn
joiIHHnkkfLVr35VvW322c9+VubNmydf+cpX1APzK664Qrbccku59957pfyWHPTYY4+Vd7/73bJ0
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
4aLvZI7brWDWrFkiIirGXnPNNbLFFls0HpYPceCBB8pXvvIVWbFiReaBObLxxhvL3nvvLcuWLRv/
D8wPOeQQ+eY3vynXXHONfOELXxARkcHBQVm6dKnsvPPOMnPmzLEuEiGEkDbSzC/vRf8IHOKVV16R
D3/4w1KtVuW+++7L/eN6iJ/+9KdyzDHHyCGHHCKXX365mS5JEjn66KPl3nvvlVtuuUV22223TJqX
X35ZqtWq1Gq1zL5KpSL1el1qtdq4fGDOuE0IIQQZi7j97LPPShRFctBBB6nvoyiS5557TubMmSOX
XnqpnHzyyTJ//nzp6uqS5557LnOe559/Xt72trep8nzve9+TP/zhD+oP7ND7CBGRp59+Wrbffvth
07ULxm1CCCHIWP69PRL+9Kc/iYiouP3iiy+af0OLSGaR0Dz6+/vl9ddfb7o8rf2pNoAdd9xRDj30
UDn77LPlzDPPlGuvvVb22msveeaZZ5p+2k8IIWRk1JP1b2C051/z5T3kkEOkWq3KNddc0/gu74/A
1atXyxNPPKGC69q1a2W//faTF154Qe666y6ZM2eOmc/9998vRxxxhHzwgx+UG2+80Vumk046SW65
5Ra56qqr5OMf/3hums0331w23nhjuf3221VQf/PNN+Vf//VfZd68ebleceMBxm1CCBk/TJa4/aEP
fUhuv/12ueOOO9S/zTbbTHbYYQe54447Ggtmb7DBBrL//vvLihUr5Mknn2zk8/vf/15WrFghH/7w
hxvfffzjH5dyuSxXXnmlKud3v/tdmTlzpixcuLDx3V//+tdMfa688kp56aWXZL/99mu+McYIxm1C
CBk/TJa43QxvvPGGDA4OZr4///zzJYoiZYO6zTbbyIsvvij333+/SvvDH/5QoihSb56/9NJLmXM+
/fTT8stf/lJ22GGHpsvZllfZfvCDH8i5554rN954o7z66quy7bbbyp133im77rprO4pDCCGTlnqt
LrVaeyR+UQFpGv4R+OKLL8rcuXNl6dKl8swzz8j111/fSHfWWWfJDTfcIE8//bS84x3vEBGRI488
Uh566CFZtGiRrFq1SlatWtVIv8EGGzQedv/lL3+RAw88UOI4loMPPlh+/OMfqzJsu+22Mn/+fBFZ
/2v9VVddJQsXLpTe3l5ZtmyZSnvwwQdLX1+fxHEsX/ziF+Xcc8+VnXbaST796U9LtVqV733ve/Lc
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
IK0dso+TbUplFijRdok26fZV++q2TYnyzunlr79Jp9u2Pb28XX+YJ8eF9tW0eCAYMR4Oyn7xpDa2
Mr609tK/Pe2ra/mltvGVvEjnyXLlfbrrBkrcV0cK9HvFiBgn1nHaRh/PnriPlGerkl/wG7odEV/x
R0XfJXeIa8RuQ0tCfGHeqmOtPrZ03a7v39thdDtsfbJ9aRzEXn1gvnr1ahQVFaF169Zo3bo1OnXq
hDfeeMOX7rXXXkP//v0zLuesEX6PHEIIIXVz368aNqTYpKamBhdddBE2bdqkrbf90VZeXh4YBrbn
j0P5gDsor+2PSJl3z/9BoV+dO3dO+bZ98803mDp1Ki6++GJs3boVW7duhVIK27dvh1IKa9asQUlJ
CTp16mStE1D7x+7mzZudaRoK6jYhhDRtWpJuB9GqVSuMGjUK06ZNQ1VVFQoLC1Nh4jaNDyojHo/j
Bz/4Ad577z3885//xMEHH2wt8+2338bo0aPRr18/zJs3D5FGtuaQNJRud/nR6dlUkxBCWiwtSbfD
/r1dH90uLy8PnEfM3Gf79u1RWFgYqvyw5ETtzYYHam8snnzySXz3u99NrTvjjDPw97//XZtV9V//
+hdWrlyJysrKrOpw2WWXZZWf1MJ2zB62YW5gO+aGpt6OsVgMf/nLX/DEE09o/2xfOPXv3x8rV65M
2abs4ZVXXoHnec4/Bvv3749ly5b51r/yyisoKSlB7969AQB9+/ZFq1atAmcAX7duXeoB+JYtW7B9
+3b87ne/w/7774/9998fPXv2xPz587Fjxw7sv//+mDhxYp1t8Omnn9b5UD3XULebD2zH7GEb5ga2
Y25o6u3YkLptY+fOnVBKYdu2bQCAPn36IBaL+R4Ux+NxLF++3FeGUgpjx47F888/j7lz52LQoEHW
slavXo1hw4ahS5cuePrpp51foe9NqNvNB7Zj9rANcwPbMTc09XZsin9v10e3+/fvj507d2LFihXO
+nieh759+wa+NH711VfRs2dPlJaW+rY5UTlgyJAh6rTTTlNTp05V999/v7rssstUaWmpat++vVqx
YkUq3WeffaY6deqkKioq1N13361uvvlm1b59e9W/f39VXV2dVR2+973vZXsYRLEdcwHbMDewHXND
c2vHV199VXmep2677bbUuqqqKnXAAQeo4447LrVu/fr1asWKFaqmpia17uGHH1aRSETNnz8/te7L
L79U7dq1U+ecc45Wzve//33VqlUr9dFHH6XWffDBByoWi6mf/vSnSimldu7cqR5//HHfvyFDhqiS
khL1xBNPqNdee00ry+SPf/yj8jxP3XXXXVm0Sv2hbjcf2I7ZwzbMDWzH3NDc2jEb3f7iiy98+9uy
ZYvq3r27+va3v62tHz58uOrWrZvavn17at2MGTNUJBJR//znP7W0P/nJT1QkElEzZsxw1n3Dhg2q
Z8+e6lvf+pZas2ZNuAPeS1C3mw9sx+xhG+YGtmNuaG7t2FB/b4fV7c8//1wVFBSk/gbfwwknnKC6
d++ukslkat20adNUJBJRb775ZmrdihUrVCwWU9dee2292yInD8zvvvtuNXDgQNWxY0dVUFCgunXr
ps477zy1evVqX9oPPvhADRs2TLVu3Vq1b99ejRs3LvBmqL40t0HaWLAds4dtmBvYjrmhObZjZWWl
KigoUJMnT1b33XefOu6441RBQYFavHhxKs15552nPM/T/sBNJBLq2GOPVWVlZerXv/61mj59uurT
p49q27atWrlypVbGBx98oNq0aaO6du2qbrnlFvXb3/5Wde3aVXXp0kWtW7fOWb/zzz9ftWnTxre+
pKREjR8/Xt1+++1q+vTp6uyzz1aRSEQdccQRateuXVm2Sv2gbjcf2I7ZwzbMDWzH3NAc2zFT3T7i
iCPU6NGj1c0336xmzJihpkyZorp3765isZhasGCBVsayZctUcXGxGjBggLr33nvVddddp4qLi9Xw
4cO1dHfccYfyPE8df/zxavbs2b5/O3fuTKU97LDDVCQSUddcc40v3XPPPbeXWisY6nbzge2YPWzD
3MB2zA3NsR0b4u/tsLqtlFKTJ09WkUhETZw4Uc2YMUOddtppKhKJqIceekhLt23bNlVRUaH23Xdf
deutt6o77rhD9ejRQ3Xv3l1t2rSp3u2QkwfmTYHmOEgbA7Zj9rANcwPbMTc0x3asqqpSkydPVl27
dlXFxcXqmGOO8f3hev7556toNOr7Iuzrr79WF154oerUqZNq3bq1GjJkiFq2bFlgOW+99ZYaOnSo
atOmjWrbtq06/fTT1apVq+qs3/nnn6/Kysp86y+66KLUDUNhYaHq3bu3uvbaa7W36i2J5jg2GwO2
Y/awDXMD2zE3NMd2zFS3p0+frgYPHqw6d+6sCgoK1L777qu+//3vq5dffjmwnJdfflkNGjRIlZSU
qH333Vf97Gc/82ns+eefryKRiPWfLN+V7uSTT85hC+UHzXFsNgZsx+xhG+YGtmNuaI7t2FB/b4fR
7T3ccsstav/991dFRUWqb9++au7cuYHp1q5dqyorK9U+++yjysrK1OjRowNfLofBU0o1znStOWbU
qFF44oknGrsaeQ/bMXvYhrmB7Zgb2I6kqcKxmRvYjtnDNswNbMfcwHYkTRWOzdzAdswetmFuYDvm
BrZj8yV644033tjYlcgVffv2bewqNAvYjtnDNswNbMfcwHYkTRWOzdzAdswetmFuYDvmBrYjaapw
bOYGtmP2sA1zA9sxN7AdmyfN5gtzQgghhBBCCCGEEEIIISQbIo1dAUIIIYQQQgghhBBCCCGkKcAH
5oQQQgghhBBCCCGEEEII+MCcEEIIIYQQQgghhBBCCAHAB+aEEEIIIYQQQgghhBBCCIA8e2A+a9Ys
RCIR379oNIovvvjCl37JkiUYNGgQSktLUV5ejksvvRQ7duxohJo3Lf79739jwoQJOPDAA1FaWope
vXrhwgsvxIYNG3xpTzrppMA2HzFiRCPUvOlSXV2Nq6++Gt26dUNJSQkGDhyIhQsXNna1mixvvPEG
LrnkEvTp0wetW7fGfvvth7POOgsff/yxlm78+PGB4++QQw5ppJo3LV544QXrNfG1117T0q5YsQLD
hg1DmzZt0KFDB4wbNw6bNm1qpJqTlgJ1OzdQt3MPdbt+ULdzA3WbNHWo27mBup17qNv1g7qdG6jb
LZtYY1egvnieh9/85jf49re/ra3fZ599tN/Lly/HqaeeikMOOQR33HEHPv/8c9x6661YtWoVnnrq
qQascdPj6quvxpYtW3DmmWfigAMOwCeffIK7774bTz31FJYvX47OnTun0nqeh+7du+OWW26BUiq1
vmvXro1R9SbLeeedhwULFuDyyy9HRUUFZs6ciREjRmDRokU47rjjGrt6TY5p06ZhyZIlOPPMM9Gv
Xz9s2LABd999NwYMGIBXX31VE+iioiL8+c9/1sZf27ZtG6PaTZbLLrsMRx55pLauoqIitbx27Vqc
cMIJaNeuHW655RZs27YNt956K9577z289tpriMXyTgpIHkHdzh7qdu6hbtcP6nZuoW6Tpgx1O3uo
27mHul0/qNu5hbrdQlF5xMyZM1UkElFvvvlmnWmHDx+uunXrprZv355aN2PGDBWJRNRzzz23N6vZ
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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>2-Point statistics provide an object way to compare microstructures, and have been shown as an effective input to machine learning methods.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="Predict-Homogenized-Properties">Predict Homogenized Properties<a class="anchor-link" href="#Predict-Homogenized-Properties">&#182;</a></h3>
</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>In this section of the intro, we are going to predict the effective stiffness for two-phase microstructures using the <code>MKSHomogenizationModel</code>, but we could have chosen any other effective material property.</p>
<p>First we need to make some microstructures and their effective stress values to fit our model. Let's create 200 random instances 3 different types of microstructures, totaling to 600 microstructures.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[7]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks.datasets</span> <span class="kn">import</span> <span class="n">make_elastic_stress_random</span>


<span class="n">grain_size</span> <span class="o">=</span> <span class="p">[(</span><span class="mi">47</span><span class="p">,</span> <span class="mi">6</span><span class="p">),</span> <span class="p">(</span><span class="mi">4</span><span class="p">,</span> <span class="mi">49</span><span class="p">),</span> <span class="p">(</span><span class="mi">14</span><span class="p">,</span> <span class="mi">14</span><span class="p">)]</span>
<span class="n">n_samples</span> <span class="o">=</span> <span class="p">[</span><span class="mi">200</span><span class="p">,</span> <span class="mi">200</span><span class="p">,</span> <span class="mi">200</span><span class="p">]</span>

<span class="n">X_train</span><span class="p">,</span> <span class="n">y_train</span> <span class="o">=</span> <span class="n">make_elastic_stress_random</span><span class="p">(</span><span class="n">n_samples</span><span class="o">=</span><span class="n">n_samples</span><span class="p">,</span> <span class="n">size</span><span class="o">=</span><span class="p">(</span><span class="mi">51</span><span class="p">,</span> <span class="mi">51</span><span class="p">),</span>
                                              <span class="n">grain_size</span><span class="o">=</span><span class="n">grain_size</span><span class="p">,</span> <span class="n">seed</span><span class="o">=</span><span class="mi">0</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Once again, <code>X_train</code> is our microstructures. Throughout PyMKS <code>y</code> is used as either the property, or the field we would like to predict. In this case <code>y_train</code> is the effective stress values for <code>X_train</code>. Let's look at one of each of the three different types of microstructures.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[8]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">draw_microstructures</span><span class="p">(</span><span class="n">X_train</span><span class="p">[::</span><span class="mi">200</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
BAAAAAAK/gIOT9aDslPi+gAAAABJRU5ErkJggg==
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>The <code>MKSHomogenizationModel</code> uses 2-point statistics, so we need to provide a discretization method for the microstructures by providing a basis function. We will also specify which correlations we want.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[9]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks</span> <span class="kn">import</span> <span class="n">MKSHomogenizationModel</span>


<span class="n">p_basis</span> <span class="o">=</span> <span class="n">PrimitiveBasis</span><span class="p">(</span><span class="n">n_states</span><span class="o">=</span><span class="mi">2</span><span class="p">,</span> <span class="n">domain</span><span class="o">=</span><span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">1</span><span class="p">])</span>
<span class="n">homogenize_model</span> <span class="o">=</span> <span class="n">MKSHomogenizationModel</span><span class="p">(</span><span class="n">basis</span><span class="o">=</span><span class="n">p_basis</span><span class="p">,</span> <span class="n">periodic_axes</span><span class="o">=</span><span class="p">[</span><span class="mi">0</span><span class="p">,</span> <span class="mi">1</span><span class="p">],</span>
                                          <span class="n">correlations</span><span class="o">=</span><span class="p">[(</span><span class="mi">0</span><span class="p">,</span> <span class="mi">0</span><span class="p">),</span> <span class="p">(</span><span class="mi">1</span><span class="p">,</span> <span class="mi">1</span><span class="p">),</span> <span class="p">(</span><span class="mi">0</span><span class="p">,</span> <span class="mi">1</span><span class="p">)])</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Let's fit our model with the data we created.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[10]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">homogenize_model</span><span class="o">.</span><span class="n">fit</span><span class="p">(</span><span class="n">X_train</span><span class="p">,</span> <span class="n">y_train</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Now let's make some new data to see how good our model is.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[11]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">n_samples</span> <span class="o">=</span> <span class="p">[</span><span class="mi">10</span><span class="p">,</span> <span class="mi">10</span><span class="p">,</span> <span class="mi">10</span><span class="p">]</span>
<span class="n">X_test</span><span class="p">,</span> <span class="n">y_test</span> <span class="o">=</span> <span class="n">make_elastic_stress_random</span><span class="p">(</span><span class="n">n_samples</span><span class="o">=</span><span class="n">n_samples</span><span class="p">,</span> <span class="n">size</span><span class="o">=</span><span class="p">(</span><span class="mi">51</span><span class="p">,</span> <span class="mi">51</span><span class="p">),</span>
                                            <span class="n">grain_size</span><span class="o">=</span><span class="n">grain_size</span><span class="p">,</span> <span class="n">seed</span><span class="o">=</span><span class="mi">100</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>We will try and predict the effective stress of our <code>X_test</code> microstructures.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[12]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">y_pred</span> <span class="o">=</span> <span class="n">homogenize_model</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">X_test</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>The <code>MKSHomogenizationModel</code> generates low dimensional representations of microstructures and regression methods to predict effective properties. Take a look at the low-dimensional representations.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[13]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks.tools</span> <span class="kn">import</span> <span class="n">draw_components_scatter</span>


<span class="n">draw_components_scatter</span><span class="p">([</span><span class="n">homogenize_model</span><span class="o">.</span><span class="n">reduced_fit_data</span><span class="p">[:,:</span><span class="mi">2</span><span class="p">],</span>
                         <span class="n">homogenize_model</span><span class="o">.</span><span class="n">reduced_predict_data</span><span class="p">[:,:</span><span class="mi">2</span><span class="p">]],</span>
                        <span class="p">[</span><span class="s1">&#39;Training Data&#39;</span><span class="p">,</span> <span class="s1">&#39;Test Data&#39;</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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
dtOCAAAAAElFTkSuQmCC
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Now let's look at a goodness of fit plot for our <code>MKSHomogenizationModel</code>.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[14]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks.tools</span> <span class="kn">import</span> <span class="n">draw_goodness_of_fit</span>


<span class="n">fit_data</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">array</span><span class="p">([</span><span class="n">y_train</span><span class="p">,</span> <span class="n">homogenize_model</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">X_train</span><span class="p">)])</span>
<span class="n">pred_data</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">array</span><span class="p">([</span><span class="n">y_test</span><span class="p">,</span> <span class="n">y_pred</span><span class="p">])</span>

<span class="n">draw_goodness_of_fit</span><span class="p">(</span><span class="n">fit_data</span><span class="p">,</span> <span class="n">pred_data</span><span class="p">,</span> <span class="p">[</span><span class="s1">&#39;Training Data&#39;</span><span class="p">,</span> <span class="s1">&#39;Test Data&#39;</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAkYAAAGjCAYAAADJvNrAAAAABHNCSVQICAgIfAhkiAAAAAlwSFlz
AAAPYQAAD2EBqD+naQAAIABJREFUeJzs3XdcU1f/B/DPDSRhKkMQBEERrQyto06cgKto3Vgf6y5Y
a1tnq3XW0boVW2tb7eP+PahVQRxVQYuIWrcVwQUKIoKgzIQRkpzfH8gtkQQZYX/frxevxnvvOffc
k9B8OZNjjDEQQgghhBAIqrsAhBBCCCE1BQVGhBBCCCFvUGBECCGEEPIGBUaEEEIIIW9QYEQIIYQQ
8gYFRoQQQgghb1BgRAghhBDyBgVGhBBCCCFvUGBECCGEEPIGBUaEkEp14cIFCAQCCAQChIWFVXdx
6rXU1FTMmzcPzs7OMDAw4N+XH3/8scrKMHbsWAgEAjg7O1fZPQkpC93qLgAh9YlCocCxY8dw5swZ
XLlyBS9fvkRaWhoMDAxgYWGBNm3aoHv37hg1ahSaNWtW3cXVKo7jqrsI9VpmZia6du2K6Oho/r0o
z3uyfPlyLF++vNTXx8bGws7Orsz3IaS6UGBESBUJCgrCvHnzEB0dDUD1SykrKwtZWVl48uQJAgMD
8c0338DLywtr166lv6yJVmzdupUPiubPn4/BgwfDxMQEAGBtbV3m/EoTVGm6huM4jeesrKyQnJyM
zz77DNu2bStzuQipKAqMCKkCq1atwrJly8AYA8dx6NOnDwYPHoy2bdvC3Nwc2dnZSExMRFhYGE6c
OIHY2FicOnUKTZs2pS8HohXnzp0DAHzwwQf44YcftJLnzp070alTpxKvsbGxUfm3v78//P39NV5f
UtBESFWgwIiQSrZz504sXboUHMfBysoKBw8eRM+ePdVeO3LkSPj5+eHgwYNYuHBhFZeU1GUJCQng
OA6tWrXSWp7NmzenFk1S51BgREglev78Ob744gtwHIcGDRrg0qVLaN68eYlpOI7Dxx9/DC8vLxqs
TLQmLy8PACAUCqu5JITUbDQrjZBKtHHjRuTm5gIAfvjhh3cGRUUZGxvDy8urxGsuXbqECRMmoHnz
5tDX14epqSk6dOiAJUuW4NWrV6W6z/HjxzF69Gg0bdoUenp6aNSoEbp37461a9dCKpW+M31ubi5+
+OEHtGvXDkZGRmjUqBF69OiB33//HYyxd6bv06cPBAIB3N3dAQAvXrzAnDlz0LJlSxgYGKBRo0YY
OHAgTp8+XarnefnyJRYtWoROnTrB3Nwcenp6sLOzw5gxY/juJE2USiV2796NgQMHwtraGmKxGCYm
JmjVqhU8PT2xevVq3L9/X23ax48f46uvvkKbNm3QoEEDiMVi2NjYoH379pg6dSoOHTqE/Pz8Uj2D
JmV9r4rOCIyLiwNjDLt37+aPFa33qvLxxx+rnZXWtWtXCAQCvHz5Eowx/PrrryrlFAgE+PDDD6u0
rKSeYoSQStOoUSPGcRxr2LAhy87O1lq+SqWSzZgxg3EcxziOYwKBQOWH4zhmYmLCgoODNeaRm5vL
hg8fXmIeNjY27M6dOxrzSEpKYk5OThrTDxw4kJ09e5Y/f+HChWJ59OnThwkEAta3b1926dIl1qhR
I7V5cRzHNm7cWGK97N+/nxkZGWksD8dx7NNPP2UKhaJYWolEwnr27Kk2bdE8Ro8eXSztoUOHmFgs
1pi28HhkZGSJ5dekvO9VaGio2nIU/XF3dy9TWb777rsS3893+fjjjxnHcczJyUnleNeuXUssp0Ag
YB9++GGZ70dIWVFXGiGV5N69e3j9+jU4jkPPnj2hr6+vtbznz5+Pbdu2geM4NG/eHAsWLED79u0h
lUoRFBSErVu3IiMjA0OGDMG1a9fQpk2bYnlMmDABgYGB4DgO7dq1w5w5c+Dk5ITU1FQcOHAAu3fv
xosXL+Dp6Ym7d+8Wm7mkUCjg5eWFBw8egOM4DBgwAJ999hmaNm2KZ8+eYdu2bTh79ixSU1NL9Uwv
XrzAsGHDoKuri7Vr18LNzQ0ikQjh4eFYsWIF0tLS8O2332LQoEFwcnIqlv7QoUOYMGECAMDR0REz
ZsyAs7MzLCwsEBsbi//+9784deoUdu7ciYYNG2LDhg0q6ZctW4bw8HBwHIchQ4bgP//5D+zs7KCn
p4fk5GTcvn0bJ06cKDYwODk5GVOmTEF+fj4aN26ML7/8El26dEGjRo2Qk5OD6OhoXLhwAYGBgaWq
B3XK+1517twZERERAID+/fsjMTERQ4cOxapVq/i8DQ0Ny10ubfL390d2djZ69+6N1NRUeHt7Y8mS
JSrXGBsbV1PpSL1S3ZEZIXXV//3f//F/+S5dulRr+UZERDAdHR0mEAjY+++/zzIyMopdc/r0af6a
rl27Fjt/4sQJvmz9+/dn+fn5xa75/fff+Ws+/vjjYue3bt3Kn58+fbrasn766acqrRyaWowKr2ne
vDlLTEwsdk14eDjfajBr1qxi51+9esVMTEyYQCBgPj4+aluEGGNs0aJFjOM4pquryx49eqRyzs7O
jgkEAjZmzBi1aQulpaWp/Hvnzp3880VFRWlMl5uby3Jzc0vMWx1tvFeMMdasWTMmEAjY5MmTy1yG
ooq2GO3evZvdu3dP449UKi2WXlOLUSErK6sSP1OEVDYKjAipJFu2bOG/QH766SeN1ymVyhK/XORy
ucr1n3/+OZ/v9evXNebr4+PDX3fjxg2Vcx9++CHjOI6JxWKWkJCgMY9+/foxjuOYSCRiSUlJKudc
XFwYx3HM2tqa5eTkqE0vkUiYpaVlqQIjgUDATp48qbEs3bp1YxzHsY4dOxY7t2LFCsZxHLOzs1Mb
OBSSy+XM1taWCQQCtnjxYpVzIpHone+VOj/88APjOI6Zm5uXKV1paeO9YqxyAqPCgFbTj7r3mwIj
UtPR4GtCKklWVhb/uqTuiszMTLRp00btT9u2bZGQkKByfUhICADAxcUFH3zwgcZ8fXx8iqUBCrrA
Lly4AI7j0L9/fzRp0uSdecjlcoSGhvLHk5KSEBUVBY7j4O3tDT09PbXpDQ0N4e3trTH/okxMTEoc
XNuxY0cAwJMnT4qdO378ODiOg5eXF3R1NY8Q0NHRQbdu3cAYw5UrV1TOFXY/HTx4EDk5OaUqc9F0
aWlpCAoKKnW60tDGe1WZCtccUvcjENDXC6md6JNLSCUpOh7iXbO71H2xqCOTyfD48WNwHIcuXbqU
mGf79u35qdn37t3jjz958gTZ2dkA8M48ip4vmkfhuBUA71zgr3PnziWeL9SyZcsSz5uZmQFQDTiB
gplkd+7cAQC1M5ne/jl8+DCAguCuqIkTJ4Ixxi+p8OWXXyIwMPCds/s++ugjmJiYgDGG4cOHw8PD
A35+frh16xaUSmWpnl0TbbxXlSk0NBQKhULtj1wuR69evaqkHIRoEwVGhFQSc3Nz/nVKSorG6xo2
bFjsS6VwEPHb0tLS+NeWlpYl3l9XV5cvQ9EB0EVfvysPKysrtenKkkfjxo1LPF/IwMCgxPOFLRBv
BxupqamQy+UASm7BePvn7VahJUuWYOrUqRAIBEhJScHPP/+MESNGwNLSEm3atMF3332H5OTkYuUy
MzPD8ePHYWtrC6AgWJgzZw4++OADmJmZYeTIkTh58mSp6uBt2nivKhMrxXIMhNQ2NCuNkEry/vvv
869v376t9fy1sW1CTcmjIhQKBf/6008/xcyZM0uVTiQSqfxbV1cXO3bswNy5c+Hv74/z58/jxo0b
kMlkiIqKQmRkJDZt2oT9+/fjo48+Uknr5uaG6OhoHDlyBKdOnUJYWBieP3+OrKwsBAQEICAgAAMG
DEBAQIDGbsd3qe56JqS+oMCIkEri6uoKc3NzvH79GhcvXkRubm65vxQLmZqa8q9fvnxZ4rUKhQKv
X78G8G831Nuv35VH0e6mounKUo53na+oouVijFV4i4rWrVvzO8jLZDKEh4fjf//7H/bu3QuJRIL/
/Oc/iImJKdYSJhKJMHbsWIwdOxYAEBcXh5MnT+Knn37Co0ePcPbsWSxatAgbN24s17OV970ihJQN
daURUok++eQTAAUDrPfs2VPh/EQiEVq2bAnGGK5evVritbdv3+ZXWnZ1deWPOzg48N1W78rj2rVr
/OuieRRdF+n69esl5vGu8xUlFArh4uLCjw/SJpFIBHd3d/z+++9Yt24dACAnJwcnTpx4Z1p7e3t8
/vnnuHbtGmxsbMAYw6FDh8p0f228V7UNtYyR6kaBESGVaM6cOdDT0wNjDN9++y3i4uIqnKenpycA
IDIyEjdu3NB43Y4dO4qlAQpmZvXu3RuMMQQHB+PFixca8/j9998BFHQz9enThz9ubW0NJycnMMbw
xx9/8PtwvS07O7vMwUB5FHZtPXjwAMHBwZVyDw8PD/51abdbAQoG4RcOUC9LOkA771VtU9iqqukz
RUhlo8CIkErUtGlT/PjjjwCA9PR0uLm5lapVIz09XeO56dOn8wORfX19i83SAoCzZ89i586dAApm
KxVOdS80Y8YMAAWz3KZOncoPXi5q586dOHv2LDiOw8iRI4t1HU2fPh1AQRfO3Llz1ZZ11qxZagcs
a9vMmTNhZGQExhgmT56MqKioEq8/deqUysyttLS0d7YCnTlzhn9ddM+7s2fPFpvhVlRGRgbfmlOW
vfIKaeO9qk2sra3BGENMTEx1F4XUV9WxeBIh9c3y5ctV9oHy8PBgfn5+7Ny5c+z27dvsxo0b7MSJ
E2zFihXM1dWVXyBPJBKpXQn6m2++4a9xdHRkO3bsYDdu3GAXLlxgc+fOZSKRiHEcx/T09Njdu3fV
lsnb25vPo2PHjuz//u//2M2bN1lISAibOnUqX1YLCwv24sWLYunlcjnr0KEDn8egQYPYsWPH2K1b
t9ixY8dY//79GcdxrHPnzqXeK60kRRcWVOfo0aNMR0eHcRzH9PX12fTp01lQUBC7desWu3r1Kjty
5AibP38+c3BwYBzHqSwmGRsby6+8PXfuXHbo0CF29epVdvPmTXbixAnm6+vL521nZ6eyovOkSZOY
SCRiXl5ebMuWLfx7GhYWxrZt28acnZ35cv/4448lPqMmFX2vGKucBR61uVdaoXnz5jGO45iOjg7b
uHEju3v3LouOjmbR0dFqfxcI0TYKjAipIoGBgczR0bHYpqZv/wgEAqajo8O8vLw0bjGhVCrZF198
oTEvgUDATE1NWUhIiMby5ObmspEjR5aYR9OmTTUGVowx9uLFC+bk5KQx/aBBg1hwcHCpVr6uaGDE
WMH2GYWb0JZUv0KhkIWGhvLpYmNjS/W+2Nrastu3b6vcc9KkSSWmLTw3Y8aMEp+vJNp4r5o1a8Y4
jqvxgVFsbCxr2LCh2uccNGhQhcpOSGnUqq40qVSKZcuWYdCgQTA3N4dAIMDevXvLlZePjw8EAkGx
abeFLl++jB49esDQ0BDW1taYOXPmOxfpI6QkQ4cOxcOHD3Ho0CFMnToVLi4usLCwgFAoRMOGDeHg
4IChQ4di9erViImJwYkTJ9RulgoUDFD96aefEBYWhnHjxsHe3h56enpo2LAh2rdvj0WLFuHx48cq
42LeJhaLcfjwYQQFBWHEiBGwsbGBWCyGmZkZunbtijVr1uDBgwdqN6AtZG1tjdu3b2PVqlVo06YN
DAwMYGpqim7duuGXX37BqVOnIBQKS1y0svB5SjPo9l3XeXl54enTp9iwYQM8PDxgZWUFkUgEAwMD
ODg4YMiQIdi0aROePn2K3r178+ns7e1x7do1fPfddxgwYABat24NU1NTCIVCWFhYoHfv3tiwYQPu
37+Pdu3aqdzTz88P+/fvx5QpU9CpUyfY2tpCLBbDwMAA7733HiZOnIiLFy9i69at73w+TbTxXpWm
/kqrovmUlN7e3h7Xr1/H5MmT0aJFC+jr679z4VNCtIljrPas0BUXF4fmzZvD3t4eDg4OCA0Nxa5d
uzQuhqfJjRs30L17dwiFQnh4eBRbxv/OnTvo3r07nJ2d4evri+fPn2P9+vVwd3cv90JthBBCCKn5
alWLUZMmTZCUlISnT59i3bp15V51debMmZg4caLGlWQXLlwIMzMzXLhwAb6+vlixYgW2bt2K06dP
q+w5VVr+/v7lKmd9R/VWdlRn5UP1VnZUZ+VD9VZ2VV1ntSowEgqF71wW/1327t2LyMhIfP/992rP
Z2VlISQkBOPHj1fZ+HPChAkwNDQs19Rj+kUoH6q3sqM6Kx+qt7KjOisfqreyo8CoEkkkEixYsACL
Fi3SGGBFRERALpcXm94sFArRrl27StnagRBCCCE1Q70KjJYvXw4DAwPMmjVL4zWJiYngOA7W1tbF
zllbW5e4wBohhBBCard6s1fao0eP8OOPP+LgwYMQCoUaryvccVssFhc7p6enV2xHbkIIIYTUHfWm
xWjmzJno0aMHhg0bVuJ1+vr6ANQvR5+bm8ufL4tevXqVOQ0p2CeKlA3VWflQvZUd1Vn5UL2VXVV/
h9aLFqPz58/jzJkzCAgI4PeqYoxBLpcjJycHcXFxMDMzg7GxMb8cfWJiYrF8EhMT0aRJE4338ff3
LzZIrFevXpg3b552H6ie8PPzq+4i1DpUZ+VD9VZ2VGflQ/VWdvPmzcOGDRsQFhamcnzs2LEYO3as
1u9XLwKj+Ph4cByH4cOHqxznOA4JCQlwcHDA5s2b8dVXX8HV1RW6urq4ceMGRo0axV+bn5+PO3fu
YMyYMRrvU9KblJaWpnaPI6JZgwYNkJmZWd3FqFWozsqH6q3sqM7Kh+qtbHR1dWFqaop58+ZVWSND
nQyMkpKSkJGRAUdHR+jo6MDDwwMBAQHFrvPx8UGzZs2wePFiuLq6Aij40Hp6emL//v1YsmQJP2V/
7969kEql8Pb2LleZ5HI58vPzy/9Q9RBjjOqsjKjOyofqreyozsqH6q3mq3WB0c8//4z09HQkJCQA
AIKCghAfHw8A+Oqrr2BsbIwFCxZg7969iI2NhZ2dHWxtbWFra1ssr5kzZ6Jx48YYMmSIyvHvv/8e
bm5u6NWrF3x9fREfH49NmzZhwIAB6NevX+U/JCGEEEKqRa0LjDZs2IBnz54BKOgKCwgI4FuDxo8f
D2NjY3AcB4Hg3ePKNe290759e4SEhGD+/PmYM2cOjI2N4ePjgx9++EG7D0MIIYSQGqVW7ZVWm6Wk
pFDzaRmZmZkhNTW1uotRq1CdlQ/VW9lRnZUP1VvZFG7kXJXqzXR9QgghhJB3ocCIEEIIIeQNCowI
IYQQQt6gwIgQQggh5I1aNyutrjMxMSnVjLr6QCAQwMzMrLqLUatQnZVMqVQiPT29uotBCKnBKDCq
YQQCAc1YIKSSUNBICHkXapoghBBCCHmDAiNCCCGEkDcoMCKEEEIIeYMCI0IIIYSQNygwIoQQQgh5
gwIjQgghhJA3KDAihBBCCHmD1jEiNZKtrW2Zrm/atCmuXLlSSaUBBg0ahIiICERERMDU1LTG5KVt
rq6uKgsg6ujowNjYGBYWFnB1dYWHhwe8vLwgFAqrsZSEEFJ5KDAiNZK3t3exY9euXUNcXBycnZ3h
4uKics7c3LxSy8NxnNZWJNdmXtrGcRw4jsPQoUMhEonAGENWVhbi4uIQFBSEgIAArFq1Clu2bIGb
m1uF7xcSEoJJkyZh8uTJWLlypRaegBBCKoYCI1Ijbdq0qdix2bNnIy4uDgMHDsTs2bOrtDw7duxA
bm4uTExMalRelWXlypXFWrOSkpKwadMm/O9//8P48ePh7++PLl26VFMJCSGkctTMP1tJmTHG6sU9
q4uNjQ1atGgBjuNqVF5VycrKCuvWrcOMGTMgk8kwZ86cCn8G6tNniBBSO1BgVItJJBIsW70CboPd
0W2EJ9wGu2PZ6hWQSCR16p5lERISAltbWyxZsgQvXrzAzJkz0bFjR9jZ2eHAgQMAgBcvXuDHH3/E
iBEj0LFjRzRv3hwdOnTAZ599hqioKLX5Dho0CLa2tkhLS+OPZWdnw9bWFp6enpDL5di8eTPc3Nzg
4OCArl27Yv369VAoFJWaFwD8888/+OSTT+Dk5AQnJyd4e3vj6tWrKnWhTfPmzYOFhQWePXuG4OBg
lXOXLl3C/Pnz4eHhAWdnZzg6OsLd3R3r169Hdna2yrW+vr6YPHkyOI7Drl27YGtry//89ttv/HV/
/vknZs6cid69e+O9995Dq1atMHDgQPz666+Qy+VafTZCCKGutFpKIpFg2HhvpHQxhNC3NTiOg5wx
BEZF4NJ4bwTuOwQjI6Naf8/ySkxMxIcffgihUIguXbpAKpVCLBYDAIKCgrB+/Xq0atUKrq6uMDAw
QExMDE6ePIng4GAcOHAAnTp1UsmvcOyNOkqlEp9++imuXbuGbt26oWXLlvj777+xZcsWpKamYvXq
1ZWWV3h4OCZOnAiZTAZXV1e0aNECMTExGDNmDD755JPyVl+JhEIhBg4ciP379+PSpUvo378/f27p
0qWIj49H69at0bt3b2RnZ+Pu3bvYsmULQkNDERAQAJFIBABwc3NDVlYWLl68iJYtW6J9+/Z8Pq1b
t+Zfz5w5E0KhEO+99x5cXFyQmZmJ27dvY9WqVbh69Sp27dpVKc9JCKmfKDCqpdb/tAkpXQwhcrHk
j3EcB5GLJVKQjPVbN2P5Au22FFTHPcvrzJkzGDFiBDZu3AhdXdWPec+ePXHhwgU4ODioHD979ix8
fHywaNEinD17ttT3evz4McRiMS5fvsyPG3ry5AkGDBgAf39/zJkzBxYWFlrPKz8/H7Nnz4ZMJsPK
lSsxadIkPp+dO3di6dKlldZd5+LiAsYYoqOjVY4vXLgQ3bp1g4GBAX8sLy8P33zzDY4ePYo9e/bA
x8cHADBx4kTY2Njg4sWL6NGjh8bB1z/99BPc3d1VZsJlZWXBx8cHISEhOH36NAYOHFgJT0kIqY+o
K62WCrkUCqGz+i9bobMFzl0KrRP3LC8DAwMsX768WFAEFHypvx0UAUD//v3h6emJ+/fv4/nz52W6
3+rVq1UGUzs4OGDIkCFQKBS4fv16peR1/vx5JCYmwsXFRSUoAoApU6YUm7mnTWZmZgCAjIwMleMe
Hh4qQREAiMVirFixAowxnDlzpsz3GjBgQLHlAYyNjbFkyZJy50kIIZpQi1EtxBiDQqi5O4bjOMiF
Bddpq8WgOu5ZER988EGJs75yc3Nx/vx5/PPPP0hLS0N+fj4A4OnTpwAKWmlKu5aSsbEx2rVrV+x4
YfCVnJxc6nKXJa/r16+D4zh4eXmpzWvIkCGIjIws9b3LoqRB0wkJCQgODsaTJ08glUqhVCrBGINI
JOLrt6yio6Nx/vx5PHv2DNnZ2WCM8eOLypsnIYSoQ4FRLcRxHHTyGeQaghDGGHRk2g1QquOeFWFj
Y6Px3D///IOpU6ciKSlJY3mlUmmp72VlZaX2uJGRERhjyMvLq5S8Xr58CQBo0qSJ2jQl1UFFpaam
AkCxKf1+fn7w8/NTO1CcMVamei1Ms3DhQuzbt0/je1VTBv4TQuoG6kqrpTzd+iA/KkXtufyoFHj2
6Fsn7llehQOt36ZUKuHr64uXL19i2rRpCAkJwaNHjxAfH4/4+HhMnjwZQNmmkWtzscaauvDj2+7d
uweO49CyZUv+2MWLF7FhwwY0bNgQW7duxbVr1/D06VO+bguDu7Lw9/fHvn370KxZM+zcuRO3b99G
bGws4uPjERERoe3HIoQQCoxqq6+/nAOLq1LIIpP5LxvGGGSRybC4KsXXX2h/AcTquKe2RUREICEh
Ad27d8eSJUvw3nvvQV9fnz8fFxdXjaUrm8aNGwMoWH5AHU3HKyo/P58f19O9e3f++OnTp8FxHJYu
XYqhQ4fC2tqaH+OVmpparpadwjw3bdqEfv36oVGjRtDR0QEAPHv2TAtPQwghqigwqqWMjIwQuO8Q
hqEt9HY8hM6uB9Db8RDD0LbSps1Xxz21rXCwsLouq1evXuHvv/+u6iKVW6dOncAYw6lTp9SeP378
eKV0ba5btw6vXr1C8+bN4eHhwR8vqW6DgoLU5lU4dV/TekTlyZMQQiqCxhjVYkZGRli+YAmWY0mV
DXqujntqU+Eg5tDQUCQkJPDjcLKzszFv3rxiixBWlLbHeRXl7u6OJk2a4N69e9i9e7fKzLRdu3bx
3V3akpSUhI0bN8Lf3x9isRibN29Wyd/BwQGMMfj7+6Nbt258t+C9e/ewceNGtXkWtnrFxMSoPe/g
4ICbN29i//79WLhwIX88LCwMu3btqnWfP0JIzUeBUR1RHV8Q1XHPim4hYWtri2HDhuHYsWPo27cv
3NzcIBQKcfXqVejq6mLYsGEICAjQUmm1u+XF23kJhUJs3rwZEyZMwOLFi3Ho0CE4ODggJiYGUVFR
mDhxIvbs2VNsqntpLF68mN9EViqVIjY2Fg8fPgRjDLa2ttiyZQs6duyokmbcuHHYtWsXjh07hjt3
7qBt27Z49eoVrl69ilGjRuHs2bOQyWQqaVq1agV7e3tcuXIFQ4cORYsWLaCjo4MhQ4agV69e8PHx
QVBQELZt24bz58/jvffeQ0JCAm7evInPPvsMv/zyS9krkhBCSkBdaaRWKU0wVtLK0gCwZcsWLFiw
gF9c8ObNm+jXrx/+/PNPWFpalrgkQVnLU9l5ubm5ISAgAH379sXTp09x7tw5GBsb4+DBg3BycgJQ
fOZYaQQFBeHw4cMIDAzElStXoFAoMGzYMGzduhXh4eFqN49t3LgxTp8+jcGDByMnJwfBwcFITU3F
0qVL+Rajt5+B4zjs2bMHHh4eiImJweHDh3HgwAHcv38fAODs7IyTJ0/C3d0dKSkpCAkJgVwux5Yt
W6p8I2FCSP3AMdrFsUqkpKTwa+WUxMzMjJ8KTUhFfPnllwgMDMSePXvg7u5e3cWpETT9ftHvXdlR
nZUP1VvZCIXCUu8coC3UYkRILfb69Wu1s88OHjyIwMBAWFpaolevXtVQMkIIqZ1ojBEhtVhUVBT+
85//wNnZGXZ2dlAqlXj48CFiY2MhEomwbt06tduiEEIIUY9ajAipxRwdHfHJJ58gLy8Ply9fxl9/
/YXc3FyToozqAAAgAElEQVQMHToUQUFBKtPpCSGEvBv9KUlILWZtbY3Vq1dXdzEIIaTOoBYjQggh
hJA3KDAihBBCCHmDAiNCCCGEkDcoMCKEEEKqAC0bWDvUqsBIKpVi2bJlGDRoEMzNzSEQCLB3795S
pb148SKGDh0KOzs76Ovrw9raGoMGDcLly5eLXdunTx8IBIJiPx9++KG2H4kQQkgdJpFIsGz1CrgN
dke3EZ5w6dkRy1avgEQiqe6iEQ1q1ay0V69eYeXKlbC3t0e7du0QGhpa6rSPHj2Cjo4Opk+fDisr
K6SlpWH//v3o1asXTp06hf79+/PXchyHpk2bYs2aNSoRfpMmTbT5OIQQQuowiUSCYeO9kdLFEELf
1uA4DnLGEBgVgUvjvRG47xCMjIyqu5jkLbVqS5D8/HykpaXB0tISN2/eRKdOnbB7925MmDChXPnl
5OTAwcEB7du3x6lTp/jjffv2xevXr3H37l1tFZ22BCGkBqAtQbSH6uzdlq1egUAuAiIXy2LnZJHJ
cHogxq5fdkBfX78aSlc70JYg7yAUCmFpWfwDVl76+vqwsLBAenq62vMKhQJSqVRr9yOEEFJ/hFwK
hdBZ/Ze60NkCl+9cw6ZNm6q4VORdalVgpA1ZWVl4/fo1Hj58iIULFyIyMhKenp7Frnv06BEMDQ1h
bGwMa2trLF26FHK5vBpKTAghpLZhjEEh5MBxnNrzHMeB09fFL7/8glu3blVx6UhJatUYI23w9vbG
mTNnAAAikQjTpk3D4sWLVa5xdHSEu7s72rRpA6lUisOHD2PVqlV4/Pgx/P39q6PY9Y6trW2Zrm/a
tCmuXLlSSaXRDh8fH/z555/8vzmOg5GREUxMTODk5ISuXbti1KhRMDMzq8ZSEkK0geM46OQzyBlT
GxwxxsCy88EYw9y5cxESEgIdHZ1qKCl5W70LjNauXYt58+YhPj4ee/bsgUwmQ35+PkQiEX/Njh07
VNKMGzcO06ZNw++//47Zs2ejc+fOVV3sesfb27vYsWvXriEuLg7Ozs5wcXFROWdubl4l5VqxYgW2
b9+O7du3l3mWIscV/PXYrVs3PvDLzs5GUlISwsLCcPbsWaxduxaLFi3ClClTKlzW7OxstGrVCq1b
t0ZISEiF8yOElI2nWx8ERqkfY5QbkQSlVAZ7e3usXr2agqIapN4FRm3btuVfjxs3Dh06dMDkyZNx
6NChEtPNnTsXO3bsQEhICAVGVUBdv/vs2bMRFxeHgQMHYvbs2dVQqn+Dm4qYNGlSsaAqJycHe/fu
xbp167B06VJkZ2fjiy++qNB9CCHVa9Tg4fCfdAgKhQJ6bazAcRwYY8iNSELG/jv4ZNRYLF26FAYG
BtVdVFJEvQuMihIKhfjoo4+wdu1a5OXlQSwWa7y2adOmAFDiLAx/f/9iXW0ODg7w8/NDgwYNSrW4
l0BQ74Z91SqVNYlTX18f06ZNQ8uWLTFx4kSsX78egwcPRrNmzcqdZy2acFplBAKB2q5KoVBIXZhl
RHWmmUKhwM8//4xly5YhNzcX2btuQmAkBqevC5Yjh5FADwH7DqksE0PUK/xDdNasWXjy5InKubFj
x2Ls2LFav2e9DoyAgu4GxhiysrJKDIxiYmIAoMRpgyW9SZmZmaWerl8eTEM/dmWqjnuW1v3797Ft
2zZcuXIFr1+/hqmpKdzc3DB79mw4ODgUu/706dP473//i5iYGGRkZMDU1BTNmjWDu7s7Pv/8cwCA
q6sr0tPTwXEcfH19VdL/+eefaNOmTYXL7e7ujgEDBuDMmTPYvXs3vvvuO/5cdHQ0jhw5gosXL+L5
8+fIzMxEo0aN0LNnT8yaNYsP3gFg9+7dWLx4MTiOw4MHD1TGbHl6emL37t0AgH/++QcBAQG4cuUK
EhISkJOTAysrK3h4eGDmzJlV1kVZVZRKJU3X1xKqM/ViYmIwd+5cXL9+nT/GcuRQ5BRM3pk+fTrm
zJkDAwMDqr9SKJyu7+fnV2X3rJOBUVJSEjIyMuDo6Mj326akpBQLatLT03HkyBHY2dmhUaNGAMAH
SEXHHAHAqlWrwHEcBgwYUDUPUQoSiQS/+m3EzbBQGOowSBUcOvbqg89mza20RcOq455lFRgYiNmz
Z0Mul6Nt27bo1KkT4uPjERgYiJCQEBw4cADvv/8+f/3PP/+M1atXQyQSoVOnTrC0tMSrV6/w6NEj
bNmyhQ+MRowYgcuXL+Phw4fo3r07H2xwHKfVv5w/+ugjnD59utiq7Lt378a+ffvQunVrdOjQAbq6
unj48CEOHjyI06dP48SJE2jevDmAggkEI0aMwNGjR9GwYUOVz23R8VmbNm3CxYsX4ezsjG7dukGp
VCIyMhI7d+5EcHAwTp06BVNTU609GyF1lUKhwH//+1+sXbsWubm5xc7b29tj48aN8PLyooCohqt1
gdHPP/+M9PR0JCQkAACCgoIQHx8PAPjqq69gbGyMBQsWYO/evYiNjYWdnR0AYNCgQbC1tUWXLl1g
aWmJuLg47N69G4mJiSrji27dusW3/Dg6OiInJwdHjx7FlStXMG3aNLRr167qH1oNiUQC37GjMNNW
Fyv62vJ918HxN+A7dhS2+x/WeqBSHfcsq+joaMydOxeGhobYtWsXOnXqxJ87c+YMfHx88NVXX+HC
hQv88V9++QVCoRBnzpxBy5YtVfK7evUq/3rFihVYuXIlHj58qHackLYUBi7R0dEqx4cOHYoZM2bA
2tpa5Xhh69DKlSuxc+dOAECPHj3QoUMHHD16FNbW1hrXSvHx8YGfn59K8KNUKrF27Vps27YNmzdv
xooVK7T5eITUOepaiYqaMmUKvv32WxpLVEvUusBow4YNePbsGYCCv9QDAgIQEBAAABg/fjyMjY3B
cVyxsTpTp07FgQMH4Ofnh/T0dJiamqJbt274+uuv0b17d/46e3t79OrVC4GBgUhKSoJAIICTkxN+
++03fPrpp1X3oO/wq99GzLTVRX/7f1sqOI5DfztTMKTity2bMHfR0lp/z7L69ddfIZPJsHbtWpWg
CAAGDBgAb29vHDx4EBcvXkTPnj2hUCiQmZkJKyurYkERAHTp0qWqis4rbH3Kz89HTk4Ovyru289T
aNKkSfjf//6H0NBQ5OfnQygUlvpePXr0KHZMIBDg22+/xf79+3H27FkKjAjRoLStRN26dauG0pHy
qnWB0dOnT995za5du7Br1y6VY9OnT8f06dPfmbZZs2Y4cOBAuctXVW6GhWJFX/Vr/fRvaoofQ/8C
tBykVMc9yyosLAwCgUBjl2enTp1w4MAB3LlzBz179oSOjg6cnJwQFRWFRYsWYfLkyXB0dKziUqsq
Omj67TFcWVlZCA4ORlRUFDIyMvhFRzMyMpCfn4/nz5/z3Wml9fr1a5w9exYPHz6ERCKBQqHgx48l
JCSUOdgipD6gVqK6q9YFRqTgi9NQR/PAZ47jYCBgWh0cXR33LCulUonExEQAgJOTk8brOI5T6eNf
t24dfHx8sHfvXuzZsweNGzdGt27d4OXlhYEDB1b58xSWTSQSQU9Pjz9+7tw5fPXVV8jIyNBYprJu
YXPgwAEsXrwYeXl5xc4VvpdSqRQmJiZlypeQuopaieo+CoxqIY7jIFVwGoMQxgoGRWvzC7067llW
SqUSjDEIhUIMHz68xGuLrmf1/vvvIywsDOfPn8dff/2Fy5cv49ixYwgMDESPHj3g7+9fpc8VGRkJ
AGjVqhV/LD09HTNmzEBOTg6+/fZbDBo0CE2aNOEDp8mTJyMkJKRMU/Sjo6Mxf/58iEQirFmzBr16
9ULjxo35iQeenp54+PAhTfsn5I13tRJNnToVCxYsoFaiWo4Co1qqY68+CI6/gf52xWcMnY1Pwwe9
+9aJe5aFrq4uLCws8Pr1a6xevbrE5Rfepqenhw8//JAfUB0VFYXp06fj0qVLOHr0KEaOHFlZxS7m
2LFj4DgObm5u/LHw8HBIJBJ8/PHHmDFjRrE0hePuyiIkJARKpRIzZszAuHHjip0vnNRASF1Snlbt
0rQSbdq0CV27dtVWMUk1otUEa6nPZs3Flvh8nHmWyv9FzxjDmWep+DFegWkz59SJe5ZVz549C8r0
Zj+88nJ2dsa4cePAGMPDhw/544VjbSprQ+Fz584hODgYOjo6mDhxIn88IyMDAGBlZVUszf379/H4
8eNix99V1vT0dAAoNsutsBxl7ZYjpKaSSCRYtnoF3Aa7o9sIT7gNdsey1SsgkUg0pin8f1xMTAxG
jhyJ5cuXqw2KpkyZgpCQEAqK6hAKjGopIyMjbPc/jEs2nTE49DlGX3iGwaHPccmmM7b7/1Ep0+ar
455lNWPGDAiFQixevBjnzp0rdj43NxfHjh3jx/Gkp6dj3759xf4HqVAocOHCBXAchyZNmvDHrays
wBjjF/zUlpycHPz666/8wpHffvutyoKNhYtSHj9+nA+SgILxSF9//bXa7i6hUAhTU1O8ePFC7f/Q
HRwcwBjDH3/8oTLG6NmzZ1i6dGmNXbyTkLKQSCQYNt4bgVwE8nxbQzGlNfJ8WyOQi8Cw8d4qv/tv
B1Bt+3SG+4f91Xad2dvb48iRI1i5ciV1ndUxHKMBBFUiJSWl1Ctfl2fxr/qw8vXs2bPxxx9/YO7c
uSXulRYUFITZs2cjLy8PLVq0gKOjI/T09PDixQtEREQgLy8P4eHhsLe3R2JiIjp16gSxWIw2bdrA
1tYWeXl5uHXrFpKTk+Ho6IiTJ0/y/+OLi4tDnz59wBhD7969YWlZsDnkrFmzYGNjU2L5fX19cerU
KZVNZHNycpCUlMSXS19fH4sXL1ZpLSo0bNgw3Lx5EyYmJujatSsUCgWuXLkCGxsbWFtbIzQ0FKdO
nVJZgXvu3Lk4dOgQ7O3t0aFDB4jFYjg7O2Py5MnIycmBp6cnnj17hsaNG6Njx47Izs7G5cuX0blz
Z6SmpiIqKgp3796tM4s8avr9olWcy6621Nmy1SsQyKnfyFUWmYxhaIvlC5a8CaBGI6WLEYTOFkX2
NXuJjP+7DWXGv388VGQsUW2pt5qicOXrqkRjjOqI6vjrvqbe86OPPoKrqyu2b9+O8PBwhIaGQiwW
o3HjxvDy8oKXlxffGmNubo5Vq1YhPDwc9+/fR2RkJMRiMWxtbTF16lRMmDBB5X9+9vb22L59O7Zu
3Yq///4b2dnZAIAJEya8MzAqLP/ff//NvzY0NISpqSn69OmD7t27Y+TIkRpngPn7+2PTpk34888/
cf78eVhaWmLMmDGYN28e5sxR3425fPlyCIVCnDt3DkFBQVAoFPDw8MDkyZOhr6+P48ePY82aNQgL
C0NISAhsbGwwY8YMfPnllxg6dCi1GpFaL+RSKIS+rdWeEzpbIHj7eWA1wx9BR6EzpAX0igRQHMdB
v60VgHZI33UTdpY2NJaoHqAWoypS2S1GhJB3oxYj7akNdcYYQ7cRnlBMUR8YAUDahnAYDGyJrODH
MJ/lpnHWbc66v3H9bHiFu81qQ73VJNXRYkRjjAghhNRJHMdBJ59pXHKCMQa5XIHcJ6/B8pUlrtNm
bGnKr0JP6jYKjAghhNRZnm59kB+VovZczs0XYHIFxC3MwQkFJQZQOrLqW7yWVC0KjAghhNRZE7zH
If1/d5ATkaSyzEhORBIyj0TAeJgz9FwaQ+RojryoZLV55EelwLNH9a7TRqoODb4mhBBSZ33+9UwY
jXRBfmwapOdiIBDpQClTQNTCDDom+tBzaQwAMOrniLTfrgEMELtY8rPS8qNSYHFViq/3aZ4JS+oW
CowIIYTUWY+fP4HZpD7gOhTMGi1cZoQxhvz4f/cdFOgJYTqtMyTB0ZCEREMg0oHiVTYmjhiLr/fN
qRHrtJGqQYERIYSQOkmpVILTF6qMDSp8zXEcmEyhsh6bQE+IBkOc+LSi7Q+w/NulVV9wUq1ojBEh
hJA6iTEGhVSmcVC1yMEMuREv1Z6T33+F/j3dK7N4pIaiwIgQQkidU7jHmVySi9xI9cGPrk0D5B19
AFlkssrAbFlkcsG4oi9oXFF9RIERIYSQOoExBoVCge3bt6Nfv364fv06WJYMGf/3j9pZaXnHH+P0
oSAMQ1vo7XgInV0PoLfjIYahLQL3HaJxRfUUrXxdRWjla0KqH618rT01pc4kEgnW/7QJIZdCkcvJ
kfoiBXJZPjgDEZCbD6VUBpYjB2csgq6RGDqGYrAcOVo2bY49P/8OKysrPq+q2P+xptRbbUF7pRFC
CCGlVLDxqzdSuhhC6NsaAo6DOWPIjXyJ7HMxMJnrBtnjVGQfisR//X5B3759oVQqIRCo7yyhBRwJ
QIFRjaNUKmFmZlbdxagRBAIBlEpldRejVqE6KxnVTd2y/qdNSOliCNHbG7+6WoEDB2lIDBoMcYKO
jgChV8PRt29fjUERIYUoMKph0tPTq7sINQY1OZcd1RmpDyQSCdZt2Yi9AQfQaKn6FanFLpaQhEQD
AITOFji3IxTLsaQqi0lqKQqMCCGE1EjqxvxIJBJ8OGYYUrs3gMDCoMSNXwUiHT4PubBqxhCR2o8C
I0IIITVG0cHUCiEHnXwGT7c++PrLOVAoFPAYOhC5/ZpAv60VpOefaAx2GGNQyhT8Kte0CSwpLQqM
CCGE1AhFB1Pr+rwHgUAAOWMIjIrAudEf4WXSS+QbCdCoTcH+ZqIWZsiLSub3OysqLzIZohYF4zXz
o1LgRZvAklKiwIgQQkiN8P3GNYgVpEIR/AKCC0/4zV6N+jkiXaGA8qYUOjlyvuVH08avufdeIvt8
DEx8O/27WCNtAktKiQIjQggh1U4ikeDgsSMwGO0MPZfGfJCTF5WMtN+uwcS3E6TnnwD4d6zQ2xu/
ciIdKFOyYSDSQyMLE4j2PYGHWx98vW82LdZISo0CI0IIIdVu3Y8bYTjKGXqu/y64yHFcQTcZA6Qh
MYCSQbeZiUr3WdGNX/PuvcRw7n0sX7CEBlqTcqMFHQghhFS7c5cvQOxafKwQUNBNJotJBZMrIY9N
g+TsY+Tee6myxUfu3SRYXsvm9zejoIiUF7UYEUIIqRJvt+IU/psxBoWQK3HqPccBwtaNIHYwR97j
V5A9TYUkJBoCkQ6UUhlaWdjjCO1vRrSAAiNCCCGVJisrCxu2buan33MyJRqIDZGZI4FSLIDkdToU
MjlyFDJYsPc0Tr1XpOfCtH9LcGJdSEKi0WiWGxhjkEUmw/JaNo7sOUBBEdEKCowIIYRoVeFaRGfD
zuNl8ksYjnSG2Lc13zqUEPkS0nPPYTalM/TFusiNeAnlH3eRG/kS+kXGGBXKvfcS4vetINATAgCY
TIGUNRdga9YYXjS4mmgZBUaEEEIqpGgXWdG1iHJtBTDs7aKyzlDRvcwkwdFoMMQJ+m2twPIVyPC/
C4xh0Gtj9e+stMhkZJ+Pgem0zv/eS6QDCyNTXAwMobFEROsoMCKEEFJmWVlZWLZ6RbEVqmUyGb+x
a2bwYxgPaa02fdG9zABAv0MTSIKjkXEoApITD8EZCgFWsIij6bTOfGtR4cKNwhc0wJpUDgqMCCGE
lIlEIsHISWOR9IEehG+6yApXqM46dg8mC3qAMQaBSKfUe5lxHAeBsQhQKGE0qBUyT9xHg2Eu0HNt
rNJ6JD0XDcNeDvB0aF/FT03qCwqMCCGElMn6nzYh6QM9iFws+WMcx0HkYgnDUc6QhsSgwRAnKGWK
d+5lxvLkyAqOhiz6NVi+ElAwZB6/D6PeDsgMjITkz0cQGInA3qyCbdjLAY1v59JK1qTSUGBECCGk
TEIuhULoq6GLzLUxJOdiABR0g2kaUJ0XmQxhMxOk/XYNhp6OMB787+Ds3MiXyDv8AE0aWSJdmoW8
VznQb2gEkxcM/Rza02BrUqkoMCKEEFJqpVlziMnkSFoeAoGOADnXnwNK1QHVufdeQno+BkI7Exh4
tFA7OFuHE2AA2uK7+Yv5dDSmiFSFWrXytVQqxbJlyzBo0CCYm5tDIBBg7969pUp78eJFDB06FHZ2
dtDX14e1tTUGDRqEy5cvq73+8uXL6NGjBwwNDWFtbY2ZM2dCKpVq83EIIaTW4biCtYgKV51+G2MM
LEeOhiNdYbGoLywW9kF+XDpebbiIlHVheL35EqTnY8DkSuRFvFQJiooSOlvg3KVQPhiioIhUlVrV
YvTq1SusXLkS9vb2aNeuHUJDQ0ud9tGjR9DR0cH06dNhZWWFtLQ07N+/H7169cKpU6fQv39//to7
d+7A09MTzs7O2Lx5M54/f47169cjOjoaJ0+erIQnI4SQ2kEikUCangVlCWsOCe1N+HNc4V5mQ5yQ
E5GE/Ng0NBjiBMYYUn+5WmLLk1xYfLVsQipbrQqMmjRpgqSkJFhaWuLmzZvo1KlTqdNOnToVU6dO
VTk2ffp0ODg4wM/PTyUwWrhwIczMzHDhwgUYGhoCAOzt7eHr64uQkBB4enpq54EIIaSWWf/TJrAB
dsg+FwMOHMQulipdZJl/RKDRt73VptVzbQzpm/FHBV1uJQ/O1pFRUESqXq3qShMKhbC0tHz3haWk
r68PCwsLpKen88eysrIQEhKC8ePH80ERAEyYMAGGhoY4dOiQ1u5PCCG1TcilUAhbm0PXzgQZR+8h
ZeV5pKy5gOTl55AZGAnOQAQdfZHatBzHgXszRZ8xBp2GesiNeKn22vyoFHj26FuZj0KIWrWqxUgb
srKyIJPJ8OrVK+zZsweRkZFYtGgRfz4iIgJyuRwdO3ZUSScUCtGuXTvcvn27qotMCCFVTl1LDmMM
+QIl0rdfh4FHCzQY5swfz4tKRva5GDAFK7EVSJEiRdovV6GUKcAZiZB56C44rmA2W2HLU35UCiyu
SmlKPqkW9S4w8vb2xpkzZwAAIpEI06ZNw+LFi/nziYmJ4DgO1tbWxdJaW1sjPDy8yspKCCFVqXCP
s7dXs/76yzkwMjKCVCrFq/gkKAx0kXXsPrKOREJgLAY4QORoDoOezSG9+BR5UclqB1XnRiSBKZSQ
Z+UBMgVYZi709PUwRO6MsB2XIRcCuvmg/c9ItSpTYBQWFqa1G/fq1UtreZXF2rVrMW/ePMTHx2PP
nj2QyWTIz8+HSFTQ9JuTkwMAEIvFxdLq6enx5wkhpC4p3OMsubMBRG+tZn1pvDf2/7ITn0yfAv2h
rZEdHgsjT0eInS1V1h6SnouBUqaANCQaTMlUVq3OvfcSmYfvwWJhH3Dif796xNsf4IelKwHQQGtS
M5QpMOrTp49WPrQcx0Eul1c4n/Jo27Yt/3rcuHHo0KEDJk+ezI8d0tfXBwDk5eUVS5ubm8ufJ4SQ
uoAxBqlUipETPkbMq3gIwkTIComGqIUZjPo5QuRiiRQkY+LnnyK5swHkT1Nh5OmocWPYzGNRMPmi
K6QhMcgKiISOuQFYvhI6JnrQa9+E3/MMAGSRyfAqMo6IgiJSE5S5K03T2hVVnYc2CIVCfPTRR1i7
di3y8vIgFothbW0NxhgSExOLXZ+YmIgmTZpozM/f3x/+/v4qxwpnvTVo0KDGPHdtIRQKYWZmVt3F
qFWozsqnvtVbVlYWlq/9HifPn8br1NfIlmSjwcdtYe7a8999yaKSkfbbNZhO6wyhswUe/HEOFpM8
kBUSDePBmjeGxdF70NEXwXhwa8hiUmE6vQtkkcnIOvUQZmPaACj4DpBHvYLVjVz8cGwFjI2Nq/Lx
q1V9+6xVVGGwPGvWLDx58kTl3NixYzF27Fit37NMgZFSqVR7/Pjx45g4cSLMzc3xzTffwN3dHba2
tgCAhIQEnDt3Dhs2bOAHPA8ePLjiJdeS7OxsMMaQlZUFsVgMV1dX6Orq4saNGxg1ahR/XX5+Pu7c
uYMxY8ZozKukNykzMxP5+flaL39dZmZmhtTU1OouRq1CdVY+9aneCrvMXrbXgyQ3FTrW+mjwgaPK
mkQcx0HPpTGYkkESXBAIcW9aet65MayRuCCwuvcS4jwO+r8/woBObmD9nXFx37/jiDzc+uDr3bOR
n59fb+oeqF+fNW0QCoWwsLCAn59fld2zwoOvb926BW9vb3Tp0gV//vlnsa4mBwcHODg4YPz48Rg4
cCBGjx6NK1euoF27dhW9tUZJSUnIyMiAo6MjdHR0AAApKSmwsLBQuS49PR1HjhyBnZ0dGjVqBABo
0KABPD09sX//fixZsoSfsr93715IpVJ4e3tXWrkJIaSyrf9pE1520ocsNg1Gno6QBEdrXH1az7Ux
sgIiAQYopDIAeOfGsEDBIGurG7kI+DOsWGsQjSMiNV2FA6M1a9ZAJpPh119/LXH8jZ6eHn755Re4
uLhgzZo1OHDgQLnu9/PPPyM9PR0JCQkAgKCgIMTHxwMAvvrqKxgbG2PBggXYu3cvYmNjYWdnBwAY
NGgQbG1t0aVLF1haWiIuLg67d+9GYmJisbWJvv/+e7i5uaFXr17w9fVFfHw8Nm3ahAEDBqBfv37l
KjchhFSnpKQkTPz8UzyIewzOUASlVIa8mNcQ6JbcAqTTyBC6zUyAq8+QeycRohZmJc46U2TmQnrk
PgIuXFPbRUZBEanpKhwYhYeHo0GDBmjdWn2fc1FOTk5o2LBhhWa3bdiwAc+ePQNQ8AsWEBCAgIAA
AMD48eNhbGxc0JwrUF27curUqThw4AD8/PyQnp4OU1NTdOvWDV9//TW6d++ucm379u0REhKC+fPn
Y86cOTA2NoaPjw9++OGHcpebEEKqS1JSEnp4eUBvVGtYTPLgxxHl3EtC1uHIEluAmEwBg7bW4ABk
HotCAy8nSEKiAQbVVa8jkiD58xEEDcSw0jOrV+OGSN3CsQqOCC5sJZJKpcWCkbcplUq+a6q+TXtP
SUmhMUZlRH3xZUd1Vj51vd4GjBiMhE7ignFDeXJIgqMhi0kFp8MhPzELDf/zvtp9z97e2+zV+osQ
O1kg79ErsFw5oFAWjCmSK6DIzIN+RxuIm5lhhKg9li9YUg1PWvPV9c+athWOMapKFW4xsrGxwdOn
T7gqbpkAACAASURBVBEYGIgRI0aUeG1gYCDy8vLg4OBQ0dsSQggpBYlEggdPHkGQro/sv55AniJF
g9FtYDy4NbJOPIC+m73Gfc+yjkWh0byeAP7tAtO1N1GZlZYTkYTsv57AYlE3KJ6k04rVpNarcGA0
fPhwbNy4Eb6+vjAzM0OfPn3UXhcWFgZfX19wHIfhw4dX9LaEEELeUtglVvjfghloo2Hs3aZgIPWJ
BzDo68C3DsliUmE8uDX0nC0hCY6GJCQaApEOlDIFRC3MwOkL+XWHGGPgdAWQx6Uj9dhDNLa1Ruar
NDC5EhYWJhDte1Iw04xWrCa1XIUDo0WLFuGPP/7As2fP4OHhATc3N7i7u8PGxgZAwXT9v/76C+Hh
4WCMwc7OTmVvMkIIIeVXuI3H2fC/kJEnQW6mFCKhGKYNGqKBvhFSuhhB36Vg8+3CQAgoCHQKp95z
ekI0GOLEHy9sHUrd9jf/79yIJIhamqPBECfovOJw//wNfgNummlG6pIKB0YmJiYIDQ3F6NGjcfPm
TYSHh+PSpUsq1xQOY+rQoQP++OMPmJiYVPS2hBBS7xWuSZTSxRDCaU4w5DgYvFmcMSkkGolZr9HI
uaArTKlUqqxBxHGc2qn3ha8ZY1DKFAAKusuyjt1Ho697gjEGHRlTGVNKQRGpS7SyiWyzZs1w9epV
HDlyBAcOHMCNGzeQnJwMALC0tMQHH3yAMWPGYOTIkfy6QoQQQipm/U+bkNLFEKI3LULAW4sznnmE
rBMPIItJhUCkA3mKFJlB92HU3xECPeE7p94rpTK83nIZgoZ64AwKvi7yo1JUtvEgpK7RSmAEAAKB
AKNHj8bo0aO1lSUhhJAShFwKhdBX/VIpIkczKA/kQtjctGDl6iKbvRZu9WHUzxFpv10rNvU+LzIZ
2X89gfkcN+jov9lgOyIJGQfuopnSjAZXkzpNa4ERIYSQqsMYg0LIqXR9Fb5W5uYjbft1NBjTtthW
H/quVgADJMHRaDDECSa+nZBxIAKZhyPAGQjBiXQhamEG02mdVTZ81XNtDHY6FoGnDtHgalKnaT0w
SklJQVxcHLKzs9GrVy9tZ08IIQQFQQ6Xq0Bm0H3InqTys8mE9ibIj00Dy1dCr00JW30cuYf8Zxlg
+QUz0BSp2RDo6cJ8RjeN9zNuZMKvRUdIXaW1wCgoKAjfffcd/vnnHwAFv0RyuZw/n5aWxm+wevDg
QTRs2FBbtyaEkHpHIpFAmiWBbnM7GA/5t6ssfc8tGHi0QG54XMlbfVgYwXR6Z34Q9astl6DMk5e4
CraOjGafkbqv5KWqS2nNmjUYPnw47ty5U7CE/JufokxNTaGvr4/g4GAcPnxYG7clhJB6SSKRYOSE
j5HF5SH3Yhxeb7mMzOP3wfLkUKTnQr+NFT/jTB3GGFi+gg+KGGNQZuaBpeUh795LtWnyo1LgSYOu
ST1Q4cDo77//xqJFi6Crq4vNmzfj1atXaNxYffPtJ598AsYYgoODK3pbQgiplwqn6L/4QAzzr3vC
7POuMJ/ZHSIHM6T+dg2cTsG4o8IZZ+rk3nsJUQuzf/8dkYTWTVvg6ukLaHw9G7LIZD6oYozh/9m7
7/CoyrTx499zpqb3QkBCCb0IKmABQaQFdWVtCP50dYtlXRXxRVRcrKsiCii679reXUUWG4oFiBBp
YkMFJISahFAzKZOQ5Ewy9ZzfHyEDMQEJCSXk/lyX12XOnDOnMAx3nud+7tubXVRT0fpvknQtzn5N
DoxeeuklAB5++GHuu+8+YmNjj7rv0KFDAdiwYUNTTyuEEK3SjJdeoHhQGPY+yXVqEtl7JRF+eRr+
smoMwyB8ZBquzBzcmwvrBDnVmwpwrcglfGRasPlr4roqFr79HsnJySya9yHj6Iv9je2Y/r0N+xvb
GUdfFs2TpGvROjS5iWz79u3Zv38/hYWFxMfHA9CmTRuKiooIBAL19q/tuFxZWdmU07Y40kS28aTZ
YuPJMzsxp/u5HSuvR1EUHA4Hf/jrn9m5Lw/dqqJYTVjT4ggfmVZn5ZhhGJQ8u5rw33UnpHcyutsX
bBirWk0ENC+BsioUiwlTmI0QxcK4kVfyyOQHGwx6jlXR+nQ/s5ZKnlvjtMgmskVFRURERASDot9i
s9laXVAkhBC/VtvKI/ObVQQsCiafwYhLhnHXbbfzv/9+PbjdcPkoLCwk/MbexN467HCtoS1FwXpE
tcGRoiioUXYqv9gGRs3qs8iretSMDG1ykPyzm0+WvB8Mgn4rkVoSrUVr1OTAKCwsjMrKSgKBwG9W
tdY0jYMHD57y6E8IIc4kdVp53F6zosxvGCzaksX8Ky4n5OpuWP/SDVVVKXnpG8Jv7I29V1K9qbMj
6xHBoSRqlxfd5cWbU4K2dAeKWYWATteEVBbKdJgQv6nJgVG3bt344Ycf2LRpE/379z/mvosWLULX
dfr169fU0wohRIv1zIszKBoYiu1XrTysvRIJ6Drln2Rj/m43erWXsOJq4pbsJOrLXMoDOlVd49DH
dEG1W7D1SkTLzAm+hzvLgWIzYTLZsXVJwLennNCLU2mT5WPh2+9JUCTEcWhy8vXvfvc7DMPg2Wef
PeZ++/bt46GHHkJRFK699tqmnlYIIVokTdN4f/HHdfqbHcneOwlTpJ2YP55PkqHw5uCubBh7LqvH
9GXD2HN5yRqK5dUf0N2+mqkzqwld16nOclC1Mo/QS1IJlLmp+HQLhttPu+yAJE4L0QhNDoz+9re/
0bZtWxYuXMgtt9zC5s2bg6/5fD527tzJrFmzOP/88zlw4ABdu3blD3/4Q1NPK4QQLdLzL7+IEWk9
ZvFF1WpCXbqTOT3PYUzH+DpTaOmpcbzYvS1qxk4Mw8BXrFH68nf48ssIGdyBqm92kzBtGFFX9yQt
ob2MFAnRSE2eSgsPD+fzzz9n9OjRvPvuu8yfPz/4mt1uD/6/YRikpKSwaNEiLBZLQ28lhBBnrdpk
63cXvU/gUBHco61E0z1+Qnc6GT22XYPvlZ4ax7Qlv1CyubCmUKPVhDe3FPe6fSSlpmCdl8fllwxj
yrz7JSgSopGapSVIv379+OWXX5g2bRoLFizA7XbXed1qtTJx4kSeeeYZkpOTj/IuQghxdqkNfo5M
to59dBiVX2zDnV1Yp8FrLXeWA3+Fm6jwkGOOKkUYkPvBJuL/51JMUfaaNh//3sa3Hy0PVrQWQjRe
s/VKS05O5q233uKf//wnP//8MwcOHCAQCJCcnMyAAQMIDQ1trlMJIcQZq6Fl+OHWUIoHhQXzisJH
plH22joUFGy9EoNL8N2bC6n4aDNR43pR9tm2Y44qlR2sJn7qEMzRIcFtJq8hQZEQTdRsgVEtm83G
xRdf3NxvK4QQZ7yjLcM/MPNr4noOCe6n2i3E3DEQbXkOWmYOhjeAYjVhirZj75+CvX8byj7dQsae
UtJT4+qdZ+luJ5WJoVgPBUVQ08vsCullJkSTNflXiz/+8Y9Mnjz5uPd/8MEH+dOf/tTU0wohxBmn
dhm+9dAoUC01vH6ytWq3EHlVD+InXYISZiHs8s7o5W4i0ruiKApV8aHcv2UvS/JL6rT0WJJfwr2r
t6Pcel5wm/QyE6L5NLkliKqqJCcnc+DAgePav2PHjuzZs6fBdiFnM2kJ0nhSOr/x5JmdmOZ4bpqm
ce7wQcQ8OrReEFQyay1x919y1Gmx4idXYD8vJdjiwzAMip9aiRJmIcITILrSS1SIhXKvn4OhFiqs
KqZqncR2yZh91CRa/+3UJlrLZ+3EyHNrnBbZEqSxmhiHCSHEGen5l1/EiKo/MqS7feguz9GTrTcX
Yj8vJVi9GmoSsFFBMamU+7xYpg/DZTXh21pC+YebiBrTi2ts5/H41EelbYcQzeyUB0YlJSWSiC2E
OOss/2YVRkCvlzCtLcsh4soeVH2VWz/ZOsuBtnQHsfdeBNT84ujJLqJqZR5xDwxGtVsoenIF5f9e
j+4NYO0cixpiJWmjhynz7pegSIiT4JQFRuXl5bz55ptUVVXRt2/fU3VaIYQ4qTRN4+kXnqOgvBhb
z0Q8W4qwdIrBlZmLJ8eJUekl4qru2HokBJOtVasJ3RvAkhqFv9xN6dzvMYVbg8FPbWPY6iwHIeel
EHFlTSK3O8tBB2eoFG0U4iRqdGD0xBNP8OSTT9bZVlhY+JsNZGtJSxAhxNlA0zT+8eJzvP/pQkKu
7QFmBcMfoPyDrJpRI1VBDbVi6DqVX2wjfGRanWavtaM9vj3lGIZByJAO2HsnBUeTqrMcuFbkEnvH
QAC82UUk/VgtjWCFOMlOaMToyDyh2r/Ex8NqtXLzzTfz0EMPnchphRDijKBpGldNvJZdpfshzEz1
6l0EnNUEoqpRVAVzTChGQMeaFkfYiM54c0spe21dcCSoNigyDAMMiLtzENryHFxf5aJaTQQ0L2ZX
gKSkBFiQi9kHV0glayFOiUYHRrfeeivDhg0Dav5SDx8+nNjYWBYuXHjUY1RVJTIykq5duxISEnLU
/YQQoiX4x4vPsat0P+Fju2HvnUT5J9noVT5CBp1TZ9THs6WIg6//SMwdA8EAbXlO3STrzYU1eUOH
lu7D4V887W9sZ+3nXx21yKMQ4uRodGCUmppKampq8Of27duTlJTE0KFDm/XChBDiTPVpxheEDu+I
a0UulR9no/sCRN3Yt86qM0VRsPdKCgZEEVd2x/VVLkAw8bpqZV5N0HSE2iDIb0GCIiFOgyYnX+fn
5zfDZQghRMug6zqauxqWbCfyhj7YeiZS8vTKmiCoAbZeiWiZOTWjSN4Azle/I1BShYFB/IOXotrr
N9Wube8hQZEQp5401RFCiN9QUVHBI0/8nV5DzidtaD90r4/IG/oQ0jsZw+NHsZqP2fBVtZrQdR3F
ohJz1yBQFELOa4svr6zBYzybCxlxybCTeEdCiKNpcmC0bNkyYmNjmThx4m/ue8011xAbG8vKlSub
elohhDipHA4H14+7gmHn9mDi8AtZ8+F7KGXlBPQAis1MxcfZlH+SjZaxE9SjL0IxDAPdG8CzuRBr
Whye7CIMDMJGdMaVmYN7c2Gdlh/VWQ5cH21hyj3H32pJCNF8mjyV9v7771NeXs6ECRN+c9/x48ez
aNEi3nvvPS67TJodCiHOTLm5uUz43RheGtKF0YMuCCZTZ+x2cu/anThTwjGq/bg3FoCqENI/Bc+W
ogan09ybC1Gj7FR8tJmI3/VAW7Ide+9kfHlldRrJ1tY2MkXbGT/uOll9JsRp0uTA6Pvvv0dRlOBK
tWMZO3YsiqLw3XffNfW0QghxUlRWVnL9NVfy6pAujOkQH9yuKArpHeJ5CZjkq8a4ugfVmx24Fu8g
fFQaZa+tA4N6la0r3s8iEAhgignFt/cg1q7x+DYV4d9UCNf2DBZv1HUd/9YSEn5wMW3y1NP3AIRo
5ZocGO3bt4/o6GgiIiJ+c9+IiAiio6PZv39/U08rhBDNprKykseefZLMb1bhLCsjwQgwOjWuwX3T
U+OYtuQXXIpCaJ82uJbuRLGZGxz9sXSKwTCrJPzPYCwxNa2QvNlFTOh6Of9z9yReeHUOX72xCr8F
bLXNYKVWkRCnVZMDI7/f36jGsD6fD7/f39TTCiFEs9A0jWtvnYDjAjuW27tTPXstUTbLMZOpI80q
2qGl9LbuCbizCgnpm1yvsnV1lgPfrjIsMaEYhoFvSzEJP7iCwc8TD/2dJ/i7LMsX4gzS5OTrlJQU
XC4XOTk5v7lvTk4OmqaRlNTwstbf4nK5eOyxx0hPTycuLg5VVXnnnXeO69gVK1bwpz/9iW7duhEW
Fkbnzp35y1/+gsPhqLfvsGHDUFW13n9jx449oesWQpy5nn/5RRwX2DF3jqHy820YlV4Our3HTKYu
9+vBQCZ8VBoVH2yielNBnWNqW3oEnNWob23F/sZ2xtGXRQ209JCgSIgzR5NHjAYPHkxeXh7PP/88
r7/++jH3nTFjBoqiMGTIkBM6V0lJCU899RSpqan069ePVatWHfexU6dOpaysjOuvv54uXbqQl5fH
3LlzWbx4MRs3biQxMTG4r6IonHPOOTz33HN1vuhSUlJO6LqFEGcWTdOYOXcWy9auxFFRQgAdo9KL
KcKOOT6Usj3lZOx2kn5EjlGtpbudVHU9PM2m2MwodjPu9QfQvtiOKdpOQPOi2EzE3jEQ8/wcvvs4
E1WV6ihCtARNDozuuusu3n77bd566y3i4+N5/PHHsVqtdfbxer089thjvPXWWyiKwl133XVC50pJ
ScHhcJCYmMjPP//MgAEDjvvY2bNnM3jw4DrbRo8ezdChQ3nllVfqNcaNioo6rpV2QoiWRdM0xt18
A4X97diToH05RFTrVNisuDrGUGlWcVX7uPfrHbxkQHqHuGAy9dLdTiZv249+96DgcLs7y4G5TSR6
uZu4yZeg2Gq+Vp0vfYtiM2P2I0GREC1IkwOjgQMHcs899zB37lxmzJjBm2++yciRI4NtQ3bv3s3y
5ctxOp0A3H333Vx00UUndC6LxVJnZKcxfh0UAQwZMoTY2Fi2bt3a4DGBQAC3201YWNgJnVMIceaZ
OXcWjl4WQhZt4eUBnRh9Rb/Dy/Hzndy7dgcVA9sR+HMnJq3axSOL1hPu06nw+tE6x6D8dSAmu+Xw
qrMPN2M/L4WIm86tU8VatZrwZhdxxWApTSJES9LkwAhqRmPsdjsvvvgiJSUlvPfee3VeNwwDk8nE
lClTePrpp5vjlM3C5XKhaRrx8fWHy3fs2EFYWBher5ekpCT+8pe/MH36dMzmZnlkQojToKKigvc/
+RCTq4qXh3Srvxy/YzwvKXBPoZODb68n5o6BVI3rScmmAny5pShmFffMrzHFhxEocWHr14aEacPq
tfUwDANd85K4roop8+4/1bcphGiCZvlXXlVVZsyYwZ///Gfefvttvv32WxwOB4qikJyczMUXX8yt
t95K586dm+N0zWb27Nn4fD5uvPHGOtvT0tIYPnw4ffr0weVy8dFHH/H000+zc+dOFixYcJquVgjR
WIZhUFhYyM133sbOvbvAbibg8dAx3H7M5fiR2fvwje2KtjyHyKt6ENInmaoVecTddzHe3FJi7xpE
5RfbsHSMabDXmWdzIV0TU1n49nuy9F6IFqZZhz+6dOlyRo0IHcuaNWt48sknGT9+PEOHDq3z2htv
vFHn55tuuok77riDN998k/vvv5+BA+t2wxZCnDk0TeP5l1/kq29X49b9FO89QMT4vsT/cTgAxS+u
Icpz9JVgtcvxK3smoGXmBLepVhPuzYVYO8eiKArhI2uKOioG2HonBafjfFuKSfqxmoUNrD4TQpz5
WmVG4LZt27jmmmvo27dvvSDoaB544AEMwyAzM/MkX50Q4kQ4HA5GXJ1Oz4v78zGbcN2QStGBApRI
O9oX2yh+cgXOWWsxKn0cdPt+czm+qqqoVhOGYWAYBgHNi2tFLuEj0wBQ7Raibx9A4PNc7G9sx/Tv
bcdcki+EaBlaXcLM3r17GTVqFDExMSxevPi4E6vPOeccAEpLS4+6z4IFC+pNtXXq1Ik5c+YQGRnZ
qEKYoibZPjY29nRfRovSWp9ZQUEBQ668HL19BJET+mJLi6Pkha+JHNeLqrX5hI9Iw9bzcKsO1//9
TEa+k/SODSzHz69Zjl/b/FVRFKo3FRCocJP46GV1ps70vHJuvuEmZj71bKsr0thaP2tNJc+tcWr/
Tk2aNIm8vLw6r02YMOGkrB5vVGBUW0wxKiqKq6++us62xrrllltO6LimKC0tZdSoUfj9flatWtWo
QpO5ubkAJCQkHHWfY/0hVVRU4PP5GnfBrVxsbOwxA1FRX2t9Zr+bcC22a7vjyszF1jORyi+2EXF1
T3z5ZYSPSKvT3FVRFJSbzmXSi99gKDU5RcHl+PlOJv2Yh/7wpXizi7B2jqU6y4G2dAeWDjHBpfhH
VrG+Z95drfKZt9bPWlPJc2sci8VCQkICc+bMOWXnbFRgdOutt6IoCt26dQsGRrXbGkNRlJMaGDkc
DsrLy0lLS8NkMgFQVVVFeno6BQUFrFq1ik6dOjV4bGVlJTabrV4tpqeffhpFURg9evRJu24hxInZ
sTsXc1Qi/hIXJU+vAouKL7eUQKWHsBH1F32odgv+yRdzx3NriM/eR6RZpcKvU1LpxnT/xQR2lFCx
cDNqpB1/iYtAuZsI3Yb19a3oVhWzD66QvmZCnJUaFRi1b98eRVHqVICu3XaqvPrqqxw8eDDYiPaz
zz5j7969ANx7771ERETw0EMP8c4775Cfn0/79u0BmDhxIj/++CN/+tOfyM7OJjs7O/ie4eHhwUBv
/fr1wZGftLQ0qqur+fjjj/nuu++444476Nev3ym7VyHEbysoKMDv9aFvL8HaOQ79YDWqzYzu8WNp
F03pP78n7u6L6q0eM4VYqU4KR7trENqhbZVPrUB9ZyP+Yg0l1AKeAOiQ1rEzn/93IeHh4a1uykyI
1kYxWljiS8eOHdmzZ0+Dr+3atYv27dtz2223MW/ePPLy8oKB0bGOS01NDc5d5ufn89BDD/Hjjz/i
cDhQVZUePXpw++238+c///mEr7u4uFim0hpJhpwbrzU+sxFXp7OjeA+qqhBxZXdsPRMxPH7UpTsJ
yS4iMmBQruu4+7dBH9MlGCAZhoHzpW+Jn3QJAO7NhXh3lWJJjab842wUoH1Ku5qO93+TkaFfa42f
teYgz61xaqfSTqUWFxi1VBIYNZ58gTRea3lmtb3OMlZmcsBRgGJRibyuNyG9k9HdPiyv/sDsHu0Y
3T72cFXrPaVM3roP392DUO0WqrMc+PLLiLiyO57sIrSvcggd3IGqNbtQzCq2gJktmetkdOgoWstn
rbnJc2uc0xEYtbpVaUKIlu3IXmflZUVEju+DtmhrMMFazdjJ7B7tGHNEAUdFUUhPrVlpNiljJ9Wd
Y6n4MAsl1IJ7wwEwqRi+AP4DFcTcOZCyf60jOiRcgiIhWqFWWcdICNFyzZw7i+JBYXj3HUS1W7D3
TkKxm4NBTOgOJ6PbN7wcOj01DvtP+/HllxH/8FAUm5nE6ZcTflV3Qs5vS+RVPfDllmGKCWHUkOGn
8raEEGeIRo0Y/boDfVNMnz692d5LCHH2+nWy8/K1K7Hc0YPyjG2o4daazvX+QLBOWJRJPWZV65jY
UKoPTZ/Z0uKo3lRA1Ve5xNw5sGZp/pLtdIxty5S/SY8zIVqjRgVGjz/+eJOHlmu/5CQwEkIcTW0O
UeY3qwhYFBR3gMiQcEq1g5RUl6O/+DWKX8cw1QRE1h6JuLMKCembTHlAP+rKsdqq1u4sBxUfZIFJ
pfr7vZgj7Rx88VvsJisTxvyeaZOnSrK1EK1UowKjSy+99KiB0caNGykvLwegbdu2tGvXDoD9+/ez
b98+AKKjozn33HObcr1CiLNcbQ5R0cBQrLd3x7P3IAf/tQ7FakINtaBX+TACOgYKYT2T8GwpIiK9
K6X/+wMoQJc4MvaUkt5Ak9il+U6cLg/e/DLCx/XE+0UOa5d9RY8ePSgtLZWcIiFE4wKjVatWNbj9
4YcfZvXq1UyYMIHHH3+cLl261Hk9JyeHJ554gvnz53PRRRfxzDPPnPAFCyHOXpqmce0tN5Jbshd1
jZXypdvQy9xETTwXe6/DjVrd2YWU//cX3LtL8eY6CR/ZhZg7B+LKzEXLK+Hekmpe0ruQ3iH+cFXr
3U7uXb2NyvhQ2FBAyFaNFYu/Ijk5uaYatgRFQgiaYVXawoULef755/nrX//KK6+80uA+aWlpzJs3
j6ioKGbMmMEFF1zANddc09RTCyHOIsHVZgNCiOs9BMPjp3jmGqImnktI7+RgDpGiKIT0ToYJUP7R
ZrCb8ewsRsvMQbGaIACFNpXbv8shYct+Ik0q5dU+nFUe1AcuIbK4iqQfq6XRqxCiQU1elfbKK6+g
KAqPP/74b+5bu8/RAighROtUO1JUOCAEe59kDI+fstfWYfgNQnaWEvr816TM+pbQ57+GRVvQ3T7s
vZNQFYi4sjvurEJUqwnd48fWI4GEqUOpNCvk6wF2+hWKTVZCO7Uj8rMDXKP2k6BICHFUTR4x2rRp
E1FRUcTH1+9S/Wvx8fFER0fzyy+/NPW0QoizgGEYFBYWMuq6K6lQPMT3HgKAtjwH2yXtif1oCy/b
Qhk9tl3dQo2v/oDv7kEoIRYsPeIxfWUn5q5Bwemw6k0FGCjYDDNb1q4PHivTZUKI39LkwMjj8eDx
eNA07Td/A9M0jYqKCmw2W1NPK4RooWpXnC1bu5Jyj0ZFYSnWznHgBMPjp2LZTjwbCohUFOYO7nrM
Qo16tQ+z2VwzhUZNoOXOcuDKzEUNsRATER0MhiQoEkIcjyZPpXXr1g1d149reuyVV14hEAjQrVu3
pp5WCNEC1eYRLVKy8PwhDf85YaiKSki/FMI1D6FPr6LbVicdQqyE+3QuTolq8H3SU+MIzS4CU81I
kL9Io2TmGkqeXY03r5SYuwaiKAqjh404xXcohGjpmjxidOutt3Lffffx6KOP4vF4eOCBB+qNHFVV
VfHCCy/w5JNPoigKt912W1NPK4Q4gx1t2mrm3FkU9rfj2VFM1YINWDvEYk6NIuTDzcwd3JXRHeKC
015f5jv5f0s3M39sHyKsdb+qFEUh3KsTfdcA3JsLsZ+bTOS4Xoen0rIcRBo2KdIohGi0JjeR1XWd
sWPHsmzZsprVIiEhXHDBBbRt2xaoqWP0008/UV1djWEYjBw5kqVLl9ZUq21FpIls40mzxcY7nc/s
10UZTT6DEZcM43/+dj8REREYhsEFlw+myFmEYlZRQswYVT6ibBZe79ehzpRZrS/zS/ipsIJpgzrV
2W4YBv0/34Dziq5oS3cQe+9FmEKsGIaBZ3MhypLdLPvoC5KTk4/r2uWz1njyzE6MPLfGOR1NZJsc
GAF4vV4eeughXnnlFfx+f80bH/rNrfbtTSYTd999NzNmzGiVOUYSGDWefIE03ul6ZrVTZMWD0LfI
UAAAIABJREFUwrD0TMDw+NGW5eDZUgQeP6qqYgm143JWYOsSj36wGtVmRvf4aVfq5pfxA49aqfp3
n27k83H962xfsquEO77dQYXNhBphQ1EUVJsZo9TNzePGM+WeyY1adSaftcaTZ3Zi5Lk1zukIjJo8
lQZgtVqZNWsWU6ZM4aOPPuKnn36iqKgIgMTERC644AKuvfZaUlJSmuN0QogzTG1jV2uvRHS3j7LX
1hF6aUe8u0oJv6o7tp6JVCzagtnvJXRgO2w9E1EUBV3XiZ75zTF7m6nUjEyrqhos1Dh5236sf7+M
pBBrcF9d17G/sZ0nHpZ2Q0KIE9csgVGtNm3acM899zTnWwohWoDMb1Zhub07ULPUPmxEGp5cJ2GX
d8beKwkAd5aDyGt6BX8GUFWVCuXoOUmGYbDb5+e8zzYQo6uUub1UdopG+dsgTHZLnX39W0sYMfiy
k3iXQojWoHUl+gghTsixZtwNw6hp9Koo6G4fVev3U7FoC94txbiW51D+2Rb8VR4UlDpBUa2qrjW9
zRqydLeTinYRmJLOYd5X37L425+JVWLx55YFr8kwDLzZRST84JJkayFEkzXriFFJSQkrV65k9+7d
VFVVMX26DGkL0VIdLZn61/k7iqKguAMc/HATnl8cRI3vizUtFi1jJ96tRXi3FeNefwCMmjpFyq9G
evQxXZj86g8YukH6EavSluY7ue+bnVRFhrLmyw+JiIgAYNG8D5n5ymy+emMVfguYfXDFJcOYMu9+
qWYthGiyZkm+9vv9TJ06lX/+8594vd7g9kAgEPz/srIyOnXqRHV1Ndu2baNDhw5NPW2LIsnXjSdJ
io3XXM/s18nUtcGKb0sxCT+46rTUqKys5OIxw6hKshAyoC22tDhK//cHwkakYe99ROPXrEJcK3OJ
vWMg6q+Co0C1F+/Tq4iPCiHSrFLh13F1jSMwOo2Qd3L55osVDV5nc1Wzls9a48kzOzHy3BqnxSZf
X3/99Xz22WcA9OrVi+3btwdXp9WKiYlh4sSJ/O///i8ffPABDz74YHOcWghxEhyZTA2HAxBrr0SK
KeIfs2ZgtVhYtnYljiIHoVd0I/DlDuy9zqPyi22EjUgjpM/hpfKKohDSNxmUmhykyKt61Dmfd6cT
74C2uMb1Qjsi2AlkFx0zb0iqWQshmluTc4zee+89Pv30UxITE/npp5/YtGkTsbGxDe57/fXXA7By
5cqmnlYIcRJlfrMKU6doWLSlXgNXJSWc9z/+kPk/LcFRXYpuNVGxKBslzIqiKHhzS7H3rp9LBGDv
nYRna3Gd/KDqLAcVH2RhaRcVDMAkb0gIcbo0ecTo3//+N4qiMHPmTPr373/MfQcOrKlVsmXLlqae
VghxkhiGgU/Vsf5zHbN7tKvXwPW+Od8RCDURNqAd1h4JaIu3Y+kYg/bZVnRdR7Gajrn8XjGrFD3x
FWqoBcPtR/cGwGKi4pNsXMtyMFlMJEclSN6QEOK0aHJgtGHDBgCuvfba39w3NDSUqKioYI0jIcSZ
R1EUVEcZs89v13ADV13nzk170JbnoKzeRaDYhaEbBLwBPFuKMLyBYy6/RwFTdAhx910cfF9d13E+
t5r4h4difW0r33z+1Sm7XyGEOFKTp9LKy8uJiooiJCTkuPbXdV3yAoQ4w8UoKqPbNzwlnt4hnlgd
Yu4YgOWcKNRIG778MhQDKhZuRo2w4d5c2OCxnuwi1OgQrJ1ja0aPDn0XeDYXYu2ZiG9LMSOHDD9p
9yWEEL+lySNGMTExFBcX43a7sdvtx9y3oKCAiooKUlNTm3paIcRJYhgGyVERR31dURQidINdM9Zg
7RBDzJ0Dg33K3JsLqfgkG98HZWAY2PskH16VtrkQbcl2DN0g6sY+wXO5Nxfi+iqX8GGda3KK5klO
kRDi9GlyYHTeeefx5ZdfsnLlStLT04+57//93/8BcNFFFzX1tEKIk0DTNP4150V2FzgYv7icKl+A
C9tEc9957YMd7g3DoNJuJnHKMDxbijj4+o/EHFqCH3IoEPLsLMGb60T7YjuYVQy3D93jx1AVCOiU
zFiDNdyOXu3HarXSJjKGkdb+klMkhDjtmhwY3XTTTWRkZPD3v/+dIUOGHPVLLSMjg6eeegpFUfjD
H/7Q1NMKIZqZpmncPuE67mtn5smJg4IjPZl7SrlpSRbzx/Yhwmpm6W4nrs4xKMqhStZG3SX4tl6J
aJk5xE+6BGNczaqz8vc2oVhNqKqCpUMM7fUYPpv/EREREc1Wi0gIIZpDkwOjiRMn8vrrr/P1119z
4YUXcueddwaLPC5fvpz8/Hw+//xzlixZgq7rXHXVVYwePbrJFy6EaD6apnHb/xvP5LYqo1IP5xYp
isLI1DgMw+Dl9bvpnxzF/Rt34wwxEev2odotwUDoyGMMt5/iF79GURVM0SFEhIYSmRKPxa9w+YXD
mPK3wyNDEhQJIc4kTQ6MFEVh0aJF/P73v2fNmjXcd999wdfGjBkT/H/DMBgxYgTz589v6imFEM1I
0zSuGD+OwJ49jB40qMF9RqbG8dC3ObwdZ0V/4BLCc0qDo0SKoqBaTXVqEBneAHFTBhPY5qyplP1V
JmFhYRIECSHOeM3SRDYmJoYVK1bw9ttvM2TIEKzWmkRMwzAwmUxcdNFF/Oc//yEjI0PyB4Q4w0x7
cjo5u/KIPqL+0K87BSmKQkRcKMbVPYKjRN7c0uC+ujcQPNa9uRDd66fsH2sYR99g+xAJioQQLUGz
NZFVVZWbb76Zm2++GV3XKS0tJRAIEBcXh9ncrL1qhRDNwDAMNE3jk6WfE/P/+lO+eAdPf5/L9wXl
hFlMuI5IvA63mCj3Hy61ceQokXtzIdbOsXVWnlnaR3PzJb/jiYf+fprvUgghGqfJEcs777wDwOjR
o0lKqmkDoKoq8fHxTX1rIUQz0zSNf7z4HJ9mfEGV34Me0Akb1wNvjhNPaRUD+pzDtEGd6iVe/6F3
ClVdDxd7NAwD3eOvWZ7/YRZqtB33s6swt4nE0A1SlVhp5SGEaJGaHBjdeuutmM1mDh482BzXI4Q4
SWpziXYV7AWbGcMXQFEVqlfkEe7y8tLQbozucPgXmtrE64BhMGnVNhITw9Ge/5qqrnFUt4skUOnB
l19GwiPDwGqi5MkV+HaXEWUL5/P/LpRpcyFEi9TkwKi2YWxoaGiTL0YIcfL848XnyHfsJTy9K9qS
7USN74O9VxKKohD6/NeMPqL9x5FGp8bROSqUxWP71fRL2+3k3oVbsE4dgjn6cMV7NSYEvaiK5YsX
S1AkhGixmpx83b17d8rLy9E0rTmuRwjRzDRNY/ozT/DfTz4g/KoeaMt3EnFdb0J6Jwf7lEWZ1GM2
fg23HF51lt4hnpcGd8G8aldwH8Mw0EurWfHJUpKTk0/VrQkhRLNrcmB06623EggEePPNN5vjeoQQ
zUTTNB554u+cO3wQ72R8hA5ULMqGgEH11/kUP7OSwie/ouzV7ykrraq3Eq2WYRi4fIE6gVN6ahxh
O5zBn91ZDm4adwOdO3c+2bclhBAnVZOn0v785z/z5ZdfMnXqVKxWK7fffrusQhPiNNM0jbHjx1F6
cRQxjw7F8PgpfW0dYZd3Dk6fGYaBO7uQqq9yqe7fhow9TtJT6y+aWL7byUUp0XW2KYpCpFmlUtfx
ZBdRtXArj6x551TdnhBCnDRNjmD++Mc/Eh4ejs1m45577mH69OkMGDCAxMRETCZTg8coisJbb73V
1FMLIRqgaRpX3vh7Si+OIqRvzbRW5fIcwkek1bTwOERRlJrpNBQqdpYweet+DKNmNKg2cFq228mr
G/cyf2yfOucwDIOy0mpKX/4OU7Sd8eOuk7wiIcRZQTGONn5+nFRVDX6J/ubJDu2nKAqBQKDR53K5
XDz//POsW7eOdevWUVZWxn/+8x9uueWW3zx2xYoVzJ8/n7Vr17Jv3z6Sk5MZPnw4Tz31VIM5Ed9+
+y0PPvggGzZsIDIykhtuuIFnnnmGsLCwRl83QHFxMT6f74SOba1iY2MpLS093ZfRYmiaxrOzn2f+
R+9h2EwkPHpZTQ6R24dz1lriHx7WYB6RYRg4X/qW2DsHombsxP7jfqIj7VSUVTMgKYJZw7oHG8jW
WpJfwn3eKnxdE2oqWx8q4thSyWet8eSZnRh5bo1jsVhISEg4peds8ojRLbfccsoq2paUlPDUU0+R
mppKv379WLVq1XEfO3XqVMrKyrj++uvp0qULeXl5zJ07l8WLF7Nx40YSExOD+27cuJERI0bQs2dP
Zs+ezb59+5g5cyY5OTksXrz4JNyZEE3jcDgYcc1YDlZpWDvFoBe5gkFR6b9+QA23HTO5WrWaUGxm
GNeTvduKyCt3AQZVB6v4+sDBOqNIS/OdPPB9Hta2yVzRtS9T5t3fooMiIYQ4UpMDo//85z/NcBnH
JyUlBYfDQWJiIj///DMDBgw47mNnz57N4MGD62wbPXo0Q4cO5ZVXXuHJJ58Mbn/kkUeIjY1l9erV
wRGi1NRUbr/9djIzMxkxYkTz3JAQTeRwOJj4l1vI2b2LsCu6oXyxDUUB3e2rqWy9PIfwkV3Qlucc
tYv9kS09DMPA0A1iJvTDtSKXQmcVd/+YT/T3u0gMD8UUGsEFQ4ez/IX3iYiIOA13LIQQJ1eTAiNd
19m2bRsVFRXExsbStWvX5rquBlksljojO43x66AIYMiQIcTGxrJ169bgtsrKSjIzM3nggQfqTJvd
csst3H///XzwwQcSGInTqjbAKSgo4JL04QTCTahRdioXb8McZSdkQDvMcWF4thThzS0l/IpuWPNK
8WwpqpNjVMuTXYS1c009MneWA3NSOBUfZhE3eTC2T3bz7UfLUVX1qIGVEEKcTU4oMPL5fDz66KO8
9tprVFZWBrfHxsYyadIkHnnkkRbxBepyudA0rU77kqysLPx+P+eff36dfS0WC/369WPDhg2n+jKF
QNM0Zs6dxbK1Kyn3aLgrXAT8AXTFwJoYRfjV3Sl9YS0oCtVr8glUe6latwfVYubgv9bVtO/YeADD
E8Dev83hVWmbC6lakUv07QOo3lRA+ftZmOJCiJs8GFOUHZPXQFVrqnq0hL/TQgjRVCcUGI0bN46M
jIx6CddOp5Pp06ezc+fOUzrFdqJmz56Nz+fjxhtvDG4rKChAURTatGlTb/82bdqwdu3aU3mJQqBp
GuNuvoHiQWFY7uhBmKIQahhUbzhA5eJtBIo0yl//CVN0CLbuCYRe2oGDb68n6sZz6y3Nr1y0BW1l
Lqrdgl7uJlDlRY2045z5NbphkPj3y1DtFgC82UVcMfiy03z3QghxajU6MPrwww9ZunQpAGlpaVx/
/fW0a9eO/Px85s+fz4EDB5g3bx633XYbQ4cObfYLbi5r1qzhySefZPz48XWus7q6GgCbzVbvGLvd
HnxdiFPBMAxmzp1F8aAwrL0S0d0+Kpfn4NlRgl7hJvK6Pth7Hw5+PFuKKH3lOyKu6E5I78OrLY9c
mu/dVUrEld1xb3ZQvmAT1rRYrKkx+A9UoNotGIaBb0sxCT+4mDJPGsEKIVqXRgdG7777LgCjRo3i
008/rRNATJs2jeHDh7Nhwwbmz59/xgZG27Zt45prrqFv37688cYbdV4LCanp/eTxeOod53a7g68L
cbLUTptlfrMKvxmKDziIfXQYuttH2WvrCBuRBgZYO8fWq0tk75WEEdDx7T5ISP+Ueu9t65WIlpmD
O8tB5aItxE0ZgnFAw/hiF1GR4ej/3obZB1dcMkxWmwkhWqVGB0br169HURRmz55db1QlMjKSGTNm
MHLkyDM2F2fv3r2MGjWKmJgYFi9eXK8uUZs2bTAMg4KCgnrHFhQUkJJS/x+bWgsWLGDBggV1tnXq
1Ik5c+YQGRl5XLWexGEWiyXYpLi1qKysZNzNN5CvlhKoqkaxmQkYOpVfbMPw64QeqlytLc8h4qru
Db6HvU8yrhV5Db6mKAqG20/ZfzcSlRRH5ML9pA8byfQfFhEREdFqE6xb42etqeSZnRh5bo1T+300
adIk8vLqfq9NmDCBCRMmNPs5Gx0YlZSUYLfb6dGjR4OvX3DBBcH9zjSlpaWMGjUKv9/PqlWrSEqq
v0Knd+/emM1mfvrpJ6677rrgdp/Px8aNGxk/fvxR3/9Yf0gVFRVS4LGRWmMhtIefeJSc4j1EXNkd
W8/EmmKo1V6M/24iLLeU2LyDlC/ZSbjbh+HxoxzKBzqSoigoVlODQY5hGOhuH7GR0Xz76Yrgknuf
z9fqnvWRWuNnrankmZ0YeW6NU1vgcc6cOafsnI1uIuvxeIiKijrq67WvNTQVdao4HA62b99ep7p2
VVUV6enpFBQUsGTJEjp16tTgsZGRkYwYMYJ3330Xl8sV3P7OO+/gcrm44YYbTvr1i9br04wvCL+i
WzBpWnf7sP5zHf9sE8+miReyekxfNow9l9fO64j5lR/Q3fWDbcMw0DVvgyM/7iwHVl1l+SdLpA6R
EEI0oMV1e3311Vc5ePAg+/fvB+Czzz5j7969ANx7771ERETw0EMP8c4775Cfn0/79u0BmDhxIj/+
+CN/+tOfyM7OJjs7O/ie4eHhXH311cGf//GPf3DJJZdw6aWXcvvtt7N3715mzZrF6NGjGTly5Cm8
W9GaGIZBld9D/BF5Q2rGTmb3aMeY1LjgNkVRSO8Yj6HApIydMK5nnfdxZznQPT6qsxx1ErPdWQ7c
H29j7dKVDbbBEUIIcQK90lRVJTk5mQMHDjRpnxPVsWNH9uzZ0+Bru3bton379tx2223MmzePvLy8
YGB0rONSU1PrzV1+++23TJ06lfXr1xMREcH48eOlV9op1lqGnGuTrTNWZ1KolaLYzFg7xxI+Mo3w
l79nw9hzj1qxuv+n63E9MvTwqrTsIsrf/wXDbAJfoKbVh9WM4QsQYQ4h8+MlEhQ1oLV81pqTPLMT
I8+tcU5Hr7QTCoyampypKAp+v79J79HSSGDUeK3hC6SmRtH1FA8Kx9Izoc6ye235TvoEFFaP6XvU
44csWk+W+VBekUXFmhZH1Y/7MIVaMDwBDJOCGoA/XDuBKfdMllVmR9EaPmvNTZ7ZiZHn1jgtpoms
rK4SomlqR4k+/OxjTFd1xnYoKILDy+4xoOyj7GP2OCuv8mK/sB1hIzpjCrFSvakAvtuDuVMsMTf0
Rdd17G9s54mHp5/qWxRCiBap0YHRY489djKuQ4hWw+FwMPLaK9BHnoPqqSZ26U6iluVSHtCp6hqH
PqYLqt2CrVciZR9mkbGnlPQjcoxqLd3txD2gLZFX9cAwDKo3FVCxMBtTbAhRv6tZNerfWsIIqV4t
hBDHrdFTaeLEyFRa452NQ84Oh4OLRw2FjlHE5pYx95IujO4QF5xCy9hTyuSt+/DdPQjVbqFoxmoS
yty8NLgr6Ufst3S3k0nr8iiOtEJAR6/yYfh17OcmE3lVDxSbOVi9etG8D2QK7TecjZ+1k02e2YmR
59Y4LWYqTQjROJqm8Y8XnmP+og/QDZ0ERWHukK71V5ulxmEYBpMydmJc3QPVakJ/7DLueGY18Vv2
EWlWqfDruLrGoT98KRE5pVSt20sXI44Lzjufb37+Ae+CXKleLYQQJ0gCIyFOIk3TmPbUYyxa/gVK
iAVUBdVqJjyvjNGDujZ4THpqHNOW/IIzuwhrWhymECtamAVjTBqVvZNQVbUmQXtzIdqS7XSMbcsn
/60ZFYqNjcXpdLbK6tVCCNEcJDAS4iTQNI1/vPgc7y9aSOh1PUl4/PI6Xe6jPt561OBFURQidIP8
ZTuI++uFGIaB4Q3g/vkAri+2gwqKzyDEbGPCmN8zbfLUOqNCEhQJIcSJk8BIiGamaRpXTbyWXaX7
Cb++JyF96ne5r1i07ZirzSoOujGfm4Rqt1Cd5cDQDYwKN2Gj0ghk7GLrD79IACSEECdBo1uCCCEO
+/XaBcMwePqFZ9nl3I8B2HvX78cHUN0rkYz8hvsJLtvtZGByJLEbCqhefwBtyXbUSBshl6Tiyszl
91dcLUGREEKcJDJiJEQj1dYgyvxmFQGLguLVCTPb2V94gGqfhzC3n/bhNiJ1qJy5ts4S/Fp6ehce
mP4VCkqdVWnLdzt5deNe5o/tw9f7y7gzYwd+zYNiVvFsctAxri3TJk89jXcvhBBnNwmMhGiEmkrV
N1A8KAzL7d1RFAVfWRX753wLNjOJ1X7mDulafwn+qz8El+ADYDURHWrlsW9zePWXPYSaTVT5dS5s
E8X8sX2IsJpJ7xBP9Dc5lOoB2qWkMHrQSKb8TVaZCSHEySSBkRCNMHPuLIoHhWHtlQiA7vZR9ur3
RFzdA+Wzrcy9tCtjOsQH9//1Evzahq/eLcVUGgY9okL44MpzG8w3UhSF5KgIFi9dRWRk5Km7SSGE
aMUkx0iIRsj8ZhWWnoeLjWnLc4i4uif+/RXEms2MbqBCNdQswQ/b4axZlba5EO2rHFxtI3BWe4+Z
hG0Oi5KgSAghTiEJjIQ4ToZh1OQUHRHEeHYU493ppOqnfUSHWI65BD/c7afw8UwqPt2C4ddxJYSx
LxBg2W5ng8cs21vGBUOlnYcQQpxKMpUmxHFSlJpE69qVaIFqL4GDbjw7ijHHhlLu0Y85+lNpM2O2
WYm77+LgPr7LOnHfzLXMMgzSO8QH85KW7S3j5b0BXn9+8im9RyGEaO0kMBLiOGiaxtMvPMv+3Xvh
iQMoqopiNaGYVMxJEfidLlxd4sjId5LeMb7e8Ut3O6nqFge7y4LBk2EY+PYcpASD+9fv5+lfHKRE
RVKNyvmXXsbrz0+WRGshhDjFJDAS4hg0TePxZ57iw88/hggrarSd8Cu6Ye+VhOHxoy3LwbOtGMUw
KN5WzL0H3byk1OQUHdnwdfK2/QT+OpDAc6speWolSqgFo8pHtD2CdV+uoU2bNgBHHXESQghxakhg
JEQDapu+vr/4YwI2FV0xsCZHEDqwHfZeSTWr0V5bR9iINCKu6h4MgqrXH+COT7YQv3kvkRbT4Yav
dw/Cu9OJvX8KkVf3xLO5kKQfq+t1vpegSAghTi8JjIQ4gqZpPP7s03zw+UIMBTArmAwritmE/0AF
tp41y/S15TmEjUjD3utwZWtFUQg9vy3VFpW9P+8n+g/nHW74muVA+3AzCeekYHtju3S+F0KIM5QE
RkJwuOnrgoUf4ld0VLOKKcyKGm7F8Aaw90zAm3O4a703t5SIK7s3+F72PsloX2zH+cJaQm12YkIi
awKhte8QFhYmo0JCCHEGk8BItHq11azz/EX4dT+qzUzkdb2x90oKTpF5thTh/mk/gWovqt2CajUd
c2m+GmYhNTSJz+Z/RERExCm+IyGEECdK6hiJVs0wDGbOnUVhfzveXWUoqkLktb0J6Z0cDHwURcHe
K4nI6/tQ/n4WiqKgewP1Gsge+Z52t8rn/10oQZEQQrQwMmIkWp0jm8D6zeDYs59AoKYGkWo2YzvU
7uPX7L2TqPwkm+pNBVg7xeLZUlQnx6iWb0sx11/5e8kfEkKIFkgCI9Gq1E6bFfa3420D3rxS1PhQ
/PsriDGbiAkYxMz+jvKATlXXOPQxXYKNXxVFwRQXSvkn2SgBg+p1ezFu6IO9T/LhukRbikn4wcWU
efef5jsVQghxIiQwEq1K7bSZa00eoZd2JDJgYN9YQIzdihmFy86J4b7zUgm3mMjYU8rkV3/Ad/cg
VLsFwzDQXT5Cz2uLN68U3R+get0+Kj/dSlhkBLEhEbLaTAghWjgJjESrYRgGmd+swtsGQoZ0ICwz
lzk92zH6+gHBEZ/MPaXctCSL+WP7kJ4ah2EYTMrYCeN64t5ciO72ETaiM57ZDsJHd8W1PIdOye0l
yVoIIc4SEhiJs5qmafxrzov8uHoFelUlSkUl5l0Git3EnAs6M6bD4fYdiqIw8lAw9PKGPUwb1In0
1DimLfmFkk0FVH66lbh7L8a704le7cdYtpsJY37PtMlTZYRICCHOEhIYibOWw+HgpqvH8nS/ZJ4c
3j44KvRlvpMH1mzn4pSoBo8bmRrH3I17gZpgKbzaT+4n2SQ8eCnenFKqFm4l++ufZYRICCHOQhIY
ibOSpmlcOy6dF/q3qTcqNKZjPAYwd+Nepg3qVO9YRVEINavB5fgVJgUVE2Wv/Ygp2s74cddJUCSE
EGcpqWMkziqapvHwE4/Sd/D5mAwvo1PjGtxvTIc4vi842OBrhmHg8gVQFIWlu52U+vzETr6EyJFd
6KDHMm3y1JN5C0IIIU4jGTESZw1N07hq4rXkFe9DVw2iQyzHrk59aGrt1/ss3+3kojZRLNlVzKSv
c7B3aoP93TwulxVnQghx1pPASJwVNE3jqhuvISc/FywmCDFTfqhoY0PBkWEYHNA8LN/tZGRqXDD/
aGm+kwfX7gDgjV0lrP1hPeHh4dLfTAghWgkJjESLZhgGmqZx5Y2/Jyc/jySTiUifQYxqUOhykZFf
QnrHhHrHLd/tZGzHeH50lPPoNzmEWk2Uh1oojwuh2ASKqtKuTRvJJRJCiFZGAiPR4miaxj9efI5P
M76gOuDFsKj4DrpoF1B5aUgXRh0aAarw+Bj36UYMIL1DfHBUaPluJ69s3Mv8sX347sBBUBSW7HGS
V+3BpKlEXtkD79YiRg26/HTfqhBCiFNMAiPRotTmEe0q3U/477oR1ysJRVHwT1nKS8O6MfqIFWiR
NgufjuvPfSu38ug3OZwTbkfH4MI20byb3pvvDhzklY17eTe9Nx8WV5D44GDcmwvRlmynY2xbpvxN
2noIIURrI6vSRIsyc+4s9lrKibiyOyG9k9HdPso/zibaZGJUAyvQIqxm3hrVGwUYkBwJKPxSXMmI
j37mx8IK5o/tw9oD5Tg1N8VPfEXgsxwmjPo9n/93oSRZCyFEKyQjRqJFyfxmFX7NhSfXifblTnRv
gGini+gw+zFXoMXYLTwysCOqWlOf6MbFm3h4QAcy9pRy75rtxHfuxHcLPpacIiGEaOVtYxLDAAAg
AElEQVRkxEi0GJWVlRQXFxModWPtGEvMXQNpYzHxr6E9qPQGggUZf80wDMo9flT18Mc952AV/d5b
x52/7MYTGcEX730iQZEQQoiWFRi5XC4ee+wx0tPTiYuLQ1VV3nnnneM61uFw8NBDDzF8+HAiIyNR
VZU1a9Y0uO+wYcNQVbXef2PHjm3O2xG/4chApza3KJASRtSEvoT0Scb0ZQ6ze7RjTMd4UsJsLNvt
bPB9vtztJCXcFvx56W4n5ee14eCNfVBMIWR+miHTZkIIIYAWNpVWUlLCU089RWpqKv369WPVqlXH
fez27duZOXMmXbp0oW/fvnz33XdH3VdRFM455xyee+65Ov84p6SkNOXyxXHQNI2Zc2eR+c0qDJsJ
xRNgxCXD8Hl9OC+KQP+qCHuvJABCdzgZPbYdAP8a0YMxH6/HAEYfUZfoy91Opq7ZQcY15wXrFD3w
fR7WtslcqfZjSsbbEhQJIYQIalGBUUpKCg6Hg8TERH7++WcGDBhw3MdecMEFOJ1OoqOjWbhw4TED
I4CoqCgmTJjQ1EsWjaBpGuNuvoHiQWFYbu8eDG4WbclCW7yF6GmXon6dH9weZVKDeUVtwu1kXHMe
d361lenf5BBpM1Pm9mEYBraQEO79uYgqXeH8Sy9j+Qvvy7SZEEKIBrWowMhisZCYmHhCx4aFhTX6
mEAggNvtPqFjReM98+IMigaGYut1+M9YURQsPRMwMi2oqop+KJdIUZR6la3bhNv59Or+QM2f3aiP
N2BPSeX1BR8SFhYm1auFEEL8phaVY3Qq7dixg7CwMCIiImjTpg3Tp0/H7/ef7ss6a1VWVvL+4o+x
9qof+CqKgqEbGIaBtXMsni1FAFR1jSNjT2mD77dsTym2Q0GRtPQQQghxvFrUiNGpkpaWxvDhw+nT
pw8ul4uPPvqIp59+mp07d7JgwYLTfXlnjSPziUqrKwjYlKMGMNa0ONxZhYSPTKPstXVggGV0GpP/
uQ7DMEj/VV7Ry/sCvPn+x5I/JIQQolEkMGrAG2+8Uefnm266iTvuuIM333yT+++/n4EDB56mKzt7
aJrG7266jpILw7H8pRvhqor7xa+P2vQ1bERnSp5ZTeT1vYm+fQCuzFy0zBwMxeCOtTuIWavQuU0y
XtXM+ZdexpsvTJagSAghRKNJYHScHnjgAd544w0yMzMlMGoGTzz7NAcpI2bJAaK+zKHcHyC0tIrq
DQcIPa9tvf29OaWoMXY8O0qoXLQFxWrG8PjRvX6S07rw7r/+TVJSkkyZCSGEaBIJjI7TOeecA0Bp
acM5LQALFiyoN9XWqVMn5syZQ2Rk5FELELY2lZWVrF60kFcv7croC2ODU2AZ+U7u/TCbahTs/dsE
t3uyi3CtyAUDoq/rA9TUONJ1nfB/57F+zQ+n+Y7OHBaLhdjY2NN9GS2OPLfGk2d2YuS5NU7tL7uT
Jk0iLy+vzmsTJkw4KavHJTA6Trm5uQAkJCQcdZ9j/SFVVFTg8/lOyrW1FLXTZC889QQvDe7CmCN6
mymKQnrHeF5S4K+r83Cu2YVqNaF7A1g7xxJ7x0AO/t/PwfdQFAWTyYTXFMDpdMpI0SGxsbHHDN5F
w+S5NZ48sxMjz61xLBYLCQkJzJkz55Sd86wMjBwOB+Xl5aSlpWEymRp17P9v797Doqr2PoB/92YY
GEZuAgpKXNTKSg0zzQuSKYJ0UeqUZqWZ11PnBKaWpJ06XupUmlm+nbfU9Dj55ht5y5OWyvFV8JKK
t4wSryAqGIgYw3WYWe8fwJZxZlBwZBj5fp5nnkf3Wmv2mt+znvy19lprFxcXw83NDWq12uz63Llz
IUkSYmNj7dnV217dBdZGVwkuBgGv/ELMju9qtX5cqB98M85B/Uak2XojIQRMFVVmCZAQAi6V1tck
ERERNYbTJUafffYZioqKcP78eQDAhg0bkJOTAwBISEiAp6cnkpKSoNPpkJWVhZCQEKVtbXKTkZEB
IQR0Oh3S0tIAADNnzgQAHDx4UJn56dSpE8rKyrB27Vrs2bMHkyZNQkRERBP/YudVu8D6Uh9P5cBG
g8kEv3m7bLaRJAleKhn6axZhlx/Ng7qTn1ldw6/5eCzykVvWfyIiankk4WQLX8LDw3H27FmrZWfO
nEFISAheeuklfPXVVzh9+rRZYiTLstXZBUmSlDOKsrKykJSUhP379yMvLw+yLOOee+7BxIkTMX78
+Eb3Oz8/v8U8SsvLy8OLr4xH5tlTgEYFUWaA7OMOr2e7Qb0nB632n0cnLw1KDUb0DvJB4gMh8FRX
5+hCCESsP4jSmQ8ra4zKf7mI4jW/wG96FFw0agghYPg1HwF7S7D+q2TuPquD0/SNw7g1HGPWOIxb
w9Q+SmtKTpcYOauWkhjl5eUh8rFBcH+6M9zva6skN2WHLkDzv0exaEBnxIZcXXCdcrYQiw6dxf88
2hWeahU2ZRXglePnUaSvhIufB0z6Snga1YgdOBg/HdmPKldAZQAG9RuA1//6GpOia/A/uo3DuDUc
Y9Y4jFvDOCIxcrpHadS8jfrzWLg/3RmaLoHKNUmS4HH2Cj59+G6LBdeDQ/0ghMCnB7PRPdAbU46d
h8srvYAP0yBdKsdzj/8JM6a8oSRAts45IiIisgcmRmQ3er0ex3NOIWDsIIsyj+OXEPvo/VbbDQ71
Q9Luk1jhp4bpLw+h8ngB7gwOx46NKRazbEyKiIjoVuK70shuPvhkPiQPV4vkRQgBbxfr67uA6mTH
088DpqGdUXHiEqRN2Vi/8lt4eno2RbeJiIgUnDGim2YymSDLMrbtSYWp1GDxuEuSJFwxmmw+BhNC
4HJhGQo/2glPoxu2rNnItUNEROQQTIyoUXJzc5Hw8njkZ52Gt9oFVyqMKJZNMBlNKM+4aLbGCABK
7/LDj9mXEBfmb/FdP2RdgsHNHaMffZoLqomIyKGYGNENqz2s8cf/S4Ex5zwWPXw3Yh960PyVHjuP
4+L//gyMANy71NmVdoc3Er45ik8EEBfmp1zfknMZn10wIWXbLiZERETkcEyMyKa6j770ej3iRw1H
/kNawHAFnw+4G0NCr87+KK/0APDXc/ko2nYKxesyIGlcq88x8naH6fG78cqB8/A5kg0fkwwPHz88
+PBALP5wCpMiIiJqFpgYkRm9Xo/PF36EA6nboXURKDFK6BE1AJeMBuQ/pIX6vjZw//oIYkP8rLaP
C/NDqz0nYXi2K9y7tFWSq/KjeShd8xt8A9tiQMwgTPvLZC6uJiKiZoeJESn0ej0mjnwaicEqzH4k
WHnctTUnHYk7T8Dlrf4wmUzwdrPceVZLkiR4u6pQ8O9TKPzuGCQ3FdyhwrDox/DmjhVMhoiIqFlj
YkSKzxd+hMRgFWJCWyvXJElCTIgvPurTAZM3nwTi78WVCsudZ7WEENAbBX7bcxi1h6rz7CEiInIW
PMeIFAdSt2NwiK/VsrgwP2iPXwIA/OGvwY9nL1mt90P2JQSEdwRQnRAxKSIiImfCxIgAVM/0aF1s
v25DkiR4mqrryS/1QELaCWzKKlBmhYQQ2JRVgNf3nMGi/17alF0nIiKyGz5KIwDViU+JUar/EMai
MpQdOA9Nj/YwTu+PV5YfgNfuk/BWq6CvEggI74i1m/8PgYGBVu5ARETU/DExIkWPqAHYkr0PsWGW
O85+yL6Ekk6+uPLNz8B/ctDK3weuWn8MjBmAqa8kwsvLywE9JiIisi8mRi3YtbNDE16djMH9euJj
CMSFXj2E8YfsS5hy7DykV3ohcOlvSN+yk2+5JyKi2xIToxam9vTqlF3bYXSV4GIQiO43AE8//iTe
eust5GlVmGwow8xNR+ClkvFHlQkld/nB9JeH4OLuCpdWbkyKiIjotsXEqAWpe3q168TOkCQJVUJg
XcbPWP6sDsaiMrj4e0AMuwclkgR9nQRIRvUMk0slkyIiIrp9cVdaCzJv0YLqpOjeACW5kSQJbl3a
wuu5bpA0KphKKlF+9KJSVpfh13xERz7S5P0mIiJqKpwxaiH0ej2SN6xFuUZA3nEapkoj1B1bo9Xg
TpDdXeHeNRByKzcY80tQmpwBWZagvq+Nss7I8Gs+AvaW4PWvXnP0TyEiIrplOGN0m9Pr9Xhz1lvo
FtUTLk90hN/kfmj9Sm/4JfaFukNrXP5iH0zlhurDGDUqjB07Fj9tTcWT0v1wX5IJl+XH4L4kE/Ho
hvVfJfNlr0REdFuTRO0JfXRL5efnw2AwNOk9a9cUZcmFcH+wPTRdLM8XKv/lIirPFMLz8c7AoiNI
37rLrNyRC61bt26NwsJCh9zbWTFmjcO4NRxj1jiMW8O4uroiICCgSe/JGaPbWO2aImNROdzva2u1
jtt9bVB5qhCGX/Px2KAhFuVcaE1ERC0JE6PbWMqu7VDd4w9Z7VLvqz4kSYL/T3q8/leuHyIiopaN
idFt6tSpU/i9uBCyLMNUaYStJ6ZCCGgqZHy38luuHyIiohaPidFtoG7SYzQasXjxYsTExKCiqARC
CKg7tkbFr79bbWv4NR9PPxbPpIiIiAjcru+09Ho9Pl/4EQ6kbofWRaDEKOHO+x/AoWPHcfDgQQCA
JKlQfvQiWg3uhMtf7ANE9Zqi2i34lb/8jjb7S7kFn4iIqAYTIyek1+sxceTTSAxWYfYjwUqi82PW
r9h47JhST5RV4cr/HILP893hM7EnSlJOQZ9ysnpdUbEBIx57CjO+eoOzRURERDWYGDmhzxd+hMRg
FWJCWyvXJElCXHgAPn0EmLA1A1cqjQCA54cOh4vJDTu+2gm1qwSVhx8G9n0Yb7w6hQkRERHRNZgY
OaEDqdsx+5Fgq2Vx4f7w06jhE9QGCxYsQO/evZUyvvyViIiofkyMnIwQAm6iqt7t90G+Xli+ZSu0
Wq1FGREREdnGXWlOxGg0YsmSJTh1Pq/e7fcuWm+LpIiIiIiujzNGTuL06dOYMmUK9u/fD2+1C37M
KkBcuOUx6VtyLuPBhx9xQA+JiIicH2eMmrnac4kGDx6M/fv3AwCuVBrx6rZj2HQ6X5k5EkJg89lC
fJpjxKTEKY7sMhERkdPijFEzVneW6Fp5pZVYeAH4r6wcaF2AUpOEHlGPYPGH3G1GRETUWEyMmiGj
0Ygvv/wSH3zwAcrLyy3KQ0NDzXaccbcZERGRfTAxambqmyUCgHHjxiEpKQkeHh7KNSZFRERE9sHE
qBkQQsBkMjVoloiIiIjsj4mRg+j1esxbtAApu7ajQjbiSt4llBUWQ5RXWdQdO3Ys3nzzTbNZIiIi
IrI/p9qVVlJSgnfeeQdxcXHw8/ODLMvQ6XQ31DYvLw9JSUkYOHAgvLy8IMsyUlNTbdbfvXs3IiMj
odVqERQUhMTERJSUlNjld+j1esSPGo710lFUTOwMaUIXeL8VBZ+XHoTs7abUCw0NxerVqzFnzhwm
RURERE3AqRKjgoICzJkzB8eOHUNERESD1tZkZmZi3rx5uHDhArp161Zv28OHDyM6Ohrl5eX4+OOP
MWHCBCxevBjDhw+3x8/AvEULkP+QFuqaN90D1euENN0C4f18BCSNCmPHjkVKSgr69Oljl3sSERHR
9TnVo7R27dohLy8Pbdq0wYEDB9CzZ88bbvvggw/i0qVL8PHxwZo1a7Bnzx6bdWfMmIHWrVtjx44d
ygnSoaGhmDhxIlJSUhAdHd3o32A0GrFu8/dQT3nQarl710AEdrgDc+bMafQ9iIiIqHGcasbI1dUV
bdq0aVRbrVYLHx+f69YrLi5GSkoKRo0aZfZajdGjR0Or1SI5OblR9weqd5w99dRTuFJRUu+7zlSt
3Gy+8oOIiIhuHadKjJrC0aNHUVVVhR49ephdd3V1RUREBA4dOtSo7127di0GDx6M9PR0iNLK+t91
VslziYiIiByBidE1cnNzq99QHxRkURYUFIQLFy406nu/+OILZRu+qaQS5UcvWq1n+DUf0ZF81xkR
EZEjONUao6ZQVlYGAHBzc7Moc3d3V8pvhiirQmlyBmRZUhZgCyFg+DUfAXtL8PpXr930PYiIiKjh
mBhdQ6PRAAAqKiosysrLy5XyhurcubPy5/j4eIwYMQLJ363BvrQDMKoAlyqg1/2PYfTU57k1v4Yk
SXB1dXV0N5wKY9Y4jFvDMWaNw7g1jErV9GkKE6NrBAUFQQiB3Nxci7Lc3Fy0a9fOZttVq1Zh1apV
ZteioqIwbdo0fP311xb1//bGjJvv8G0uICDA0V1wOoxZ4zBuDceYNQ7j1nDz58+3OHtw5MiRGDly
pN3vxTVG1+jSpQtUKhXS09PNrhsMBhw+fBgRERE2244cORIbNmww+0ybNg3z58+/1d2+LU2ePNnR
XXA6jFnjMG4Nx5g1DuPWcPPnz8e0adMs/n29FUkRcJsmRnl5ecjMzITRaGxwWy8vL0RHR2PlypVm
J13rdDqUlJQ06pDH+k7YJttOnz7t6C44HcascRi3hmPMGodxa7im/jfU6R6lffbZZygqKsL58+cB
ABs2bEBOTg4AICEhAZ6enkhKSoJOp0NWVhZCQkKUtnPnzoUkScjIyIAQAjqdDmlpaQCAmTNnKvXe
ffdd9OvXD1FRUZg4cSJycnKwYMECxMbGYvDgwU34a4mIiKgpOV1iNH/+fJw9exZA9SK2devWYd26
dQCAUaNGwdPTE5IkQZYtJ8Pefvtts1dwLF++XPlz3cSoe/fuSElJwfTp0zFlyhR4enpiwoQJeO+9
9271zyMiIiIHcrrE6MyZM9ets3z5ciXpqctkMt3wffr27avMJhEREVHL4PL3v//9747uREvQtWtX
R3fBKTFuDceYNQ7j1nCMWeMwbg3XlDGTBF/KRURERATgNt2VRkRERNQYTIyIiIiIajAxIiIiIqrB
xIiIiIioBhOj6ygpKcE777yDuLg4+Pn5QZZl6HS6G2qbl5eHpKQkDBw4EF5eXpBlud4TPHfv3o3I
yEhotVoEBQUhMTHR7PRtZ9JUcRswYABkWbb4PProo/b8OU3iZmK2bds2jBs3DnfffTe0Wi06duyI
CRMmIC8vz2p9jrVqDYkbx1q1tLQ0DBs2DCEhIdBoNAgKCkJcXBx2795ttT7HWrWGxI1jzboJEyZA
lmUMHTrUarm9xprTnWPU1AoKCjBnzhyEhoYiIiIC27dvv+G2mZmZmDdvHu68805069YNe/bssVn3
8OHDiI6Oxr333ouPP/4Y586dw7x583Dy5Els3LjRDr+kaTVV3CRJwh133IH3338fdTdY1vey3+bq
ZmI2ffp0XL58Gc888wzuvPNOnD59GosWLcLGjRtx+PBhtGnTRqnLsXZVQ+LGsVbt+PHjcHFxwcsv
v4zAwEBcvnwZK1euRFRUFDZt2oSYmBilLsfaVQ2JG8eapfT0dKxYsQIajcZquV3HmqB6VVZWiosX
LwohhEhPTxeSJIkVK1bcUFu9Xi8uX74shBBi9erVQpZlsWPHDqt14+LiRPv27YVer1euLV26VMiy
LLZu3XqTv6LpNVXcBgwYILp27WqfTjvYzcQsLS3N4lpqaqqQJEn87W9/M7vOsXZVQ+LGsWZbaWmp
CAwMFHFxcWbXOdbqZytuHGuW+vbtK8aPHy/CwsLEE088YVFuz7HGR2nX4erqavZ/jQ2h1Wrh4+Nz
3XrFxcVISUnBqFGjoNVqleujR4+GVqtFcnJyo+7vSE0Rt7qMRqPTTs/XupmYRUZGWlzr378/Wrdu
jd9++025xrFm7kbjVldLH2vWaDQaBAQEoKioSLnGsXZ91uJWF8daNZ1Oh4yMDLz77rtWy+091pgY
NQNHjx5FVVUVevToYXbd1dUVEREROHTokIN65hyOHz8OrVYLT09PBAUF4e2330ZVVZWju+VwJSUl
0Ov18Pf3V65xrF2ftbjV4li7qri4GJcuXUJmZiZmzJiBjIwMREdHK+Uca9ZdL261ONaq6fV6JCUl
YebMmTYTLHuPNa4xagZyc3MhSRKCgoIsyoKCgrBz504H9Mo5dOrUCQMHDkTXrl1RUlKC1atXY+7c
uThx4gRWrVrl6O451McffwyDwYBnn31Wucaxdn3W4gZwrF1r+PDh2Lx5MwBArVZj0qRJeOutt5Ry
jjXrrhc3gGOtrlmzZsHDwwOTJ0+2WcfeY42JUTNQVlYGAHBzc7Moc3d3V8rJ0pIlS8z+/vzzz2PS
pElYunQpXnvtNfTq1ctBPXOs1NRUzJ49GyNGjMDDDz+sXOdYq5+tuAEca9f64IMPMG3aNOTk5GDF
ihWorKyEwWCAWq0GwLFmy/XiBnCs1Tp+/Dg+/fRTfPPNN3B1dbVZz95jjY/SmoHaVfYVFRUWZeXl
5TZX4ZN1U6dOhRACKSkpju6KQxw7dgxPPfUUunXrZvEfWI412+qLmy0teax169YNgwYNwpgxY7Bl
yxbs3bsXL730klLOsWbd9eJmS0sca4mJiYiMjER8fHy99ew91pgYNQNBQUEQQiA3N9eiLDc31ym3
aDrSHXfcAQAoLCx0cE+aXk5ODmJiYuDr64uNGzeaLUQEONZsuV7cbGnJY60uV1dXDB06FGvXrlX+
ceJYuz5rcbOlpY21bdu2YfPmzUhISEB2djays7ORlZWFqqoqlJWVITs7G8XFxQDsP9aYGDUDXbp0
gUqlQnp6utl1g8GAw4cPIyIiwkE9c06nTp0CAAQEBDi4J02rsLAQMTExqKqqwubNm9G2bVuLOhxr
lm4kbra01LFmTWlpKYQQyj9WHGs35tq42dLSxlpOTg4kScKTTz6J8PBwhIeHo0OHDrhw4QL+85//
oEOHDli+fDkA+481JkZ2kpeXh8zMTBiNxga39fLyQnR0NFauXGm2NVOn06GkpATDhw+3Z1eblZuJ
W3FxMSorKy2uz507F5IkITY21h5dbHasxay0tBRxcXHIzc3Fpk2b0KFDB6ttOdYaFzeOtasxy8/P
t6hXVFSENWvWICQkRNnNx7HWuLhxrFXHbNCgQVi3bh3Wr19v9vH390fPnj2xfv16PPHEEwDsP9a4
+PoGfPbZZygqKsL58+cBABs2bEBOTg4AICEhAZ6enkhKSoJOp0NWVhZCQkKUtrWDOSMjA0II6HQ6
pKWlAQBmzpyp1Hv33XfRr18/REVFYeLEicjJycGCBQsQGxuLwYMHN+GvtZ9bHbeDBw9i5MiRGDly
JDp16oSysjKsXbsWe/bswaRJk5zy/0gbG7PnnnsO+/fvx7hx45CRkYGMjAzlO1u1aoVhw4Ypf+dY
a3jcONauxiwuLg7BwcF46KGH0KZNG2RnZ+Nf//oXcnNzLc6L4VhreNw41qpjFhwcjODgYIvvSkxM
RNu2bZWkqJZdx1qDj59sgcLCwoQsy1Y/2dnZQgghxowZI1xcXJS/15IkyWo7FxcXi/vs2rVLREZG
Cg8PD9G2bVuRkJBgdoqns7nVcTtz5owYMWKE6NChg/Dw8BCtWrUSPXv2FEuWLGnS32lPjY1Zfe3C
w8Mt7sOxdv12dePGsXY1Zv/85z9FVFSUaNOmjVCr1aJt27YiPj5e7Nq1y+p9ONaq3WjcONay6/2u
8PBwMXToUKtl9hprkhB1XsRCRERE1IJxjRERERFRDSZGRERERDWYGBERERHVYGJEREREVIOJERER
EVENJkZERERENZgYEREREdVgYkRERERUg4kRERERUQ0mRkREREQ1mBgRETUTYWFhkGUZOp3O0V0h
arGYGBGRQxUVFUGj0UCWZciyjFOnTt2S+3zyySeYNWsWfv7551vy/fYgSRIkSXJ0N4haNCZGRORQ
K1euREVFhZIULFu27JbcZ+HChZg9ezYOHz58S76fiG4PTIyIyKG+/PJLSJKEV199FUIIrFixAkII
R3eLiFooJkZE5DCHDh3CkSNH4Ovriw8//BDh4eHIzc3Fpk2bHN01ImqhmBgRkcMsXboUADBixAio
1WqMHj0aQogbepxWWFiI2bNno3fv3vDz84NGo0F4eDhiY2Px+eefo7i4GAAwa9YsyLKM7OxsCCEw
ZswYZT1T7afWjh07IMsyXFxc6r13bbvU1FSLsr1792L69OmIiopCWFgYNBoNfH190adPH3z44Yco
KSlpSIiIqImpHN0BImqZKioqsGrVKkiShFGjRgEARo8ejdmzZ+P7779Hfn4+AgICrLbdsmULRo4c
icuXL0OSJKhUKnh7eyM3Nxdnz55FSkoK2rVrh6FDh6JVq1YIDAxEfn4+TCYTvLy8oNFolO9q7GJn
W+369OmjlHl4eECr1eLy5cvYt28f9u7dC51Oh+3bt8Pf379R9yWiW4szRkTkEKtXr0ZRURE6deqE
3r17AwDCw8MRGRmJqqoqm1vWDx06hPj4eBQVFaFr16744YcfUFpait9//x1lZWVIT0/H1KlT4enp
CQCYOnUqLly4gODgYADVu9MuXLigfM6fP2/X3zV06FAkJycjNzcXxcXFKCgoQGlpKdauXYvOnTvj
t99+w5///Ge73pOI7IczRkTkELWLrl988UWz66NHj0ZaWhqWLVuGqVOnWrRLSEhAeXk57rrrLuzc
uVNJgIDqWZzu3buje/fut7z/tqxfv97impubG4YNG4ZevXqhQ4cOWL9+Pc6dO6cka0TUfHDGiIia
3JkzZ7Bjxw5IkoQXXnjBrGz48OHQaDQ4duwYfvrpJ7OykydPYteuXZAkCf/4xz/MkiJnEBQUhPvv
vx9CCOzevdvR3SEiK5gYEVGTW7ZsGYQQiIqKQkhIiFmZp6cn4uPjAVTPKtVVm0y4uLhgyJAhTdPZ
BhJC4Ouvv8awYcMQGhoKDw8Ps4Xe+/btAwCcO3fOwT0lImuYGBFRk6o9q6juoutrvfjiixBCIDk5
GaWlpcr1vLw8AIC/v7/ZAurmoqysDIMGDcILL7yA77//HufOnYMQAn5+fggMDERgYCDUajUAcHca
UTPFxIiImtTmzZuVhGHcuHEWW+dlWVZmg/R6PZKTk5W2zf11GXPnzsX27dvh4Wqltb4AAAOESURB
VOGBhQsXIjs7G2VlZcjPz1cWe/fq1QsAeIglUTPFxIiImlTt2UW1rwCp7wOYP04LDAwEABQUFKCs
rMzufVOpru5HqaystFrnjz/+sNn+m2++gSRJeOedd/Dqq69aXVxdO+tFRM0TEyMiajIFBQX497//
DUmSsGbNGhQXF9v87Nu3T1mkfOLECQBA3759AQBGoxE//PBDg+5de5BjfTM1vr6+yp9zcnKs1tm7
d6/N9rVtIiIirJZnZ2fj5MmT1+0rETkOEyMiajI6nQ4GgwHe3t54/PHH4eHhYfPTo0cPdO7cGcDV
WaOOHTsiKioKQgjMmDEDer3+hu/t5eUFACgqKrJZ56677lLWLq1Zs8aiXAiB9957z2Z7b29vAMCR
I0eslk+fPv2G+0tEjsHEiIiazLJlyyBJEoYNG2b22MqWZ555BkII6HQ6mEwmANUHNLq7u+P48ePo
27cvNm/ejKqqKgCAyWTC/v378fLLL2Pbtm1m39WlSxcIIZSDJa1RqVT405/+pCRA3377LQwGAwAg
MzMT8fHx+OWXX2z2d8iQIRBCYO7cuVi3bh2MRiOA6uMJnnvuOaxevRqtW7e+fqCIyHEEEVET2LNn
j5AkSciyLDZu3HhDbY4ePaq02bBhg3J969atwtfXV8iyLCRJEmq1Wvj7+wu1Wq3U/+6778y+KzU1
VciyLGRZFiqVSrRr106EhYWJsLAws3rnzp0TwcHBZt/t7e0tJEkSPj4+IjU1VbnHjh07zNpmZ2eL
oKAgpa2rq6vw8fFR6r///vtiwIABQpIkMWvWLIvfGxYWJmRZFitWrLjRsBKRnXHGiIiaRO1skY+P
D2JiYm6oTZcuXXDPPfcAMF+EHR0djRMnTmDmzJl44IEH4OHhgdLSUgQHB2PIkCFYvHgxBg4caPZd
/fv3x6ZNmxAdHQ1fX1/8/vvvOHv2rMVaovbt22Pv3r0YP348goODIUkSPD09MWbMGBw8eBD9+/cH
YH2HXEhICNLT0zFu3Di0b98ekiRBo9Fg6NCh2LJli/Iorb7ddc195x3R7U4SgntGiYiIiACuMSIi
IiJSMDEiIiIiqsHEiIiIiKgGEyMiIiKiGkyMiIiIiGowMSIiIiKqwcSIiIiIqAYTIyIiIqIaTIyI
iIiIajAxIiIiIqrBxIiIiIioBhMjIiIiohpMjIiIiIhqMDEiIiIiqvH/gLIpXLdyr2IAAAAASUVO
RK5CYII=
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Looks good.</p>
<p>The <code>MKSHomogenizationModel</code> can be used to predict effective properties and processing-structure evolutions.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h3 id="Predict-Local-Properties">Predict Local Properties<a class="anchor-link" href="#Predict-Local-Properties">&#182;</a></h3>
</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>In this section of the intro, we are going to predict the local strain field in a microstructure using <code>MKSLocalizationModel</code>, but we could have predicted another local property.</p>
<p>First we need some data, so let's make some.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[15]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks.datasets</span> <span class="kn">import</span> <span class="n">make_elastic_FE_strain_delta</span>


<span class="n">X_delta</span><span class="p">,</span> <span class="n">y_delta</span> <span class="o">=</span> <span class="n">make_elastic_FE_strain_delta</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Once again, <code>X_delta</code> is our microstructures and <code>y_delta</code> is our local strain fields. We need to discretize the microstructure again, so we will also use the same basis function.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[16]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks</span> <span class="kn">import</span> <span class="n">MKSLocalizationModel</span>


<span class="n">p_basis</span> <span class="o">=</span> <span class="n">PrimitiveBasis</span><span class="p">(</span><span class="n">n_states</span><span class="o">=</span><span class="mi">2</span><span class="p">)</span>
<span class="n">localize_model</span> <span class="o">=</span> <span class="n">MKSLocalizationModel</span><span class="p">(</span><span class="n">basis</span><span class="o">=</span><span class="n">p_basis</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Let's use the data to fit our <code>MKSLocalizationModel</code>.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[17]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">localize_model</span><span class="o">.</span><span class="n">fit</span><span class="p">(</span><span class="n">X_delta</span><span class="p">,</span> <span class="n">y_delta</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Now that we have fit our model, we will create a random microstructure and compute its local strain field, using finite element analysis. We will then try and reproduce the same strain field with our model.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[18]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks.datasets</span> <span class="kn">import</span> <span class="n">make_elastic_FE_strain_random</span>


<span class="n">X_test</span><span class="p">,</span> <span class="n">y_test</span> <span class="o">=</span> <span class="n">make_elastic_FE_strain_random</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Let's look at the microstructure and its local strain field.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[19]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks.tools</span> <span class="kn">import</span> <span class="n">draw_microstructure_strain</span>


<span class="n">draw_microstructure_strain</span><span class="p">(</span><span class="n">X_test</span><span class="p">[</span><span class="mi">0</span><span class="p">],</span> <span class="n">y_test</span><span class="p">[</span><span class="mi">0</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA4oAAAGgCAYAAADsJZmBAAAABHNCSVQICAgIfAhkiAAAAAlwSFlz
AAAPYQAAD2EBqD+naQAAIABJREFUeJzs3Xl8VNX9//H3nQSyEIFgQEISlgARFBGoRL4sFXDHFX+B
Cm2IiGDt16IUWfQrCipFxCUuwFeKZUcQgkK1tkJZxBqKkoCIQAAFEgiLimEJkISc3x+Y+WbMPmeQ
SXw9fcxDuPecz/3cOxPgM+ecex1jjBEAAAAAAD9yXewEAAAAAAD+hUIRAAAAAOCBQhEAAAAA4IFC
EQAAAADggUIRAAAAAOCBQhEAAAAA4IFCEQAAAADggUIRAAAAAOCBQhEAAAAA4IFCEQAAAADggUIR
AAAAAOCBQhEAAAAA4IFCEQAAAADggUKxBpozZ45cLpcCAgK0f//+i50OAAAAgGqGQvEiWbdunVwu
l/tVt25dnTlzpsJ+Z86cUb169Tz6fvzxxz9DxgAAAAB+KSgULzLHceQ4jk6dOqX33nuvwvbLly/X
iRMn3P0cxyk37i/ZhAkT3COrNU3xLxr4ogAAAAC+RqHoB4KDgyVJ8+bNq7BtUZvg4GAZY0ptk5SU
pHPnzqmgoEBNmzb1XaLwO7/0LwMAAABwYVAo+oE777xTxhitXLlSR44cKbPd0aNH9dFHH8lxHN11
110/Y4YAAAAAfkkoFP3ATTfdpMaNG+vcuXN6++23y2y3cOFCFRQUqHHjxrrxxht/xgzhb8oaTQYA
AAB8gULRDwQEBGjAgAEyxpQ7/XTevHlyHEcDBw6Uy1X2W1fZu54aY7Ro0SIlJCSoWbNmCg0NVWho
qC6//HL97ne/U0pKis6dO+fR56fr/o4fP65nn31WnTp1Unh4uFwul+bOnVviWF9++aUefPBBxcXF
qU6dOqpbt67atWunP/3pT9q3b1+516ewsFCzZ8/WLbfcosjISAUFBal+/fqKi4vTDTfcoEmTJmn7
9u0lzn/ChAnu8yx+85+iV/Fr07NnT7lcLvXu3VuStGvXLj388MPufIu3r+z13bdvn/tYpV2T4j78
8EMlJiaqZcuWCgsLU0hIiGJjY5WQkKA5c+bo9OnTHjGL8jTGuHMv/ip+vMGDB8vlcik2NrbcHCo6
r+bNm8vlcun++++XJG3atEn33XefYmNjFRwcXOZnMj09Xb///e/Vpk0bXXLJJQoLC1ObNm30hz/8
Qbt27So3JwDw1saNGzV69Gh17dpVl112mYKDg9WmTRs9/PDD2rx588VODwD8XuDFTgDnJSYm6pVX
XlF6erq2b9+utm3beuzfvn270tLS5DiOEhMTlZ6ebnW8vXv3qm/fvtqyZYskz7Vuu3fv1q5du7Rw
4UKtXbtWv/71r0uNsXv3bt14443at2+fu39pa+YmTZqkcePGqbCw0GP/9u3b9dVXX2n69OmaMWOG
EhMTS/Q9deqUbr31Vn3yyScefU+cOKETJ05oz549Wr16tdLT0/XOO++49xe1LRp5+2lepf2+aNuK
FSs0cOBAd3FW1nlVVnl9v//+e/Xv31+rV68u0Xbfvn3au3evli1bJsdxNGjQII82ZZ3bhVL8Gr35
5pv64x//6PFFwk8LRWOMRo4cqVdffVXGGI88d+3apYyMDM2cOVNTp07V0KFDf5ZzAFDzpaWl6cEH
H9SmTZvkOI5CQ0MVERGhOnXqaM+ePcrIyNC0adP06quv6o9//OPFThcA/BaFop/o0KGDrrzySn31
1VeaN2+e/vznP3vsLxohuuqqq9S+fXurQvHIkSPq1q2bsrOz5TiOrr/+eg0aNEht2rSR4zj65ptv
tHr1ai1ZsqTcOAkJCcrOztYjjzyiO+64Q+Hh4dq1a5eaNWvmbjNt2jT9z//8jxzHUaNGjTR27Fh1
7dpV586d06pVqzRlyhSdPHlSgwcPVsOGDXXLLbd4HOPpp592F4l33HGHBg4cqKZNmyo4OFhHjhxR
enq63n//fY8ipG/fvurcubOmTp2q6dOny3EcffnllyWma0ZFRZU4p3379ul3v/udwsLCNH78eHXv
3l0BAQH67LPPFBYW5s3lLtPp06fVs2dPffnll3IcR9dcc42GDh2qdu3aKSgoSJmZmfr444+1ePFi
j5y3bt2qjRs36v7775fjOPrrX/+qzp07e8SOjo72aa7Fbdy4UfPmzVOzZs302GOP6Ve/+pUKCgq0
fv16j3YPP/yw+/r37NlTSUlJio2NVWhoqLZs2aLk5GRt27ZNv//97xUZGanbb7/9guUM4Jdh7ty5
euCBB9SrVy/NmzdP1113ncefh0ePHtXUqVP1+uuvVzibBQB+8QwuirVr1xrHcYzL5TJz5swxxhjz
wgsvGMdxTLNmzUq0b9q0qXG5XOall14yxhgze/Zsd/9169Z5tC2+b9++fSVi9e3b173/xRdfLDPH
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
33nnHS1durTMGPXq1dODDz4oY4w2bdpU7qNKCgoKdPToUY9tVTm36667zv3rst7vESNG6MCBA+XG
qYonn3xSknT8+HElJCQoJyenzLZ5eXmaNm2a8vLyfHZ8AL8c9erVU05Ojj777LMK2+7YscNjRkcR
l8ulUaNGqX379jLGaMyYMcrJydGTTz6pOnXqaPr06R43gatqewColgwuirVr1xrHcYzL5TJz5syp
cv/Zs2e7+69bt67Mffv27SvR9/DhwyYqKsq4XC7jOI65/vrrzbx588xnn31mPv/8c7N06VLzhz/8
wVx66aUlYo8fP94duzKmTZtmHMcxjuOYxo0bm+TkZLNx40bz6aefmgkTJphLLrnEOI5jAgICzD/+
8Q+Pvnv37jWO45gWLVqYkSNHmnfeecf85z//MZs2bTLvv/++GTZsmAkICDCO45imTZuaU6dOefTf
vXu3O9ebb77ZfPzxx2bXrl1m9+7dZvfu3aagoMDdtmfPnsblcplevXpV6ryeeOIJd+xu3bqZ5cuX
m/T0dPOPf/zD3H///SYgIMB079693Pc4NzfXtG/f3v0+XHPNNeYvf/mL2bBhg0lLSzMrVqwwjz32
mImOji61f0xMjHEcx7Rs2dKsWLHC7Ny5031uJ06c8GjbtWtX9/tw3333mTVr1pi0tDSzePFi07t3
b+NyuTzyLe1z07x5c+NyuczgwYMrdY1GjBjhPrfIyEgzYcIE869//cts3rzZ/Pvf/zZz5swxDzzw
gAkPDzcul6vE+wcAlTVw4EATERFhXnvtNXPw4MES+/fu3WuSk5NNkyZNzJIlS8qMs3HjRhMQEGBc
Lpfp0aOHCQgIMP/85z991h4AqhMKxYvkYhaKxhjzzTffuIuUon/M//RVWuyqForGGDNp0iQTGBhY
6nFcLpcJCQkx8+fPL9Fv79695eZX1D86Otqkp6eXeuzf/OY3ZfYvfm169uxpHMepdKGYm5trunbt
WuY5XX/99earr76q8D3+7rvv3EVqee9Daf2nT59eZr+ftt+xY4dp3LhxmfmOGTOmws9N8+bNjeM4
lS4UjTHm2WefNbVr167wPaxbt645c+ZMpeMCQHHHjh0zvXr1cv9ZExwcbFq0aGFiYmJMWFiYcRzH
hIeHm7fffrvCWI888oj7z6akpCSftweA6oKppxdR8WfI+bp/RbGbN2+uzZs3a/bs2brtttvUpEkT
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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Now let's pass that same microstructure to our <code>MKSLocalizationModel</code> and compare the predicted and computed local strain field.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[20]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">pymks.tools</span> <span class="kn">import</span> <span class="n">draw_strains_compare</span>

<span class="n">y_pred</span> <span class="o">=</span> <span class="n">localize_model</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">X_test</span><span class="p">)</span>
<span class="n">draw_strains_compare</span><span class="p">(</span><span class="n">y_test</span><span class="p">[</span><span class="mi">0</span><span class="p">],</span> <span class="n">y_pred</span><span class="p">[</span><span class="mi">0</span><span class="p">])</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA5EAAAGWCAYAAADhSAcuAAAABHNCSVQICAgIfAhkiAAAAAlwSFlz
AAAPYQAAD2EBqD+naQAAIABJREFUeJzs3XlcVOX+B/DPGUB2QVRQETQ1FU0TXLKQFPC6YGUmud1U
XLrXrMSr3VLCXCrz5s9Ibmja4tLNUq9LZqaomIJaiLnmgrkgCm6IimwC8/z+8HJkYmDOzIMyyefd
a14vmvM83/M9wziH7zzPOY8ihBAgIiIiIiIi0kBX3QkQERERERHRnweLSCIiIiIiItKMRSQRERER
ERFpxiKSiIiIiIiINGMRSURERERERJqxiCQiIiIiIiLNWEQSERERERGRZiwiiYiIiIiISDMWkURE
RERERKQZi0giIiIiIiLSjEUkERERERERacYikiq0bNky6HQ62NjY4Pz583/6/VibmnrcRERERPTn
xiLyIbZz507odDrNj+XLl1d3yn8K5r6uOp0OkyZNqu60iYjoD/74eV67dm0UFBSY7FdQUAA3NzeD
vrt27ao0/qxZsyqNeenSJbRp00Zt/+qrrxptl5eXh0WLFqFfv35o3LgxHB0d4eDgAE9PT3Tp0gVj
xozB559/jgsXLmh7EYiILMAisgZQFEXTo7K+DyrHP7Lm0Tqtr+uDeP3oHmt+zxCRdSr9rM7NzcX6
9etNtv/uu++Qk5Oj+XPe1PaLFy+ie/fuOHHiBBRFwT/+8Q/ExcWVa7d37174+fnhlVdewebNm5GZ
mYk7d+6gqKgIWVlZ2L9/P5YsWYK//e1v6NKli8njICKylG11J0APxiuvvILx48dX2qZx48YG/z9y
5EiMHDnyfqb1QPdzP2h5XQGgXr16DyAbIiKylIODAwoKCvDVV19hyJAhlbb96quv1D75+flSXxae
P38eISEhOHPmDBRFwZtvvokPPvigXLtTp06hT58+uH37NhRFQf/+/TFw4EC0bNkStWrVwrVr13Do
0CFs3boVO3bssDgfIiItWETWEJ6enmjTpk11p/HQ4etKRPRweO6557By5Ups3boVV65cgaenp9F2
V69eRXx8vFrIffvttxbv8+zZswgJCUFaWhoURUF0dDRmzpxptG1UVJQ6+rl06VIMHz68XJvQ0FBM
mjQJWVlZWLVqlcV5ERGZwumsREREVOP16tULDRo0QElJCb755psK261YsQLFxcVo0KAB/vKXv1i8
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
6Rj6HLnfq42LnXQOzk80lI5Rcr1AOkYDD0+p/udST0jn8POqBKn+eU3bACHSaVS5fmH90CG/i8X9
v/y/T6X279BS/nxwcE+KdAz3pnLvMQC4nJAqHcO+hdzroc+XPx/8fkH+vJb6y1HpGH8ZECbV375W
Lekczv8i/zu1cZfPo+RmoVwOrvLnJJdujaVjFF/Ll45Rz62uVP9zx69K57BrxWap/jeatgGeniyd
hxaczkqmcDorERERERERacbprEREREREpBKwzlE/68uo5mIRSUREREREKq4TSaawiCQiIiIionus
9JpILhRpPXhNJBEREREREWnGkUgiIiIiIlLx7qxkCotIIiIiIiJSif/9Z22sMaeaitNZiYiIiIiI
SDOORBIRERERkUoI65w6aoUp1VgciSQiIiIiIpWAUJf5sKZHVUxnXb16NXr06AEPDw+4uLigQ4cO
mDt3LoqLiy2Kt23bNoSFhaF+/fpwcnKCn58foqOjkZuba7T99evXsWzZMkyYMAGBgYFwdnaGTqdD
r169NO3v9OnTiIiIgI+PDxwcHODj44NRo0bh7NmzmnPOyMhAnTp1oNPpUKtWLc39yuJIJBERERER
qR7WG+tMnDgRsbGxsLOzQ0hICFxcXJCQkIC33noLGzduRHx8POzt7TXHi4mJweTJk6HT6RAUFAQv
Ly8kJiZi9uzZWLt2LZKSkuDh4WHQJzExEaNGjYKiKOpzZX+uzO7du9G7d2/k5+ejbdu2CAoKwtGj
R7Fs2TL897//xfbt29GlSxeTccaOHYucnBzNx2kMRyKJiIiIiOihtn79esTGxsLV1RXJycn48ccf
sXr1apw6dQrt2rVDUlISpk2bpjnewYMH8cYbb8DW1habNm3Cjh078O233+L06dMIDQ3FiRMnMG7c
uHL9vLy8MG7cOCxatAj79u3DwoULNRXH+fn5GDRoEPLz8xEVFYXDhw9jxYoVOHz4MKKiopCbm4tB
gwahsLCw0jiff/45Nm/ejFdffVXzsRrDIpKIiIiIiFRC6K32YanZs2dDURRMnToVjz/+uPq8h4cH
FixYACEEPvnkE80jdLNnzwYAjB492mAqqoODA7744gvodDqsWbMGqampBv26du2KBQsWYOzYsQgI
CNA88rlkyRJkZmaiZcuWePfddw22vfvuu2jZsiXS09OxfPnyCmOkpaVh8uTJeOqpp/CPf/xD034r
wiKSiIiIiIhUpTfWsb6HZceTkZGBlJQUAMDQoUPLbQ8MDISPjw8KCwuxadMmk/GKiorUdsbi+fr6
IjAwEACwbt06y5L+g/Xr10NRFAwZMqTcNkVRMHjwYAghsHbt2gpjjB49GkVFRfjyyy81T6GtCItI
IiIiIiJ6aB04cADA3VHHJk2aGG3TqVMng7aVSU1NRV5enkE/Y/GEEJriaVEap7L9lW33R3Fxcdix
YwdmzJiBli1bSufDG+sQEREREZHqYbuxTumdS319fSts4+PjAyGEpruclrZxd3eHs7NzhfHKtpVx
+/ZtZGVlQVGUCo+hdH9Xr15Ffn4+HB0d1W2nT5/GlClT0LlzZ7zxxhvS+QBmFpHffb8BRy6etHhn
PYb1tbgvAPzy236p/gBQfC1POsZjzf2kYygt2kjH+PXkIan+fZ4Ilc5h9byl0jFs6jhIxzhxNtV0
o0qcP3paOodBY/4qHeO/36ySjjH09TFS/R9pZPwbOnPMW/GJdIzCK/L/Vs/lWP55BQAhA/tI59Ck
gY9Uf2/H+tI53A+b4jdJnQ+CJc8HKSfkv9ktzsqXjtGq6aPSMdq+3Fo6xoHUw1L9ewR0k85h7byv
pGPY1nU03ciEMxfPyfU/LHc+AYCBEeWnm5lr3eo10jEGvRoh1d/Hq7F0DovWL5WOUXDpmnSMc9kn
pPr3GKBt+YXKNG1YcQGjxYM9H1hnEQkLl/govc6xooIPAFxcXAAAt27deuDxtO6vsn2W7q90n6VF
pBACERERKCoqwpIlS6DTVc1EVI5EEhERERGRqnRdRmtjjTlZu5iYGOzZswezZs1Cmzbyg1ilWEQS
EREREdGfxsSJE3HmzBmD54YOHWr0JjcA4OrqCgDIzc2tMObt27cBALVr1za5/6qOp3V/le2zdH9l
95mamoro6Gg8/vjjmDJlinQeZbGIJCIiIiIilbVfE/nxxx+b1a9p06YAgPT09ArbpKenQ1EUta2W
eDdu3EBubq7RKaal+9ISzxQXFxd4eHggOzsb58+fR7t27SrcX7169dSprD/++CMKCgpw+/Zt9OzZ
06B9QUEBAKCkpATBwcEAgKlTpxosV1IZFpFERERERKQqXeLD2liakr+/PwAgKysLaWlpRu/QWroE
SEBAgMl4rVq1gpOTE/Lz85GSkoLu3bsbjacoiqZ4WgQEBGD79u1ISUlBv379jO6vtF1ZiqLg9OnT
OH264vt/7Nq1CwAwatQozflwiQ8iIiIiInpoeXt7o3PnzgCAFStWlNuelJSE9PR02NvbIywszGQ8
O/dLHhYAACAASURBVDs79OvXD0IIo/HS0tKwZ88eAMCAAQMks4caRwiBb7/9ttw2IQRWrlwJRVEw
cOBA9fnIyEiUlJQYfZROB7axsVGfGzFihOZ8WEQSEREREdE9/5vOam0Pi4ciAURFRUEIgTlz5his
pZiVlYXx48dDURS8/vrrBtcfxsXFwc/PDxEREeXiTZkyBYqiYMmSJdiyZYv6fH5+PsaMGQO9Xo/w
8PAqWZMRACIiItCoUSP1OseyoqOjkZqaCh8fHwwfPrxK9mcKp7MSEREREZFKWOkSH8LCJT4AoH//
/oiMjERsbCy6du2K0NBQODs7Y/v27bh58ya6deuGWbNmGfS5du0aTp48iYYNG5aL5+/vj48++giT
Jk1CWFgYunfvDk9PTyQmJuLSpUto3bo1Fi5caDSXrl27QlEUAHfXdQSA5ORkPPnkk2qbd955B337
3lsOy9HREatWrULv3r3xwQcfYMOGDXjsscdw9OhRHD16FK6urli9ejXs7e0tfo3MwSKSiIiIiIhU
4n//WRvZnGJiYhAYGIi4uDjs3bsXRUVFaN68OaKiojBx4kTY2pYvjRRFUQu+P4qMjES7du0wb948
JCcnIzc3F76+vhg9ejSmTJlS4ZqOycnJBjEVRUFOTg6Sk5PV50qLy7KeeuopHDp0CO+++y62bduG
tWvXon79+oiIiMC0adPwyCOPmPuSVHhsprCIJCIiIiKiGiE8PBzh4eGa2k6fPh3Tp0+vtE1ISAhC
QkLMykGv15vVvqxmzZphyZIlFvcv1aRJE6k8WEQSEREREdE94n8Pa2ONOdVQLCKJiIiIiOgeyZvY
3DfWmFMNxbuzEhERERERkWYsIomIiIiIiEgzTmclIiIiIiIVZ7OSKRyJJCIiIiIiIs3MGokUd/QQ
hSUW78zR3tHivgDg69VYqj8AdA5+VjrGikXLpWM0fbK1dIyiWwVS/VfPWyqdw0tT/yYdw6GWg3SM
z6I/lupv19hVOofVy76RjvHskAHSMZZ98KlUfxs3+UVqPTs2kY7xxJC+phuZ8PPRfVL9j/x+TDqH
rUs2SPVv/0gbRP5riHQeVU1foIc+3/LzgX0tufdZg7peUv0BoHO3PtIxvv3ia+kYLbu1k46Rn50r
1X/t/30lncOwqJelY8i+LwDgy7djpfrXalJbOoe1/1klHaPf4P7SMf4z5zOp/rb15P5uAwCvgKbS
MfwHy/9b3X/igFT/1PO/S+eQ8NUPUv3bN22DiXOGSuehiYB1DvtZYUo1FUciiYiIiIiISDNeE0lE
RERERIY46keV4EgkERERERERacaRSCIiIiIiuoe3ZyUTOBJJREREREREmrGIJCIiIiIiIs04nZWI
iIiIiO4RsM4b61hjTjUUi0giIiIiIlIJISCs8PpDa8yppuJ0ViIiIiIiItKMRSQRERERERFpxums
RERERER0D6+JJBNYRBIRERERkSEWbFQJTmclIiIiIiIizTgSSUREREREZXA+K1WORSQREREREd3D
GpJMYBFJRERERET3sIgkExRhxqqd/8mMx5WibIt39sF7sy3uCwC29Ryl+gPAnbRb0jFKbt2RjqFU
wdWoDq3rSvV3b1xPOocre89Kx6iKK3Nb/yVAqv+pA8elcxCFJdIxii/nScdo+/wTUv1Tfz76/+3d
eViVdf7/8deNIsqihmkSooC5YG5oqLnkgjqJjalRKbYwOtOYo8lYTeoPx+vrVU6NFcm4lJOj6aQm
SlSOjgtqQbmmjDbfkhRDKsstXHBjuX9/OCynA5yDHxr52vPRda7Lzn2/3/f7HA7cvPl8PvdtXEPb
nh2Nc1y+ctk4x6mzp43iu7TuZFxDaGCwUXxgvcaa3HaUcR3VbfGxD/TdlTPXHT/3lQSj49du4m0U
L0lXj541zlFwxvxzKss8Rb07zX6e39qiqXEN36Z/aZyjOt6LjkPNfgb+756DxjUUXS4wzlHwXZ5x
js4P9jaK/98dB4xrCOvRwTjH5atXjHP8cC7XKL5Dy3bGNQQ1bWYU38y7iZ5uN8a4Dnf8YuGv9Nnx
zP/KsaqifUBrbXxyyY0uA2IkEgAAAIADhiJROZpIAAAAAKVsyf25iv9FNbGmnylu8QEAAAAAcBsj
kQAAAABKMZsVLtBEAgAAACiDLhKVo4kEAAAA4Ih+DZVgTSQAAACAn4WkpCT169dP/v7+8vX1VefO
nTVnzhwVFFzfrXm2bNmiqKgoNW7cWN7e3goLC1N8fLzy8iq/Tc++ffv04IMPqmnTpqpXr55CQ0P1
1FNP6eTJkxXGFBYWasGCBbr77rvVoEED+fj4qGPHjnr++ed1+bLrW04dOHBAY8eOVWhoqOrVq6dG
jRqpS5cumjhxon74oWq3caSJBAAAAHDTi4uL08MPP6wdO3aoe/fuGjJkiHJycvTcc88pMjJSV65U
7Z6kCQkJGjx4sDZt2qT27dtr2LBhOnfunGbPnq2IiAidOVP+/ZTXrFmjHj16KDk5WcHBwRo+fLhq
1aqlefPmqWPHjsrKynKKuXr1qu69915NnDhR//rXv9S1a1cNGjRIJ0+e1B//+Ef17NlT586dq7DW
l19+WV27dtXy5cvVpEkTjRw5Unfffbfy8vK0cOFCHT9+vEqvnemsAAAAAErdhEsiU1JSlJiYKD8/
P3300Ufq1KmTJOnMmTPq37+/0tPTNWPGDP35z392K19GRoaeeeYZ1a5dW+vWrdPgwYMlSZcvX9Yv
f/lLpaamavz48Vq9erVD3PHjxxUbG6vCwkItWrRI48aNu/bSbFuxsbFavny5YmJitHPnToe4+Ph4
paamqlmzZtq4caPCwsIkSXl5eRo1apT+8Y9/6He/+52WL1/uVOuSJUv0hz/8QWFhYVqzZk1JbLHP
P/9czZo1c+t1F2MkEgAAAMBNbfbs2bIsS9OmTStpICXJ399fCxYskG3bmjdvns6fP+92PkkaO3Zs
SQMpSXXr1tXixYvl4eGhtWvXKjMz0yEuISFBFy9e1KBBg0oaSEmyLEsLFixQgwYNtGfPHm3evLlk
W0FBgV5//XVZlqUXXnjBoQn08fHRm2++qXr16mnlypVOo5i5ubmKi4uTt7e31q9f79RASlJYWJj8
/Pzcet3FaCIBAAAAlLIl2XYNfFzfy/n222+1d+9eSdLo0aOdtvfq1UtBQUG6cuWK1q9f7zJffn5+
yX7l5WvevLl69eolSXr33XcdtqWkpMiyrHLjfHx8NGzYMElScnJyyfOff/65Lly4IEmKjIx0irvt
ttvUvn172battWvXOmxbunSpzp8/r+joaLVo0cLla3MXTSQAAACAEnYNflyP/fv3S7o26lhRI3XX
XXc57FuZzMxMXbx40SGuvHy2bTvku3Dhgg4fPnxdccUaNWpUbtytt94qSfr0008dnt+0aZMsy1Kf
Pn10+fJlLV++XJMnT9bEiRM1d+5cff31165ebrlYEwkAAACg1E22JvLo0aOSro0QViQoKEi2bZfs
606+hg0bysfHp8J8ZfeVpK+++qrk3xXVUl5ckyZNSv6dlZVV7pTU4mmsP67/wIEDkqRz587pzjvv
dKjBtm0999xz+tOf/qTf//735dZTEUYiAQAAANy0itc5VtTwSZKvr68kVXqFU9N8ZddbVhRbXlzL
li1Lms6//vWvTjHbt2/XoUOHyq3/9OnTkqSpU6fKtm2tW7dOP/zwg44cOaKpU6cqPz9fzzzzjN55
550KX0t5aCIBAAAAlLrhax8refxMzZw5U7ZtKzExUTNnzlR2drZyc3O1du1ajRo1SnXq1JFt2/Lw
cGzvbNsueWzYsEFDhgxR/fr1FRwcrNmzZ2v8+PGybVvx8fFVqocmEgAAAMBNq/jKo3l5eRXuU7zu
sH79+j9ZvrJXQK0otqI6fvWrX2nWrFny8PDQ888/r5CQEPn7++uhhx5S06ZN9eyzz0q6tu7zx7UW
r4ls06aN0/EmTJgg6dp02Ozs7Apfz49VaU3kksWLdeDYF1UJcVCYW7UbeP5YndAGRvGS5FHPfBlo
95H9jHPsTvnQOIddZPbXmPMX3LuEceVFmP9FyC40L+PAm9uN4ut1aGxcQ+2GdY1z9I7qb5yjVbNQ
o/iIdl2Ma1jyP/ONc9wWeYdxjss/VPzD3R1b31pnXMPZ6L5G8edvaS61NS6j2q1Y/rYO5lz/+aDg
9CWj43vf4e96Jxfy65l9PiTpnt8MNc7x8ZotxjlMfxbnns81r6EaFlDZReZV7PnLRqN47/DbjGvw
9K9nnKPvUOcrMFZVi4Ago/gOLdsZ17Bs1kLjHIFRdxrnOH/a7DO+Nc38fNB91ACj+PyGlyTzL8lN
IS4uzulWFqNHjy73iqeSFBwcLEnKycmpMGdOTo4syyrZtzLF++Tm5iovL6/cqanFxyqbr+xFfY4d
O6Y773T+bJcXVyw+Pl6PPPKIkpOTdeTIEdWpU0d33323Ro4cqZkzZ0qSOnTo4BATGhqqM2fOKDS0
/N8Pyz5//Phxt6/gyoV1AAAAADiqwTNHX3vttSrtHx4eLuna+sDs7OxyG6XiW4B06eL6j+lt2rSR
t7e3Ll26pL1796pvX+c/GO/du1eWZTnk8/Pz0x133KEjR45o79695TaRruoIDg7WlClTnJ5PS0uT
ZVkaNGiQw/Ndu3bVnj17dOrUqXLzlX2+eD2mO5jOCgAAAKDUjV73WM1rIgMDAxURESFJWrFihdP2
9PR05eTkyMvLS1FRUS7zeXp6aujQobJtu9x82dnZ+uSTTyRJI0aMcNg2YsSICuPy8vL0wQcfyLIs
jRw50q3XJkk7d+5Uenq6mjdvrvvvv99h24MPPliyz6VLzrOANm3aJOlaA1neVV8rQhMJAAAA4KY2
ffp02batF1980eEejKdPn9aECRNkWZYmTZrksG5x/vz5CgsLU2xsrFO+qVOnyrIsLVmyRBs3lk6j
v3TpksaNG6eioiJFR0erdevWDnFxcXHy9vbWli1b9Oabb5Y8X1RUpCeffFK5ubnq1q2b04hibm6u
MjMznerYuXOnHnjgAXl4eGjRokVOF9bp37+/+vTpoxMnTuh3v/udrl69WrLtwIEDmjFjhizL0oQJ
E1SrVi0X72IpprMCAAAAuKndf//9mjx5shITE9WjRw9FRkbKx8dHqampOnv2rHr37q1Zs2Y5xJw6
dUqHDh1SQECAU77w8HC9+uqrmjJliqKiotS3b181adJEaWlp+u6779S2bVstXOi8JjggIEBLly5V
TEyMnnjiCS1evFjBwcHas2ePsrKyFBAQUOHoZnh4uMLCwnTHHXfIx8dHhw4d0v79+1WnTh397W9/
c2o8i7399tvq27ev3nrrLW3evFkRERE6c+aMdu7cqfz8fA0ePNjptbvCSCQAAACAUnYNfhhISEjQ
O++8o549e2rHjh3asGGDgoKC9NJLLyk1NVVeXl5OMZZlybKscvNNnjxZmzdv1r333quDBw/q/fff
l5+fn6ZPn67du3c7XSm1WHR0tHbt2qUHHnhAR48eVUpKioqKijRp0iRlZGQoJCTEKSYwMFDjx49X
rVq19NFHHyklJUVnz57Vb3/7Wx08eFCPPfZYha+7WbNmysjI0NSpU+Xr66t//vOfysjIUNeuXfX6
669r/fr18vT0dPNdvIaRSAAAAAAliu8rWNNUR03R0dGKjo52a9+ZM2eWXPW0IgMGDNCAAVW/8m54
eLiSkpLc3v/WW2/VggULqnycYn5+fnrhhRf0wgsvXHeOshiJBAAAAAC4jSYSAAAAAOA2prMCAAAA
KFUN6w9/EjWxpp8pRiIBAAAAAG5jJBIAAACAI0b9UAmaSAAAAABlMJ8VlaOJBAAAAFCKHhIusCYS
AAAAAOA2RiIBAAAAlGIkEi7QRAIAAAAoca2HrHkdW82r6Oerak1kLQ9Zta9/Bmz9brdfd6wkXTjw
vVG8JPWOHmScIz15i3GOYeMeNM7xj3c/MIrv2am7cQ1+d/sa5/hgdYpxjlaDOhnFf5XxpXEN1SH7
+DHjHGlrNxvFF5y+bFyDf/8Q4xzfpx42zlHvzkZG8X0fizKu4cPl643i80PaSYONy6h2luH5oHHv
UKPjn95r/r3S5yHzN9b0+02Sfjk22jjHhvf+YRTf7c6uxjXU7+ZnnOMfa83Oa5LU8T6zc9vnuw8a
12Db5r/qfnPyuHGO7cmbjOILvr9oXEOTQa2Nc3yz/t/GOeq1b2wU3z92qHEN25aafZ9eCmknDTQu
A6gWjEQCAAAAKMV0VrhAEwkAAACgFE0kXKCJBAAAAFAGXSQqxy0+AAAAAABuYyQSAAAAQCkGIuEC
TSQAAAAARzRsqATTWQEAAAAAbmMkEgAAAEAZzGdF5WgiAQAAAJSih4QLNJEAAAAAStj2tUdNUxNr
+rliTSQAAAAAwG00kQAAAAAAtzGdFQAAAEAp5rPCBUYiAQAAAABuYyQSAAAAQCmuzgoXqtZEFtnX
HtcpP7/gumMlyb5aaBQvSR+9td44xyN/+I1xjpVvLDPO0e2+e4zit6VsMq7hiUlPGucY9XiMcY7l
f1pkFO/h42lcQ+1qGNf/8u+7jHPUa9/YKL5dv07GNXh4mL8Zo14YYZzjr/PfMIr/cPkG4xqKLpv9
3LKvFBnX8FOwbVu2wfngasFVo+MXVcP5YPvf1hnnePjpXxnnWLtklXGOu4b0MopPW7fVuIZHfxNr
nOOB0Q8a51g1529G8R6+1XA+sIxT6OBfPzTO4dO1qVF8x0cijGvILzD73U+Shs0aYpzjrdfNPhfb
lv7DuIaiyzf+92CgujASCQAAAKCMGromkqHIGoM1kQAAAAAAtzESCQAAAKAUayLhAk0kAAAAAAf0
a6gM01kBAAAA/CwkJSWpX79+8vf3l6+vrzp37qw5c+ao4DovArVlyxZFRUWpcePG8vb2VlhYmOLj
45WXl1dp3L59+/Tggw+qadOmqlevnkJDQ/XUU0/p5MmTFcYUFhZqwYIF6t27t/z9/VWnTh01btxY
AwcO1LJly2RXso717bff1sCBA9W4cWPVqVNHt9xyi3r37q2//OUvys/Pr/LrZiQSAAAAQClbNfPC
OoYlxcXFKTExUZ6enhowYIB8fX21detWPffcc1q3bp02bdokLy8vt/MlJCTo6aefloeHh/r06aPb
brtNaWlpmj17tpKTk5Weni5/f3+nuDVr1igmJkaFhYWKiIhQSEiI9u7dq3nz5ikpKUkff/yxQkND
HWKuXr2qQYMGKS0tTV5eXurdu7caN26snJwcbd++XVu3btV7772ntWvXOh1v1KhRWr16tWrVqqWe
PXsqMDBQ33//vT7++GN98sknWrVqlbZu3Vql185IJAAAAIBSdg1+XKeUlBQlJibKz89Pu3fv1oYN
G5SUlKQvv/xSHTp0UHp6umbMmOF2voyMDD3zzDOqXbu21q9fr23btmnVqlU6cuSIIiMj9cUXX2j8
+PFOccePH1dsbKwKCwu1aNEi7dy5UytXrlRmZqYeffRRff/994qJcb793fz585WWlqaQkBAdPnxY
mzdv1ooVK5SWlqbdu3fLz89PKSkpWr16tdPrXr16tRo2bKj9+/frww8/1IoVK5SamqovvvhCgYGB
2rlzp+bOnVul95MmEgAAAMBNbfbs2bIsS9OmTVOnTqX3xPb399eCBQtk27bmzZun8+fPu51PksaO
HavBgweXPF+3bl0tXrxYHh4eWrt2rTIzMx3iEhISdPHiRQ0aNEjjxo0red6yLC1YsEANGjTQnj17
tHnzZoe4bdu2ybIsTZgwQYGBgQ7bunTpolGjRkmSduzY4bBt69atsixLY8aMUfv27R22BQcHa8KE
CbJt2ynOFZpIAAAAADetb7/9Vnv37pUkjR492ml7r169FBQUpCtXrmj9+vUu8+Xn55fsV16+5s2b
q1evXpKkd99912FbSkqKLMsqN87Hx0fDhg2TJCUnJztsq1u3rsu6bNvWrbfe6hRX2VrJYj+Oc4Um
EgAAAEAp2665j+uwf/9+SddGHVu0aFHuPnfddZfDvpXJzMzUxYsXHeLKy2fbtkO+Cxcu6PDhw1WO
k6QhQ4bItm3Nnz9fOTk5Dts+/fRTrVq1Sj4+Pnr00Ued4iRpxYoVOnDggMO2rKwsLVy4UB4eHvrN
b37j6mU7oIkEAAAA4OhGr32sxvWQR48elXRthLAiQUFBsm27ZF938jVs2FA+Pj4V5iu7ryR99dVX
Jf+uqJby4iQpNjZWjz/+uLKzs9WqVSsNHDhQMTEx6tOnj7p166bQ0FClpqY65e3fv7/i4+OVm5ur
Ll26qG/fvoqJiVFkZKTCwsLk5eWl999/X926dXP5usvi6qwAAAAAblrF6xwravgkydfXV5J07ty5
nyxf2fWWFcVWVIdlWVqyZIk6dOig6dOna9u2bSXbvL29NXDgQIWEhJSbc9asWWrbtq3Gjx+v9PT0
kudr166tgQMHKiwsrMLXURFGIgEAAACgBjt//ryGDh2qZ599VpMmTVJmZqby8vJ08OBBDR8+XK+8
8oq6d++ub775xiGuoKBAY8eO1SOPPKKRI0fq4MGDysvLU2ZmpiZOnKhFixYpIiLCaaqrK4xEAgAA
AChlOH30J/OfmuLi4pSVleWwafTo0eVerEaS/Pz8JEl5eXkVpr5w4YIkqX79+i7LuN58xXHFsWX/
31UdU6ZM0YYNGzRx4kTNmTOn5Pl27dpp+fLlOnXqlDZt2qT4+HgtWbKkZPtLL72kpUuX6r777tPS
pUtLnm/ZsqVeeeUVXbx4UW+88YYmT57sMLrpCk0kAAAAgBL2f/6raYpreu2116oUFxwcLElOF6Qp
KycnR5ZllezrTr7c3Fzl5eWVOzW1+Fhl85W9qM+xY8d05513uhVXVFSkv//977Isq+RWHj8WExOj
jRs3asuWLQ7Pv/XWWy7j3njjDaWnpys/P1+enp7l7vdjTGcFAAAAcNMKDw+XJJ0+fVrZ2dnl7lN8
C5AuXbq4zNemTRt5e3s7xJWXz7Ish3x+fn664447XMb9uI4TJ07oypUrkioeKW3QoIEk6cyZMw7P
Hzt2zK24oqIi5ebmlrtPeao0Ell0uUCFF/OrEuLgcmr5XzR3DZ/2mFG8JDX0dT1E7co7q94xzjFk
zHDjHJZlGcX/YfpU4xpe+curxjn6DRpgnOPx//ekUbxtFxnX8N5Hru8r5Ipvi0bGOS6ecL0gvDK5
F84a11AdFi9ebJyjZ1Q/o/jdn+w0rqH3PX2M4kPqB7re6QYoupivwgtXrzv+9PuZrneqxLB48/NB
fR/naURVlZy0xjjHL0b90jiHO/cAq8zE3z9lXMOCN183znFP/77GOWKe+7VRvGdt9/4KX5n1H28y
ztGkdTPjHKe/O2kUn3vB7HwiSYWFhcY5li9fbpyjR5TZz+K9O/cY13BPP7PP93/1fFDDp7NWVWBg
oCIiIrR3716tWLFC06ZNc9ienp6unJwc1a1bV1FRUS7zeXp6aujQoUpKStKKFSvUt6/j1zY7O1uf
fPKJJGnEiBEO20aMGKE5c+ZoxYoVevzxxx225eXl6YMPPpBlWRo5cmTJ840aNZKXl5euXr2qXbt2
qX379k417dixQ5KcLq4TGBior776Srt27dJ9991XYZyfn1+V7hXJSCQAAACAUjf6Vh4/wW0+pk+f
Ltu29eKLLzrcg/H06dOaMGGCLMvSpEmTHNYpzp8/X2FhYYqNjXXKN3Xq1JIrpm7cuLHk+UuXLmnc
uHEqKipSdHS0Wrdu7RAXFxcnb29vbdmyRW+++WbJ80VFRXryySeVm5urbt26adCgQSXbPD09NWzY
MNm2rRkzZujgwYMOOVNTUzV37lxZlqUxY8Y4bIuOjpZt20pISNCHH37osC0jI0N//OMfZVmWHn74
4SoNULEmEgAAAMBN7f7779fkyZOVmJioHj16KDIyUj4+PkpNTdXZs2fVu3dvzZo1yyHm1KlTOnTo
kAICApzyhYeH69VXX9WUKVMUFRWlvn37qkmTJkpLS9N3332ntm3bauHChU5xAQEBWrp0qWJiYvTE
E09o8eLFCg4O1p49e5SVlaWAgACtWLHCKS4hIUH79u1TVlaWunTpoh49eigwMFBZWVklU2cjIyP1
9NNPO8TNmDFDH374ofbs2aP+/fsrIiJCISEh+vrrr7Vr1y4VFRWpY8eOevHFF6v0fjISCQAAAKCM
Gz3c+BMMRepaI/bOO++oZ8+e2rFjhzZs2KCgoCC99NJLSk1NlZeXl1OMZVkVjtBNnjxZmzdv1r33
3quDBw/q/fffl5+fn6ZPn67du3fL39+/3Ljo6Gjt2rVLDzzwgI4ePaqUlBQVFRVp0qRJysjIKPd+
j7fffrsyMjL0/PPPq2vXrvrss8+UnJyso0ePql+/flq0aJE2btyoOnXqOMT5+voqPT1dc+fOVZ8+
fXTkyBElJyfr3//+t7p166aXX35ZO3fu1C233FKl95KRSAAAAAClbrI1kWVFR0crOjrarX1nzpyp
mTNnVrrPgAEDNGBA1a/vER4erqSkpCrF+Pj4aNq0aU5rOl2pXbu2Jk6cqIkTJ1YprjKMRAIAAAAA
3MZIJAAAAABHNXEkEjUGTSQAAACAMm7i+ayoFjSRAAAAAErY9rVHTVMTa/q5Yk0kAAAAAMBtjEQC
AAAAKMVsVrjASCQAAAAAwG00kQAAAAAAtzGdFQAAAEApWzXzKjY1sKSfK5pIAAAAAKVYEwkXmM4K
AAAAAHAbTSQAAAAAwG1Vms4a/fho9bp86roPtu/Qv647VpLef22FUbwkWbXN+2bPAF/jHOfyzhvn
sCzLKP7Ps2Yb1yCvWsYp/rlgrXGOu8b0N4rvFhZuXEPtWp7GOQqLCoxzFF3MN4q/xa+hcQ3V4VTB
N8Y5tr5s9tmq28bfuIZtq/9pFH+6RZjU5/fGdVS34WOiFXHp5HXHf5b1udHx1722yihekqzaVOs8
kwAAEBhJREFUZj9DJckz0M84x4VLecY5TM8Hf/nza8Y1yNP8/dy0MNk4R8QjkWbxYZ2Na/Cq42Wc
o8guMs+RZ3Y+8KnrbVxDLQ/z37uOF3xlnGPbn8zOB/Xa32pcQ+qq9UbxHVuESb0mG9fhHrtmrolk
PmuNwZpIAAAAAKVYEwkXmM4KAAAAAHAbI5EAAAAASjAQCVdoIgEAAACUsmvomsiaWNPPFE0kAAAA
gFIMRcIF1kQCAAAAANxGEwkAAAAAcBvTWQEAAACUYk0kXGAkEgAAAADgNkYiAQAAADhi0A+VYCQS
AAAAAOA2RiIBAAAAlGBJJFxhJBIAAAAA4DZGIgEAAACUYigSLjASCQAAAABwG00kAAAAAMBtlm27
Py4c+T8P68Cxz6/7YBFRva87VpJ86/kYxUvS1rX/NM5R8N1F4xw1gUc989nMddv4G+fo0KmjcY7C
oiKj+APb9xjXYNU1fz9/8cshxjlu8WtgFL9k2l+Ma/Dw9jTOUSfIzziH5+2+RvH5310wrqHghNnP
i44h7bT9pXeN66huN/p84Odt9rWVpNQ1G4xz5H993jhHtbAso/Dq+J6t166RcY5OnTsb56jCrzXl
2rd9l3ENHl7m54PBQ+81zmH6fbLsOfPzQS3fOsY56oSYndckqU7z+kbxV3PMv9cLjpudUzqGtNP2
l1OM63BH39/frwNZ//tfOVZVdAxtpw8T3rvRZUCMRAIAAAAoy1bpusga9TB/aUlJSerXr5/8/f3l
6+urzp07a86cOSooKLiufFu2bFFUVJQaN24sb29vhYWFKT4+Xnl5eZXG7du3Tw8++KCaNm2qevXq
KTQ0VE899ZROnjxZYUxhYaEWLFig3r17y9/fX3Xq1FHjxo01cOBALVu2rNI/op04cUITJ05UaGio
6tatq6ZNm+qhhx7S/v37r+t100QCAAAAuOnFxcXp4Ycf1o4dO9S9e3cNGTJEOTk5eu655xQZGakr
V65UKV9CQoIGDx6sTZs2qX379ho2bJjOnTun2bNnKyIiQmfOnCk3bs2aNerRo4eSk5MVHBys4cOH
q1atWpo3b546duyorKwsp5irV69qwIABmjhxoj799FN17dpV0dHRatu2rbZv367Y2FhFR0eXe7zM
zEx16NBBCxcuVK1atTRixAgFBwdrzZo16t69u957r+qjuzSRAAAAAG5qKSkpSkxMlJ+fn3bv3q0N
GzYoKSlJX375pTp06KD09HTNmDHD7XwZGRl65plnVLt2ba1fv17btm3TqlWrdOTIEUVGRuqLL77Q
+PHjneKOHz+u2NhYFRYWatGiRdq5c6dWrlypzMxMPfroo/r+++8VExPjFDd//nylpaUpJCREhw8f
1ubNm7VixQqlpaVp9+7d8vPzU0pKilavXu0UO2rUKJ06dUqPPfaYMjMztXLlSu3cuVOLFi1SQUGB
HnvsMZ04caJK7ydNJAAAAABHdg18GJg9e7Ysy9K0adPUqVOnkuf9/f21YMEC2batefPm6fx599a/
zp49W5I0duxYDR48uOT5unXravHixfLw8NDatWuVmZnpEJeQkKCLFy9q0KBBGjduXMnzlmVpwYIF
atCggfbs2aPNmzc7xG3btk2WZWnChAkKDAx02NalSxeNGjVKkrRjxw6HbRs2bFBGRoYaNmyo+fPn
yyqzhv7Xv/61IiMjdeHCBc2dO9et112MJhIAAABAqRu+9rGSx3X49ttvtXfvXknS6NGjnbb36tVL
QUFBunLlitavX+8yX35+fsl+5eVr3ry5evXqJUl6913Hi+OlpKTIsqxy43x8fDRs2DBJUnJyssO2
unXruqzLtm3deuutDs8VH3/YsGHy9vZ2iomJiZFt207Hc4UmEgAAAMBNq/jiMf7+/mrRokW5+9x1
110O+1YmMzNTFy9edIgrL59t2w75Lly4oMOHD1c5TpKGDBki27Y1f/585eTkOGz79NNPtWrVKvn4
+OjRRx912LZ//35ZllXp8STpyy+/1KVLlyp6yU5oIgEAAAA4uNEzV6tzNuvRo0clXRshrEhQUJBs
2y7Z1518DRs2lI9P+bcgDAoKcthXkr766quSf1dUS3lxkhQbG6vHH39c2dnZatWqlQYOHKiYmBj1
6dNH3bp1U2hoqFJTU53yunrtxcezbduhPlfMb2QEAAAA4OZRDWsQfxLXWVPxOseKGj5J8vW9dl/V
c+fO/WT5yq63rCi2ojosy9KSJUvUoUMHTZ8+Xdu2bSvZ5u3trYEDByokJKTKtRYfr7xjVoaRSAAA
AAClbvS6x2peE3kzOH/+vIYOHapnn31WkyZNUmZmpvLy8nTw4EENHz5cr7zyirp3765vvvnmv1IP
I5EAAAAA/s+Ii4tzupfi6NGjy71YjST5+flJkvLy8irMeeHCBUlS/fr1XR7/evMVxxXHlv1/V3VM
mTJFGzZs0MSJEzVnzpyS59u1a6fly5fr1KlT2rRpk+Lj47VkyRKHY/7www8V1lp8vPKOWRmaSAAA
AAD/Z7z22mtV2j84OFiSnC5IU1ZOTo4syyrZ1518ubm5ysvLK3eqaPGxyuYre1GfY8eO6c4773Qr
rqioSH//+99lWVbJrTx+LCYmRhs3btSWLVucav3hhx907NixcuOKj2dZVoUXHSoP01kBAAAAlLrR
V9Cp5qvrhIeHS5JOnz6t7OzscvcpvgVIly5dXOZr06ZNye0yiuPKy2dZlkM+Pz8/3XHHHS7jflzH
iRMndOXKFUkVjxY2aNBAknTmzBmH57t06SLbtl0er1WrVuXeAqQiNJEAAAAAblqBgYGKiIiQJK1Y
scJpe3p6unJycuTl5aWoqCiX+Tw9PTV06FDZtl1uvuzsbH3yySeSpBEjRjhsGzFiRIVxeXl5+uCD
D2RZlkaOHFnyfKNGjeTl5SVJ2rVrV7k17dixQ5KcLq5TfPz333+/3Ft4vP3227IsSw888ECFr7c8
NJEAAAAAHN3oEcfqvMeHpOnTp8u2bb344osO92A8ffq0JkyYIMuyNGnSJId1ivPnz1dYWJhiY2Od
8k2dOrXkiqkbN24sef7SpUsaN26cioqKFB0drdatWzvExcXFydvbW1u2bNGbb75Z8nxRUZGefPJJ
5ebmqlu3bho0aFDJNk9PTw0bNky2bWvGjBk6ePCgQ87U1FTNnTtXlmVpzJgxDtuGDBmi8PBw5ebm
asKECSoqKirZtmjRIm3dulV+fn566qmn3Hwnr2FNJAAAAIAybrJ7fEi6//77NXnyZCUmJqpHjx6K
jIyUj4+PUlNTdfbsWfXu3VuzZs1yiDl16pQOHTqkgIAAp3zh4eF69dVXNWXKFEVFRalv375q0qSJ
0tLS9N1336lt27ZauHChU1xAQICWLl2qmJgYPfHEE1q8eLGCg4O1Z88eZWVlKSAgoNxRyoSEBO3b
t09ZWVnq0qWLevToocDAQGVlZZVMnY2MjNTTTz/tFLty5Urdc889WrZsmdLS0hQREaGjR49q9+7d
8vT01LJly9SkSZMqvZ9VaiLt//x3vT5etP66YyXJLjT/MHuFNDTOERjVzjjH8U8OG+ewDN+OPqN+
YVzDvkP/Ms6Recz8vfhh21GjeK87bjGu4f6Rw41zvLv0HeMc+ccrvlKYOxr8wvkeQ1V19dvzrndy
ofDsVeMcdn6hUbyHl/nf2aInPmoU39y3qXENPwXT80H6/HVmBVTH+aCNv3GOkJGu1864cmz758Y5
TM8H/R9xPX3LlYwvPzPOkfW12c9ySfp+c6ZRvFcr88/FsOH3G+dIro7zwTdmP4ubjDD/fefCsTOu
d3Kh6Fw1nA+ump0Panmbnw/umxRjFN/c17mRQdUkJCSoV69emj9/vnbs2KH8/Hy1bNlS06dPV1xc
nGrXdv46W5Yly7LKzTd58mR16NBBr7zyinbv3q28vDw1b95cY8eO1dSpUyu8N2N0dLRatmyp2bNn
Ky0tTRkZGQoICNCkSZMUHx+vxo0bO8XcfvvtysjIUGJiot577z199tln2rVrlxo0aKB+/fppzJgx
Gjt2bLm1tm7dWgcOHNDzzz+vdevWKSUlRQ0aNFB0dLSmT5+uzp07V/GdZCQSAAAAQBk19ZaM1VFT
dHS0oqOj3dp35syZmjlzZqX7DBgwQAMGDKhyHeHh4UpKSqpSjI+Pj6ZNm6Zp06ZV+XhNmjRRYmKi
EhMTqxxbHppIAAAAAKVuvtmsqGY0kQAAAADKoItE5bg6KwAAAADAbYxEAgAAACjFQCRcoIkEAAAA
UIomEi4wnRUAAAAA4DZGIgEAAAD8CMN+qBhNJAAAAABH9JCoBNNZAQAAAABuo4kEAAAAALiN6awA
AAAAStj2tUdNUxNr+rmiiQQAAABQii4SLjCdFQAAAADgNppIAAAAAIDbmM4KAAAAoJStmnmLj5pY
089UlZrIwjOXVfD9xes+WC3fOtcdK0kPT/mVUbwktW7e0jjH1r0fGef4tiDTOEfRhQKj+I/eWm9c
Q92wRsY5OnXtapzjtoh+RvEpi1cZ15D02jLjHLVvrWecI+yhHkbx+QX5xjV8b5xBemDMMOMcOz/b
YxQ//J6hxjW8+uc5RvEdgtoqvsuvjeuobgUnLyr/mwvXHV+rgZfR8R+Ie8woXpJaBgYb5/jk4C7j
HNkF/zbOUXj+qlF86uL3jWuo176xcY6IuyKMc/R+9m6j+Pf+ttq4hqSEt4xzeN7mY5yj4yP3GMVf
zTf7XEmSmpun+GXve41zmJ4PonoOMq5hXkKiUXyHoLbSXb81rsMtrImEC0xnBQAAAAC4jSYSAAAA
AOA21kQCAAAAcMTMUVSCkUgAAAAAgNsYiQQAAABQwrZt2TXwIjY1saafK0YiAQAAAABuYyQSAAAA
QCnuEwkXGIkEAAAAALiNkUgAAAAApWz72qOmqYk1/UwxEgkAAAAAcBtNJAAAAADAbUxnBQAAAFCK
C+vABZpIAAAAAKVoIuECTSQAAACAH6FjQ8VYEwkAAAAAcFuVRiJbNQs1OpjladazBvncZhQvSU08
GxrnaNmgmXGOcyHtjHPoYqFRuFXH/G8IXgENjHNUx/vp79vIKL5jizDjGgovFRjnqN3QyzhHs0bB
RvEFBeavo3Ed8++zZt5NjHO0MXwvbqvjb1xDh6C2RvGtmoYY1/BTaN2spVG85VXLKL65b1OjeEm6
zcv861tTzgf2xXyjeNOvhyTVDbjFOEdoNbyfDX3rG8VXy/nA8OshSbX96xnnCPZvYRSfX2D+Oqrj
+6wmnA+aepn9niFVx/kg2LgGd9mqmXfTqIEl/WxZtl0TPyIAAAAAboRej/1C/zp08EaX4aRTmw76
eNnGG10GxHRWAAAAAEAVcGEdAAAAAGVweVZUjiYSAAAAQIk2LVrVyH6tTYtWN7oE/AdrIgEAAAAA
bmNNJAAAAADAbTSRAAAAAAC30UQCAAAAANxGEwkAAAAAcBtNJAAAAADAbTSRAAAAAAC30UQCAAAA
ANxGEwkAAAAAcBtNJAAAAADAbf8fvrRyK97+B78AAAAASUVORK5CYII=
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Not bad.</p>
<p>The <code>MKSLocalizationModel</code> can be used to predict local properties and local processing-structure evolutions.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[&nbsp;]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span>
</pre></div>

    </div>
</div>
</div>

</div>
    </div>
  </div>
</body>




</html>
