/**
 * src/wallfi.vala
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

namespace Wallfi {

  public class Wallfi : GLib.Object {

    public static int main (string[] args) {
      Gtk.init (ref args);

      var window = new Gtk.Window ();

      var grid = new Gtk.Grid ();

      var button = new Gtk.Button.with_label ("Set wallpaper");

      var label = new Gtk.Label (null);

      var rotate = new Gtk.Button.with_label ("Rotate");

      var label_rotate = new Gtk.Label ("Horizontal");

      /**
       * Window definition
       */
      window.title = "Wallfi";
      window.set_border_width (12);
      window.set_position (Gtk.WindowPosition.CENTER);
      window.set_default_size (350, 70);
      window.destroy.connect (Gtk.main_quit);

      /**
       * Button
       */
      button.clicked.connect (() => {
        label.label = "Wallfi";
        button.sensitive = false;
      });

      rotate.clicked.connect (() => {
        label_rotate.angle = 90;
        label_rotate.label = "Vertical";
        rotate.sensitive = false;
      });

      /**
       * Grid area
       */
      grid.orientation = Gtk.Orientation.VERTICAL;
      grid.row_spacing = 6;
      grid.column_spacing = 6;

      grid.attach (button, 0, 0, 1, 1);
      grid.attach_next_to (label, button, Gtk.PositionType.RIGHT, 1, 1);

      grid.attach (rotate, 0, 1, 1, 1);
      grid.attach_next_to(label_rotate, rotate, Gtk.PositionType.RIGHT, 1, 1);

      // grid.add (button);
      // grid.add (label);

      window.add (grid);
      window.show_all ();

      Gtk.main ();
      return 0;
    }
  }
}
