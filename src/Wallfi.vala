/**
 * src/Wallfi.vala
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
      // GLib.Intl.setlocale(GLib.LocaleCategory.MESSAGES, "");
      // GLib.Intl.textdomain(Config.GETTEXT_PACKAGE);
      // GLib.Intl.bind_textdomain_codeset(Config.GETTEXT_PACKAGE, "utf-8");

      Gtk.init (ref args);

      var Wallfi = new Gui();

      Gtk.main ();
      return 0;
    }
  }
}
