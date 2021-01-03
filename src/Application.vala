public class MyApp : Gtk.Application {
    public MyApp () {
        Object (
            application_id: "com.github.rugalo798.valaGtkGrid",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this) {
            default_height = 300,
            default_width = 300,
            title = "GtkGrid"
        };

        var grid = new Gtk.Grid ();
        grid.orientation = Gtk.Orientation.VERTICAL;

        grid.add(new Gtk.Label("Filho 1"));
        grid.add(new Gtk.Label("Filho 2"));

        main_window.add(grid);
        main_window.show_all();
    }

    public static int main (string[] args) {
        return new MyApp().run(args);
    }
}