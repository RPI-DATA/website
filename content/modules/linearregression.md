---
title: "Linear Regression"
---

<html>
<head><meta charset="utf-8" />

<title>linearregression</title>

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
    
/* Temporary definitions which will become obsolete with Notebook release 5.0 */
.ansi-black-fg { color: #3E424D; }
.ansi-black-bg { background-color: #3E424D; }
.ansi-black-intense-fg { color: #282C36; }
.ansi-black-intense-bg { background-color: #282C36; }
.ansi-red-fg { color: #E75C58; }
.ansi-red-bg { background-color: #E75C58; }
.ansi-red-intense-fg { color: #B22B31; }
.ansi-red-intense-bg { background-color: #B22B31; }
.ansi-green-fg { color: #00A250; }
.ansi-green-bg { background-color: #00A250; }
.ansi-green-intense-fg { color: #007427; }
.ansi-green-intense-bg { background-color: #007427; }
.ansi-yellow-fg { color: #DDB62B; }
.ansi-yellow-bg { background-color: #DDB62B; }
.ansi-yellow-intense-fg { color: #B27D12; }
.ansi-yellow-intense-bg { background-color: #B27D12; }
.ansi-blue-fg { color: #208FFB; }
.ansi-blue-bg { background-color: #208FFB; }
.ansi-blue-intense-fg { color: #0065CA; }
.ansi-blue-intense-bg { background-color: #0065CA; }
.ansi-magenta-fg { color: #D160C4; }
.ansi-magenta-bg { background-color: #D160C4; }
.ansi-magenta-intense-fg { color: #A03196; }
.ansi-magenta-intense-bg { background-color: #A03196; }
.ansi-cyan-fg { color: #60C6C8; }
.ansi-cyan-bg { background-color: #60C6C8; }
.ansi-cyan-intense-fg { color: #258F8F; }
.ansi-cyan-intense-bg { background-color: #258F8F; }
.ansi-white-fg { color: #C5C1B4; }
.ansi-white-bg { background-color: #C5C1B4; }
.ansi-white-intense-fg { color: #A1A6B2; }
.ansi-white-intense-bg { background-color: #A1A6B2; }

.ansi-bold { font-weight: bold; }

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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS_HTML"></script>
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
<p><img src="https://raw.githubusercontent.com/RPI-DATA/website/master/static/images/rpilogo.png" alt="RPI LOGO"></p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h1 id="Machine-Learning---Linear-Regression">Machine Learning - Linear Regression<a class="anchor-link" href="#Machine-Learning---Linear-Regression">&#182;</a></h1><p>This project will work on how to predict the prices of homes based on the properties of the house. I will determine which house affected the final sale price and how effectively we can predict the sale price.Here's a brief description of the columns in the data:</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Learning-Objectives">Learning Objectives<a class="anchor-link" href="#Learning-Objectives">&#182;</a></h2><p>By the end of this notebook, the reader should be able to perform Linear Regression techniques in python. This includes:</p>
<ol>
<li>Importing and formating data</li>
<li>Training the LinearRegression model from the <code>sklearn.linear_model</code> library</li>
<li>Work with qualitative and quantitative data, and effectively deal with instances of categorical data.</li>
<li>Analyze and determine proper handling of redundant and/or inconsistent data features.</li>
<li>Create a heatmap visual with <code>matplot.lib</code> library</li>
</ol>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Read-Data">Read Data<a class="anchor-link" href="#Read-Data">&#182;</a></h2><p>The <code>pandas</code> library is an open source data analytics tool for python that allows the use of 'data frame' objects and clean file parsing.</p>
<p>Here we split the Ames housing data into training and testing data. The dataset contains 82 columns which are known as features of the data. Here are a few:</p>
<ul>
<li>Lot Area: Lot size in square feet.</li>
<li>Overall Qual: Rates the overall material and finish of the house.</li>
<li>Overall Cond: Rates the overall condition of the house.</li>
<li>Year Built: Original construction date.</li>
<li>Low Qual Fin SF: Low quality finished square feet (all floors).</li>
<li>Full Bath: Full bathrooms above grade.</li>
<li>Fireplaces: Number of fireplaces.</li>
</ul>
<p>and so on.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[1]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">pandas</span> <span class="k">as</span> <span class="nn">pd</span>
<span class="n">data</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">read_csv</span><span class="p">(</span><span class="s2">&quot;Data/AmesHousing.txt&quot;</span><span class="p">,</span> <span class="n">delimiter</span> <span class="o">=</span> <span class="s1">&#39;</span><span class="se">\t</span><span class="s1">&#39;</span><span class="p">)</span>
<span class="n">train</span> <span class="o">=</span> <span class="n">data</span><span class="p">[</span><span class="mi">0</span><span class="p">:</span><span class="mi">1460</span><span class="p">]</span>
<span class="n">test</span> <span class="o">=</span> <span class="n">data</span><span class="p">[</span><span class="mi">1460</span><span class="p">:]</span>
<span class="n">target</span> <span class="o">=</span> <span class="s1">&#39;SalePrice&#39;</span>
<span class="nb">print</span><span class="p">(</span><span class="n">train</span><span class="o">.</span><span class="n">info</span><span class="p">())</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>&lt;class &#39;pandas.core.frame.DataFrame&#39;&gt;
RangeIndex: 1460 entries, 0 to 1459
Data columns (total 82 columns):
Order              1460 non-null int64
PID                1460 non-null int64
MS SubClass        1460 non-null int64
MS Zoning          1460 non-null object
Lot Frontage       1211 non-null float64
Lot Area           1460 non-null int64
Street             1460 non-null object
Alley              109 non-null object
Lot Shape          1460 non-null object
Land Contour       1460 non-null object
Utilities          1460 non-null object
Lot Config         1460 non-null object
Land Slope         1460 non-null object
Neighborhood       1460 non-null object
Condition 1        1460 non-null object
Condition 2        1460 non-null object
Bldg Type          1460 non-null object
House Style        1460 non-null object
Overall Qual       1460 non-null int64
Overall Cond       1460 non-null int64
Year Built         1460 non-null int64
Year Remod/Add     1460 non-null int64
Roof Style         1460 non-null object
Roof Matl          1460 non-null object
Exterior 1st       1460 non-null object
Exterior 2nd       1460 non-null object
Mas Vnr Type       1449 non-null object
Mas Vnr Area       1449 non-null float64
Exter Qual         1460 non-null object
Exter Cond         1460 non-null object
Foundation         1460 non-null object
Bsmt Qual          1420 non-null object
Bsmt Cond          1420 non-null object
Bsmt Exposure      1419 non-null object
BsmtFin Type 1     1420 non-null object
BsmtFin SF 1       1459 non-null float64
BsmtFin Type 2     1419 non-null object
BsmtFin SF 2       1459 non-null float64
Bsmt Unf SF        1459 non-null float64
Total Bsmt SF      1459 non-null float64
Heating            1460 non-null object
Heating QC         1460 non-null object
Central Air        1460 non-null object
Electrical         1460 non-null object
1st Flr SF         1460 non-null int64
2nd Flr SF         1460 non-null int64
Low Qual Fin SF    1460 non-null int64
Gr Liv Area        1460 non-null int64
Bsmt Full Bath     1459 non-null float64
Bsmt Half Bath     1459 non-null float64
Full Bath          1460 non-null int64
Half Bath          1460 non-null int64
Bedroom AbvGr      1460 non-null int64
Kitchen AbvGr      1460 non-null int64
Kitchen Qual       1460 non-null object
TotRms AbvGrd      1460 non-null int64
Functional         1460 non-null object
Fireplaces         1460 non-null int64
Fireplace Qu       743 non-null object
Garage Type        1386 non-null object
Garage Yr Blt      1385 non-null float64
Garage Finish      1385 non-null object
Garage Cars        1460 non-null float64
Garage Area        1460 non-null float64
Garage Qual        1385 non-null object
Garage Cond        1385 non-null object
Paved Drive        1460 non-null object
Wood Deck SF       1460 non-null int64
Open Porch SF      1460 non-null int64
Enclosed Porch     1460 non-null int64
3Ssn Porch         1460 non-null int64
Screen Porch       1460 non-null int64
Pool Area          1460 non-null int64
Pool QC            1 non-null object
Fence              297 non-null object
Misc Feature       60 non-null object
Misc Val           1460 non-null int64
Mo Sold            1460 non-null int64
Yr Sold            1460 non-null int64
Sale Type          1460 non-null object
Sale Condition     1460 non-null object
SalePrice          1460 non-null int64
dtypes: float64(11), int64(28), object(43)
memory usage: 935.4+ KB
None
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>The train data over here will be used to create the linear regression model, while the test data will be used to figure out the accuracy of the linear regression model.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Use-linear-regression-to-model-the-data">Use linear regression to model the data<a class="anchor-link" href="#Use-linear-regression-to-model-the-data">&#182;</a></h2><hr>
<p>In this case, we will use the <strong>simple linear regression</strong> to evaluate the relationship between 2 variable--living area("Gr Liv Area") and price("SalePrice"). <code>linearRegression.fit()</code> is a pretty convinent function that it can turn the input data into the linear function and you dont need to worry about the calculation. We can also use the <code>mean_squared_error</code> to get the total cariance of the linear function.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[2]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">numpy</span> <span class="k">as</span> <span class="nn">np</span>
<span class="kn">from</span> <span class="nn">sklearn.linear_model</span> <span class="k">import</span> <span class="n">LinearRegression</span>

<span class="n">lr</span> <span class="o">=</span> <span class="n">LinearRegression</span><span class="p">()</span>
<span class="n">lr</span><span class="o">.</span><span class="n">fit</span><span class="p">(</span><span class="n">train</span><span class="p">[[</span><span class="s1">&#39;Gr Liv Area&#39;</span><span class="p">]],</span> <span class="n">train</span><span class="p">[</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">])</span>
<span class="kn">from</span> <span class="nn">sklearn.metrics</span> <span class="k">import</span> <span class="n">mean_squared_error</span>
<span class="n">train_predictions</span> <span class="o">=</span> <span class="n">lr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">train</span><span class="p">[[</span><span class="s1">&#39;Gr Liv Area&#39;</span><span class="p">]])</span>
<span class="n">test_predictions</span> <span class="o">=</span> <span class="n">lr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">test</span><span class="p">[[</span><span class="s1">&#39;Gr Liv Area&#39;</span><span class="p">]])</span>

<span class="n">train_mse</span> <span class="o">=</span> <span class="n">mean_squared_error</span><span class="p">(</span><span class="n">train_predictions</span><span class="p">,</span> <span class="n">train</span><span class="p">[</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">])</span>
<span class="n">test_mse</span> <span class="o">=</span> <span class="n">mean_squared_error</span><span class="p">(</span><span class="n">test_predictions</span><span class="p">,</span> <span class="n">test</span><span class="p">[</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">])</span>

<span class="n">train_rmse</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">sqrt</span><span class="p">(</span><span class="n">train_mse</span><span class="p">)</span>
<span class="n">test_rmse</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">sqrt</span><span class="p">(</span><span class="n">test_mse</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="n">lr</span><span class="o">.</span><span class="n">coef_</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">train_rmse</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">test_rmse</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>[116.86624683]
56034.362001412796
57088.25161263909
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>In this case, we use the <code>lr.coef_()</code> to get the coefficient of the linear function which is 116.87. More than that, the standard error for the train data is 56034 and test data is 57088. Now, let's make the result more visible by plotting.</p>
<p>Following is the linear regression line made from data in "train".</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[4]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">matplotlib.pyplot</span> <span class="k">as</span> <span class="nn">plt</span>
<span class="n">plt</span><span class="o">.</span><span class="n">scatter</span><span class="p">(</span><span class="n">train</span><span class="p">[[</span><span class="s1">&#39;Gr Liv Area&#39;</span><span class="p">]],</span> <span class="n">train</span><span class="p">[[</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">]],</span>  <span class="n">color</span><span class="o">=</span><span class="s1">&#39;black&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">xlabel</span><span class="p">(</span><span class="s1">&#39;Gr Liv Area in Train&#39;</span><span class="p">,</span> <span class="n">fontsize</span> <span class="o">=</span> <span class="s1">&#39;18&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">ylabel</span><span class="p">(</span><span class="s1">&#39;train_predictions&#39;</span> <span class="p">,</span><span class="n">fontsize</span> <span class="o">=</span> <span class="s1">&#39;18&#39;</span><span class="p">)</span>
<span class="n">trainPlot</span> <span class="o">=</span><span class="n">plt</span><span class="o">.</span><span class="n">plot</span><span class="p">(</span><span class="n">train</span><span class="p">[[</span><span class="s1">&#39;Gr Liv Area&#39;</span><span class="p">]],</span> <span class="n">train_predictions</span><span class="p">,</span> <span class="n">color</span><span class="o">=</span><span class="s1">&#39;blue&#39;</span><span class="p">,</span> <span class="n">linewidth</span><span class="o">=</span><span class="mi">3</span><span class="p">)</span>
<span class="n">trainPlot</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[4]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>[&lt;matplotlib.lines.Line2D at 0x1a19271d68&gt;]</pre>
</div>

</div>

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
<p>And now lets put the model into test data set to see if it can predict the value precisely.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[5]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">matplotlib.pyplot</span> <span class="k">as</span> <span class="nn">plt</span>
<span class="n">plt</span><span class="o">.</span><span class="n">scatter</span><span class="p">(</span><span class="n">test</span><span class="p">[[</span><span class="s1">&#39;Gr Liv Area&#39;</span><span class="p">]],</span> <span class="n">test</span><span class="p">[[</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">]],</span>  <span class="n">color</span><span class="o">=</span><span class="s1">&#39;black&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">xlabel</span><span class="p">(</span><span class="s1">&#39;Gr Liv Area in Test&#39;</span><span class="p">,</span> <span class="n">fontsize</span> <span class="o">=</span> <span class="s1">&#39;18&#39;</span><span class="p">)</span>
<span class="n">plt</span><span class="o">.</span><span class="n">ylabel</span><span class="p">(</span><span class="s1">&#39;test_predictions&#39;</span> <span class="p">,</span><span class="n">fontsize</span> <span class="o">=</span> <span class="s1">&#39;18&#39;</span><span class="p">)</span>
<span class="n">testPlot</span> <span class="o">=</span> <span class="n">plt</span><span class="o">.</span><span class="n">plot</span><span class="p">(</span><span class="n">test</span><span class="p">[[</span><span class="s1">&#39;Gr Liv Area&#39;</span><span class="p">]],</span> <span class="n">test_predictions</span><span class="p">,</span> <span class="n">color</span><span class="o">=</span><span class="s1">&#39;blue&#39;</span><span class="p">,</span> <span class="n">linewidth</span><span class="o">=</span><span class="mi">3</span><span class="p">)</span>
<span class="n">testPlot</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[5]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>[&lt;matplotlib.lines.Line2D at 0x1a192b3ac8&gt;]</pre>
</div>

</div>

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
<p>Since all the data looks like concentrate on the linear regression model, we should conclude that the model can predict the "Sale Price" .</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Use-Multiple-Regression-to-model-the-data">Use Multiple Regression to model the data<a class="anchor-link" href="#Use-Multiple-Regression-to-model-the-data">&#182;</a></h2><hr>
<p>In the real world, Multiple Regression is a more useful technique since we need to evaluate more than one correlation in most cases. Now, we will still predict the SalePrice, but with one more variable -- Overall Condition (Overall Cond). In this case the model will be a <strong>Binary Linear Equation</strong> in the form of : 
$$
Y = a_0 + coef_{Cond} * (Overall Cond) + coef_{Area} * (Gr Liv Area)
$$</p>
<p>$a_0$ stands for the intial value while both "Overall Cond" and "Gr Liv Area" is zero</p>
<p>$coef_{Cond}$ stands for the coefficient of Overall Cond</p>
<p>$coef_{Area}$ stands for the coefficient of Gr Liv Area</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[6]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">from</span> <span class="nn">sklearn.metrics</span> <span class="k">import</span> <span class="n">mean_squared_error</span>
<span class="n">cols</span> <span class="o">=</span> <span class="p">[</span><span class="s1">&#39;Overall Cond&#39;</span><span class="p">,</span> <span class="s1">&#39;Gr Liv Area&#39;</span><span class="p">]</span>
<span class="n">lr</span><span class="o">.</span><span class="n">fit</span><span class="p">(</span><span class="n">train</span><span class="p">[</span><span class="n">cols</span><span class="p">],</span> <span class="n">train</span><span class="p">[</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">])</span>
<span class="n">train_predictions</span> <span class="o">=</span> <span class="n">lr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">train</span><span class="p">[</span><span class="n">cols</span><span class="p">])</span>
<span class="n">test_predictions</span> <span class="o">=</span> <span class="n">lr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">test</span><span class="p">[</span><span class="n">cols</span><span class="p">])</span>

<span class="n">train_rmse_2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">sqrt</span><span class="p">(</span><span class="n">mean_squared_error</span><span class="p">(</span><span class="n">train_predictions</span><span class="p">,</span> <span class="n">train</span><span class="p">[</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">]))</span>
<span class="n">test_rmse_2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">sqrt</span><span class="p">(</span><span class="n">mean_squared_error</span><span class="p">(</span><span class="n">test_predictions</span><span class="p">,</span> <span class="n">test</span><span class="p">[</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">]))</span>

<span class="nb">print</span><span class="p">(</span><span class="n">lr</span><span class="o">.</span><span class="n">coef_</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">lr</span><span class="o">.</span><span class="n">intercept_</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">train_rmse_2</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">test_rmse_2</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>[-409.56846611  116.73118339]
7858.691146390513
56032.398015258674
57066.90779448559
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>such that the linear model will be like: 
$$
Y = 7858.7 - 409.6 * (Overall Cond) + 116.7 * (Gr Liv Area)
$$</p>
<p>However, it's hard to make a geometric explanation since the model will be either surface or high-dimension which cant be plotted.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Handling-data-types-with-missing-values/non-numeric-values">Handling data types with missing values/non-numeric values<a class="anchor-link" href="#Handling-data-types-with-missing-values/non-numeric-values">&#182;</a></h2><p>In the machine learning workflow, once we've selected the model we want to use, selecting the appropriate features for that model is the next important step. In the following code snippets, I will explore how to use correlation between features and the target column, correlation between features, and variance of features to select features.</p>
<p>I will specifically focus on selecting from feature columns that don't have any missing values or don't need to be transformed to be useful (e.g. columns like Year Built and Year Remod/Add).</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[7]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">numerical_train</span> <span class="o">=</span> <span class="n">train</span><span class="o">.</span><span class="n">select_dtypes</span><span class="p">(</span><span class="n">include</span><span class="o">=</span><span class="p">[</span><span class="s1">&#39;int64&#39;</span><span class="p">,</span> <span class="s1">&#39;float&#39;</span><span class="p">])</span>
<span class="n">numerical_train</span> <span class="o">=</span> <span class="n">numerical_train</span><span class="o">.</span><span class="n">drop</span><span class="p">([</span><span class="s1">&#39;PID&#39;</span><span class="p">,</span> <span class="s1">&#39;Year Built&#39;</span><span class="p">,</span> <span class="s1">&#39;Year Remod/Add&#39;</span><span class="p">,</span> <span class="s1">&#39;Garage Yr Blt&#39;</span><span class="p">,</span> <span class="s1">&#39;Mo Sold&#39;</span><span class="p">,</span> <span class="s1">&#39;Yr Sold&#39;</span><span class="p">],</span> <span class="n">axis</span><span class="o">=</span><span class="mi">1</span><span class="p">)</span>
<span class="n">null_series</span> <span class="o">=</span> <span class="n">numerical_train</span><span class="o">.</span><span class="n">isnull</span><span class="p">()</span><span class="o">.</span><span class="n">sum</span><span class="p">()</span>
<span class="n">full_cols_series</span> <span class="o">=</span> <span class="n">null_series</span><span class="p">[</span><span class="n">null_series</span> <span class="o">==</span> <span class="mi">0</span><span class="p">]</span>
<span class="nb">print</span><span class="p">(</span><span class="n">full_cols_series</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Order              0
MS SubClass        0
Lot Area           0
Overall Qual       0
Overall Cond       0
1st Flr SF         0
2nd Flr SF         0
Low Qual Fin SF    0
Gr Liv Area        0
Full Bath          0
Half Bath          0
Bedroom AbvGr      0
Kitchen AbvGr      0
TotRms AbvGrd      0
Fireplaces         0
Garage Cars        0
Garage Area        0
Wood Deck SF       0
Open Porch SF      0
Enclosed Porch     0
3Ssn Porch         0
Screen Porch       0
Pool Area          0
Misc Val           0
SalePrice          0
dtype: int64
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Correlating-feature-columns-with-Target-Columns">Correlating feature columns with Target Columns<a class="anchor-link" href="#Correlating-feature-columns-with-Target-Columns">&#182;</a></h2><hr>
<p>I will show the the correlation between feature columns and target columns(SalesPrice) by percentage.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[8]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">train_subset</span> <span class="o">=</span> <span class="n">train</span><span class="p">[</span><span class="n">full_cols_series</span><span class="o">.</span><span class="n">index</span><span class="p">]</span>
<span class="n">corrmat</span> <span class="o">=</span> <span class="n">train_subset</span><span class="o">.</span><span class="n">corr</span><span class="p">()</span>
<span class="n">sorted_corrs</span> <span class="o">=</span> <span class="n">corrmat</span><span class="p">[</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">]</span><span class="o">.</span><span class="n">abs</span><span class="p">()</span><span class="o">.</span><span class="n">sort_values</span><span class="p">()</span>
<span class="nb">print</span><span class="p">(</span><span class="n">sorted_corrs</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Misc Val           0.009903
3Ssn Porch         0.038699
Low Qual Fin SF    0.060352
Order              0.068181
MS SubClass        0.088504
Overall Cond       0.099395
Screen Porch       0.100121
Bedroom AbvGr      0.106941
Kitchen AbvGr      0.130843
Pool Area          0.145474
Enclosed Porch     0.165873
2nd Flr SF         0.202352
Half Bath          0.272870
Lot Area           0.274730
Wood Deck SF       0.319104
Open Porch SF      0.344383
TotRms AbvGrd      0.483701
Fireplaces         0.485683
Full Bath          0.518194
1st Flr SF         0.657119
Garage Area        0.662397
Garage Cars        0.663485
Gr Liv Area        0.698990
Overall Qual       0.804562
SalePrice          1.000000
Name: SalePrice, dtype: float64
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Correlation-Matrix-Heatmap">Correlation Matrix Heatmap<a class="anchor-link" href="#Correlation-Matrix-Heatmap">&#182;</a></h2><p>We now have a decent list of candidate features to use in our model, sorted by how strongly they're correlated with the SalePrice column. For now, I will keep only the features that have a correlation of 0.3 or higher. This cutoff is a bit arbitrary and, in general, it's a good idea to experiment with this cutoff. For example, you can train and test models using the columns selected using different cutoffs and see where your model stops improving.</p>
<p>The next thing we need to look for is for potential collinearity between some of these feature columns. Collinearity is when 2 feature columns are highly correlated and stand the risk of duplicating information. If we have 2 features that convey the same information using 2 different measures or metrics, we need to choose just one or predictive accuracy can suffer.</p>
<p>While we can check for collinearity between 2 columns using the correlation matrix, we run the risk of information overload. We can instead generate a correlation matrix heatmap using Seaborn to visually compare the correlations and look for problematic pairwise feature correlations. Because we're looking for outlier values in the heatmap, this visual representation is easier.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[9]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="kn">import</span> <span class="nn">seaborn</span> <span class="k">as</span> <span class="nn">sns</span>
<span class="kn">import</span> <span class="nn">matplotlib.pyplot</span> <span class="k">as</span> <span class="nn">plt</span> 
<span class="n">plt</span><span class="o">.</span><span class="n">figure</span><span class="p">(</span><span class="n">figsize</span><span class="o">=</span><span class="p">(</span><span class="mi">10</span><span class="p">,</span><span class="mi">6</span><span class="p">))</span>
<span class="n">strong_corrs</span> <span class="o">=</span> <span class="n">sorted_corrs</span><span class="p">[</span><span class="n">sorted_corrs</span> <span class="o">&gt;</span> <span class="mf">0.3</span><span class="p">]</span>
<span class="n">corrmat</span> <span class="o">=</span> <span class="n">train_subset</span><span class="p">[</span><span class="n">strong_corrs</span><span class="o">.</span><span class="n">index</span><span class="p">]</span><span class="o">.</span><span class="n">corr</span><span class="p">()</span>
<span class="n">ax</span> <span class="o">=</span> <span class="n">sns</span><span class="o">.</span><span class="n">heatmap</span><span class="p">(</span><span class="n">corrmat</span><span class="p">)</span>
<span class="n">ax</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt output_prompt">Out[9]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>&lt;matplotlib.axes._subplots.AxesSubplot at 0x1a19605668&gt;</pre>
</div>

</div>

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
<h2 id="Train-and-Test-the-model">Train and Test the model<a class="anchor-link" href="#Train-and-Test-the-model">&#182;</a></h2><p>Based on the correlation matrix heatmap, we can tell that the following pairs of columns are strongly correlated:</p>
<ul>
<li>Gr Liv Area and TotRms AbvGrd</li>
<li>Garage Area and Garage Cars</li>
</ul>
<p>We will only use one of these pairs and remove any columns with missing values</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[11]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">final_corr_cols</span> <span class="o">=</span> <span class="n">strong_corrs</span><span class="o">.</span><span class="n">drop</span><span class="p">([</span><span class="s1">&#39;Garage Cars&#39;</span><span class="p">,</span> <span class="s1">&#39;TotRms AbvGrd&#39;</span><span class="p">])</span>
<span class="n">features</span> <span class="o">=</span> <span class="n">final_corr_cols</span><span class="o">.</span><span class="n">drop</span><span class="p">([</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">])</span><span class="o">.</span><span class="n">index</span>
<span class="n">target</span> <span class="o">=</span> <span class="s1">&#39;SalePrice&#39;</span>
<span class="n">clean_test</span> <span class="o">=</span> <span class="n">test</span><span class="p">[</span><span class="n">final_corr_cols</span><span class="o">.</span><span class="n">index</span><span class="p">]</span><span class="o">.</span><span class="n">dropna</span><span class="p">()</span>

<span class="n">lr</span> <span class="o">=</span> <span class="n">LinearRegression</span><span class="p">()</span>
<span class="n">lr</span><span class="o">.</span><span class="n">fit</span><span class="p">(</span><span class="n">train</span><span class="p">[</span><span class="n">features</span><span class="p">],</span> <span class="n">train</span><span class="p">[</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">])</span>

<span class="n">train_predictions</span> <span class="o">=</span> <span class="n">lr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">train</span><span class="p">[</span><span class="n">features</span><span class="p">])</span>
<span class="n">test_predictions</span> <span class="o">=</span> <span class="n">lr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">clean_test</span><span class="p">[</span><span class="n">features</span><span class="p">])</span>

<span class="n">train_mse</span> <span class="o">=</span> <span class="n">mean_squared_error</span><span class="p">(</span><span class="n">train_predictions</span><span class="p">,</span> <span class="n">train</span><span class="p">[</span><span class="n">target</span><span class="p">])</span>
<span class="n">test_mse</span> <span class="o">=</span> <span class="n">mean_squared_error</span><span class="p">(</span><span class="n">test_predictions</span><span class="p">,</span> <span class="n">clean_test</span><span class="p">[</span><span class="n">target</span><span class="p">])</span>

<span class="n">train_rmse</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">sqrt</span><span class="p">(</span><span class="n">train_mse</span><span class="p">)</span>
<span class="n">test_rmse</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">sqrt</span><span class="p">(</span><span class="n">test_mse</span><span class="p">)</span>

<span class="nb">print</span><span class="p">(</span><span class="n">train_rmse</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">test_rmse</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>34173.97629185851
41032.026120197705
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Removing-low-variance-features">Removing low variance features<a class="anchor-link" href="#Removing-low-variance-features">&#182;</a></h2><p>The last technique I will explore is removing features with low variance. When the values in a feature column have low variance, they don't meaningfully contribute to the model's predictive capability. On the extreme end, let's imagine a column with a variance of 0. This would mean that all of the values in that column were exactly the same. This means that the column isn't informative and isn't going to help the model make better predictions.</p>
<p>To make apples to apples comparisions between columns, we need to standardize all of the columns to vary between 0 and 1. Then, we can set a cutoff value for variance and remove features that have less than that variance amount.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[12]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">unit_train</span> <span class="o">=</span> <span class="n">train</span><span class="p">[</span><span class="n">features</span><span class="p">]</span><span class="o">/</span><span class="p">(</span><span class="n">train</span><span class="p">[</span><span class="n">features</span><span class="p">]</span><span class="o">.</span><span class="n">max</span><span class="p">())</span>
<span class="n">sorted_vars</span> <span class="o">=</span> <span class="n">unit_train</span><span class="o">.</span><span class="n">var</span><span class="p">()</span><span class="o">.</span><span class="n">sort_values</span><span class="p">()</span>
<span class="nb">print</span><span class="p">(</span><span class="n">sorted_vars</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Open Porch SF    0.013938
Gr Liv Area      0.018014
Full Bath        0.018621
1st Flr SF       0.019182
Overall Qual     0.019842
Garage Area      0.020347
Wood Deck SF     0.033064
Fireplaces       0.046589
dtype: float64
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Final-Model">Final Model<a class="anchor-link" href="#Final-Model">&#182;</a></h2><p>Let's set a cutoff variance of 0.015, remove the Open Porch SF feature, and train and test a model using the remaining features.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[13]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">features</span> <span class="o">=</span> <span class="n">features</span><span class="o">.</span><span class="n">drop</span><span class="p">([</span><span class="s1">&#39;Open Porch SF&#39;</span><span class="p">])</span>

<span class="n">clean_test</span> <span class="o">=</span> <span class="n">test</span><span class="p">[</span><span class="n">final_corr_cols</span><span class="o">.</span><span class="n">index</span><span class="p">]</span><span class="o">.</span><span class="n">dropna</span><span class="p">()</span>

<span class="n">lr</span> <span class="o">=</span> <span class="n">LinearRegression</span><span class="p">()</span>
<span class="n">lr</span><span class="o">.</span><span class="n">fit</span><span class="p">(</span><span class="n">train</span><span class="p">[</span><span class="n">features</span><span class="p">],</span> <span class="n">train</span><span class="p">[</span><span class="s1">&#39;SalePrice&#39;</span><span class="p">])</span>

<span class="n">train_predictions</span> <span class="o">=</span> <span class="n">lr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">train</span><span class="p">[</span><span class="n">features</span><span class="p">])</span>
<span class="n">test_predictions</span> <span class="o">=</span> <span class="n">lr</span><span class="o">.</span><span class="n">predict</span><span class="p">(</span><span class="n">clean_test</span><span class="p">[</span><span class="n">features</span><span class="p">])</span>

<span class="n">train_mse</span> <span class="o">=</span> <span class="n">mean_squared_error</span><span class="p">(</span><span class="n">train_predictions</span><span class="p">,</span> <span class="n">train</span><span class="p">[</span><span class="n">target</span><span class="p">])</span>
<span class="n">test_mse</span> <span class="o">=</span> <span class="n">mean_squared_error</span><span class="p">(</span><span class="n">test_predictions</span><span class="p">,</span> <span class="n">clean_test</span><span class="p">[</span><span class="n">target</span><span class="p">])</span>

<span class="n">train_rmse_2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">sqrt</span><span class="p">(</span><span class="n">train_mse</span><span class="p">)</span>
<span class="n">test_rmse_2</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">sqrt</span><span class="p">(</span><span class="n">test_mse</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">lr</span><span class="o">.</span><span class="n">intercept_</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">lr</span><span class="o">.</span><span class="n">coef_</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">train_rmse_2</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="n">test_rmse_2</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>-112764.87061464708
[   37.88152677  7086.98429942 -2221.97281278    43.18536387
    64.88085639    38.71125489 24553.18365123]
34372.696707783965
40591.42702437726
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>The final model will be a 7-dimension linear function which looks like:
$$
Y = -112765 + 37.9 * Wood Deck + 7087 * Fire Places - 2222 * Full Bath + 43 * 1st Fle SF + 65 * garage Area + 39 * Liv area + 24553 * Overall Qual
$$</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Feature-transformation">Feature transformation<a class="anchor-link" href="#Feature-transformation">&#182;</a></h2><p>To understand how linear regression works, I have stuck to using features from the training dataset that contained no missing values and were already in a convenient numeric representation. In this mission, we'll explore how to transform some of the the remaining features so we can use them in our model. Broadly, the process of processing and creating new features is known as feature engineering.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[14]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">train</span> <span class="o">=</span> <span class="n">data</span><span class="p">[</span><span class="mi">0</span><span class="p">:</span><span class="mi">1460</span><span class="p">]</span>
<span class="n">test</span> <span class="o">=</span> <span class="n">data</span><span class="p">[</span><span class="mi">1460</span><span class="p">:]</span>
<span class="n">train_null_counts</span> <span class="o">=</span> <span class="n">train</span><span class="o">.</span><span class="n">isnull</span><span class="p">()</span><span class="o">.</span><span class="n">sum</span><span class="p">()</span>
<span class="n">df_no_mv</span> <span class="o">=</span> <span class="n">train</span><span class="p">[</span><span class="n">train_null_counts</span><span class="p">[</span><span class="n">train_null_counts</span><span class="o">==</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">index</span><span class="p">]</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Categorical-Features">Categorical Features<a class="anchor-link" href="#Categorical-Features">&#182;</a></h2><p>You'll notice that some of the columns in the data frame df_no_mv contain string values. To use these features in our model, we need to transform them into numerical representations</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[15]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">text_cols</span> <span class="o">=</span> <span class="n">df_no_mv</span><span class="o">.</span><span class="n">select_dtypes</span><span class="p">(</span><span class="n">include</span><span class="o">=</span><span class="p">[</span><span class="s1">&#39;object&#39;</span><span class="p">])</span><span class="o">.</span><span class="n">columns</span>

<span class="k">for</span> <span class="n">col</span> <span class="ow">in</span> <span class="n">text_cols</span><span class="p">:</span>
    <span class="nb">print</span><span class="p">(</span><span class="n">col</span><span class="o">+</span><span class="s2">&quot;:&quot;</span><span class="p">,</span> <span class="nb">len</span><span class="p">(</span><span class="n">train</span><span class="p">[</span><span class="n">col</span><span class="p">]</span><span class="o">.</span><span class="n">unique</span><span class="p">()))</span>
<span class="k">for</span> <span class="n">col</span> <span class="ow">in</span> <span class="n">text_cols</span><span class="p">:</span>
    <span class="n">train</span><span class="p">[</span><span class="n">col</span><span class="p">]</span> <span class="o">=</span> <span class="n">train</span><span class="p">[</span><span class="n">col</span><span class="p">]</span><span class="o">.</span><span class="n">astype</span><span class="p">(</span><span class="s1">&#39;category&#39;</span><span class="p">)</span>
<span class="n">train</span><span class="p">[</span><span class="s1">&#39;Utilities&#39;</span><span class="p">]</span><span class="o">.</span><span class="n">cat</span><span class="o">.</span><span class="n">codes</span><span class="o">.</span><span class="n">value_counts</span><span class="p">()</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>(&#39;MS Zoning:&#39;, 6)
(&#39;Street:&#39;, 2)
(&#39;Lot Shape:&#39;, 4)
(&#39;Land Contour:&#39;, 4)
(&#39;Utilities:&#39;, 3)
(&#39;Lot Config:&#39;, 5)
(&#39;Land Slope:&#39;, 3)
(&#39;Neighborhood:&#39;, 26)
(&#39;Condition 1:&#39;, 9)
(&#39;Condition 2:&#39;, 6)
(&#39;Bldg Type:&#39;, 5)
(&#39;House Style:&#39;, 8)
(&#39;Roof Style:&#39;, 6)
(&#39;Roof Matl:&#39;, 5)
(&#39;Exterior 1st:&#39;, 14)
(&#39;Exterior 2nd:&#39;, 16)
(&#39;Exter Qual:&#39;, 4)
(&#39;Exter Cond:&#39;, 5)
(&#39;Foundation:&#39;, 6)
(&#39;Heating:&#39;, 6)
(&#39;Heating QC:&#39;, 4)
(&#39;Central Air:&#39;, 2)
(&#39;Electrical:&#39;, 4)
(&#39;Kitchen Qual:&#39;, 5)
(&#39;Functional:&#39;, 7)
(&#39;Paved Drive:&#39;, 3)
(&#39;Sale Type:&#39;, 9)
(&#39;Sale Condition:&#39;, 5)
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stderr output_text">
<pre>C:\Users\dongl4\Anaconda2\lib\site-packages\ipykernel_launcher.py:6: SettingWithCopyWarning: 
A value is trying to be set on a copy of a slice from a DataFrame.
Try using .loc[row_indexer,col_indexer] = value instead

See the caveats in the documentation: http://pandas.pydata.org/pandas-docs/stable/indexing.html#indexing-view-versus-copy
  
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt output_prompt">Out[15]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>0    1457
2       2
1       1
dtype: int64</pre>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Dummy-Coding">Dummy Coding<a class="anchor-link" href="#Dummy-Coding">&#182;</a></h2><p>When we convert a column to the categorical data type, pandas assigns a number from 0 to n-1 (where n is the number of unique values in a column) for each value. The drawback with this approach is that one of the assumptions of linear regression is violated here. Linear regression operates under the assumption that the features are linearly correlated with the target column. For a categorical feature, however, there's no actual numerical meaning to the categorical codes that pandas assigned for that colum. An increase in the Utilities column from 1 to 2 has no correlation value with the target column, and the categorical codes are instead used for uniqueness and exclusivity (the category associated with 0 is different than the one associated with 1).</p>
<p>The common solution is to use a technique called dummy coding</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[16]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">dummy_cols</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">DataFrame</span><span class="p">()</span>
<span class="k">for</span> <span class="n">col</span> <span class="ow">in</span> <span class="n">text_cols</span><span class="p">:</span>
    <span class="n">col_dummies</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">get_dummies</span><span class="p">(</span><span class="n">train</span><span class="p">[</span><span class="n">col</span><span class="p">])</span>
    <span class="n">train</span> <span class="o">=</span> <span class="n">pd</span><span class="o">.</span><span class="n">concat</span><span class="p">([</span><span class="n">train</span><span class="p">,</span> <span class="n">col_dummies</span><span class="p">],</span> <span class="n">axis</span><span class="o">=</span><span class="mi">1</span><span class="p">)</span>
    <span class="k">del</span> <span class="n">train</span><span class="p">[</span><span class="n">col</span><span class="p">]</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[17]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">train</span><span class="p">[</span><span class="s1">&#39;years_until_remod&#39;</span><span class="p">]</span> <span class="o">=</span> <span class="n">train</span><span class="p">[</span><span class="s1">&#39;Year Remod/Add&#39;</span><span class="p">]</span> <span class="o">-</span> <span class="n">train</span><span class="p">[</span><span class="s1">&#39;Year Built&#39;</span><span class="p">]</span>
</pre></div>

    </div>
</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Missing-Values">Missing Values<a class="anchor-link" href="#Missing-Values">&#182;</a></h2><p>Now I will focus on handling columns with missing values. When values are missing in a column, there are two main approaches we can take:</p>
<ul>
<li>Remove rows containing missing values for specific columns
Pro: Rows containing missing values are removed, leaving only clean data for modeling
Con: Entire observations from the training set are removed, which can reduce overall prediction accuracy</li>
<li>Impute (or replace) missing values using a descriptive statistic from the column
Pro: Missing values are replaced with potentially similar estimates, preserving the rest of the observation in the model.
Con: Depending on the approach, we may be adding noisy data for the model to learn</li>
</ul>
<p>Given that we only have 1460 training examples (with ~80 potentially useful features), we don't want to remove any of these rows from the dataset. Let's instead focus on imputation techniques.</p>
<p>We'll focus on columns that contain at least 1 missing value but less than 365 missing values (or 25% of the number of rows in the training set). There's no strict threshold, and many people instead use a 50% cutoff (if half the values in a column are missing, it's automatically dropped). Having some domain knowledge can help with determining an acceptable cutoff value.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[18]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">df_missing_values</span> <span class="o">=</span> <span class="n">train</span><span class="p">[</span><span class="n">train_null_counts</span><span class="p">[(</span><span class="n">train_null_counts</span><span class="o">&gt;</span><span class="mi">0</span><span class="p">)</span> <span class="o">&amp;</span> <span class="p">(</span><span class="n">train_null_counts</span><span class="o">&lt;</span><span class="mi">584</span><span class="p">)]</span><span class="o">.</span><span class="n">index</span><span class="p">]</span>

<span class="nb">print</span><span class="p">(</span><span class="n">df_missing_values</span><span class="o">.</span><span class="n">isnull</span><span class="p">()</span><span class="o">.</span><span class="n">sum</span><span class="p">())</span>
<span class="nb">print</span><span class="p">(</span><span class="n">df_missing_values</span><span class="o">.</span><span class="n">dtypes</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Lot Frontage      249
Mas Vnr Type       11
Mas Vnr Area       11
Bsmt Qual          40
Bsmt Cond          40
Bsmt Exposure      41
BsmtFin Type 1     40
BsmtFin SF 1        1
BsmtFin Type 2     41
BsmtFin SF 2        1
Bsmt Unf SF         1
Total Bsmt SF       1
Bsmt Full Bath      1
Bsmt Half Bath      1
Garage Type        74
Garage Yr Blt      75
Garage Finish      75
Garage Qual        75
Garage Cond        75
dtype: int64
Lot Frontage      float64
Mas Vnr Type       object
Mas Vnr Area      float64
Bsmt Qual          object
Bsmt Cond          object
Bsmt Exposure      object
BsmtFin Type 1     object
BsmtFin SF 1      float64
BsmtFin Type 2     object
BsmtFin SF 2      float64
Bsmt Unf SF       float64
Total Bsmt SF     float64
Bsmt Full Bath    float64
Bsmt Half Bath    float64
Garage Type        object
Garage Yr Blt     float64
Garage Finish      object
Garage Qual        object
Garage Cond        object
dtype: object
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Inputing-missing-values">Inputing missing values<a class="anchor-link" href="#Inputing-missing-values">&#182;</a></h2><p>It looks like about half of the columns in df_missing_values are string columns (object data type), while about half are float64 columns. For numerical columns with missing values, a common strategy is to compute the mean, median, or mode of each column and replace all missing values in that column with that value</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[19]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="n">float_cols</span> <span class="o">=</span> <span class="n">df_missing_values</span><span class="o">.</span><span class="n">select_dtypes</span><span class="p">(</span><span class="n">include</span><span class="o">=</span><span class="p">[</span><span class="s1">&#39;float&#39;</span><span class="p">])</span>
<span class="n">float_cols</span> <span class="o">=</span> <span class="n">float_cols</span><span class="o">.</span><span class="n">fillna</span><span class="p">(</span><span class="n">df_missing_values</span><span class="o">.</span><span class="n">mean</span><span class="p">())</span>
<span class="nb">print</span><span class="p">(</span><span class="n">float_cols</span><span class="o">.</span><span class="n">isnull</span><span class="p">()</span><span class="o">.</span><span class="n">sum</span><span class="p">())</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Lot Frontage      0
Mas Vnr Area      0
BsmtFin SF 1      0
BsmtFin SF 2      0
Bsmt Unf SF       0
Total Bsmt SF     0
Bsmt Full Bath    0
Bsmt Half Bath    0
Garage Yr Blt     0
dtype: int64
</pre>
</div>
</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h2 id="Conclusion">Conclusion<a class="anchor-link" href="#Conclusion">&#182;</a></h2><hr>
<p>This note book talks about how to do linear regression in machine learning by analysing the real example -- Boston housing data. In this case, to do the linear regression not only means we need to figure out the correlation among all the variable, but also eliminate the variable with either insignificant influence or missing value.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p><a href="https://colab.research.google.com/drive/1s3-OohP5G6UAg4dmOmBJwuhN8V6ymKNh"><img src="https://colab.research.google.com/assets/colab-badge.svg" alt="Open In Colab"></a></p>

</div>
</div>
</div>
    </div>
  </div>
</body>

 


</html>