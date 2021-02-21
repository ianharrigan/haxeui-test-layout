package ;
import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/dialog.xml"))
class MyDialog extends Dialog {
    public function new() {
        super();
        
        this.buttons = DialogButton.APPLY | DialogButton.CANCEL | "Custom Button";
    }
    
}