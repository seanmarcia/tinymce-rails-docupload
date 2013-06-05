(function() {
  tinymce.PluginManager.requireLangPack('uploaddoc');
  tinymce.create('tinymce.plugins.UploadDocPlugin', {
    init: function(ed, url) {
      ed.addCommand('mceUploadDoc', function() {
        return ed.windowManager.open({
          file: url + '/dialog.html',
          width: 320 + parseInt(ed.getLang('uploaddoc.delta_width', 0)),
          height: 180 + parseInt(ed.getLang('uploaddoc.delta_height', 0)),
          inline: 1
        }, {
          plugin_url: url
        });
      });
      ed.addButton('uploaddoc', {
        title: 'uploaddoc.desc',
        cmd: 'mceUploadDoc',
        image: url + '/img/uploaddoc.png'
      });
      return ed.onNodeChange.add(function(ed, cm, n) {
        return cm.setActive('uploaddoc', n.nodeName === 'IMG');
      });
    },
    createControl: function(n, cm) {
      return null;
    },
    getInfo: function() {
      return {
        longname: 'UploadDoc plugin',
        author: 'Sean Marcia (borrows heavily from work done by Per Christian B. Viken)',
        authorurl: 'chss.gmu.edu',
        infourl: 'chss.gmu.edu',
        version: '1.0'
      };
    }
  });
  return tinymce.PluginManager.add('uploaddoc', tinymce.plugins.UploadDocPlugin);
})();