/**
 * src/Gui.vala
 * Copyright 2015 Luigi Guevara <@killua99>
 *
 * This file is part of Wallfi.
 *
 * Wallfi is free software: you can redistribute it
 * and/or modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * Wallfi is distributed in the hope that it will be
 * useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MiERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
 * Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with Wallfi. If not, see http://www.gnu.org/licenses/.
 */

using Gtk;

namespace Wallfi {

  public class Gui : Window {

    private Button set_wallpaper_button;
    // private Button cancel_button;
    // private Button save_button;
    // private Button edit_button;
    // private Button delete_button;
    private Grid grid;

    public static Gui () {

      Builder builder = new Builder();

      this.title = "Wallfi";

      set_border_width (12);
      set_position (WindowPosition.CENTER);
      set_default_size (640, 480);

      this.destroy.connect (Gtk.main_quit);

      // Buttons
      // cancel_button = builder.get_object("cancel_button") as Button;

      set_wallpaper_button = builder.get_object("set_wallpaper_button") as Button;

      set_wallpaper_button.clicked.connect(search_file);

      // Grid
      grid = builder.get_object("grid") as Grid;

      grid.orientation = Orientation.VERTICAL;
      grid.row_spacing = 6;
      grid.column_spacing = 6;

      grid.attach (set_wallpaper_button, 0, 0, 1, 1);

      add (grid);
    }

    private void search_file () {

//      Gtk.FileChooserDialog file_selection_dialog = new Gtk.FileChooserDialog(
//        _("Save file"), null, Gtk.FileChooserAction.SAVE,
//        "_Cancel", Gtk.ResponseType.CANCEL,
//        _("Save"), Gtk.ResponseType.ACCEPT
//      );
      FileChooserDialog file_selection_dialog = new FileChooserDialog(
        "Save file", null, FileChooserAction.SAVE,
        "_Cancel", ResponseType.CANCEL,
        "Save", ResponseType.ACCEPT
      );

      // file_selection_dialog.do_overwrite_confirmation = true;
      // file_selection_dialog.set_current_name(ft.name);

      int res = file_selection_dialog.run();

      if (res == ResponseType.ACCEPT) {
        string path = file_selection_dialog.get_filename();
        file_selection_dialog.destroy();

        // Logger.log(LogLevel.INFO, "Trying to saving to: " + path);

        File file = File.new_for_path(path);

        if (file.query_exists()) {
          try {
            file.replace(null, false, FileCreateFlags.REPLACE_DESTINATION);
          }
          catch (Error e) {
            // Logger.log(LogLevel.ERROR, "Error while trying to create file: " + e.message);
          }
        }

        // filetransfer_accepted(ft);
        // ft.status = FileTransferStatus.IN_PROGRESS;
        // ft.path = path;
        return;
      }

      file_selection_dialog.destroy();
    }
  }
}
