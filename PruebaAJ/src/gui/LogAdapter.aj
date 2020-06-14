package gui;



aspect LogAdapter {

    before(String s): call(void Log.log(String)) && args(s) {
        if (Main.panel != null) {
            Main.panel.cp.println(s);
        }
    }
}