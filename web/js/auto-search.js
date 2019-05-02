$(function () {
     $('BODY').bind('click.select2body', function () {
         /* global variable openselect2 -when defined and not null - contains currently open select2 widget */
         if (typeof openselect2 !== 'undefined' && openselect2 != null) {
             $(openselect2).select2('close');
         }
     });
     $('head').append('<style>.select2-drop-mask {visibility:hidden}</style>') //thankfully .show() does not override visibility:hidden
     $('select').select2()
         .on("select2-focus", function () {
         if (typeof openselect2 !== 'undefined' && openselect2 !== this) {
             $(openselect2).select2('close');
         }
     })
         .on("select2-opening", function () {
         openselect2 = this;
     })
         .on("select2-close", function () {
         if (typeof openselect2 !== 'undefined' && openselect2 === this) {
             openselect2 = null;
         }
     });
 });