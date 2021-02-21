package ;

import haxe.ui.HaxeUIApp;
import haxe.ui.Toolkit;
import haxe.ui.components.Button;
import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.core.Component;
import haxe.ui.macros.ComponentMacros;
import haxe.ui.themes.Theme;

class Main {
    public static function main() {
        Toolkit.theme = Theme.DARK;
        var app = new HaxeUIApp();
        app.ready(function() {
            var mainView:Component = ComponentMacros.buildComponent("assets/main-view.xml");
            app.addComponent(mainView);

            var testDialog:Dialog = mainView.findComponent("testDialog", Dialog);
            if (testDialog != null) {
                testDialog.buttons = DialogButton.APPLY | DialogButton.CANCEL | "Custom Button";
                @:privateAccess testDialog.createButtons();
            }

            /*
            mainView.findComponent("showDialog", Button).onClick = function(e) {
                var d = new MyDialog();
                d.show();
            }
            */
            
            app.start();
        });
    }
}
