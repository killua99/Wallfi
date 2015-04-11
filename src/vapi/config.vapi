/**
 * src/vapi/config.vapi
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

[CCode (cprefix = "", lower_case_cprefix = "WALLFI_", cheader_filename = "config.h")]

namespace Wallfi.Config {
  public const int VERSION_MAJOR;
  public const int VERSION_MINOR;
  public const int VERSION_PATCH;
  public const string VERSION;

  public const string COPYRIGHT_NOTICE;
  public const string SHORT_DESCRIPTION;
  public const string WEBSITE;

  public const string GETTEXT_PACKAGE;
  public const string GETTEXT_PATH;

}
