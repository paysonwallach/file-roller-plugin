/*
 * Copyright (c) 2021 Payson Wallach
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

namespace Files.Plugins {
    private class FileRollerMenuItem : Gtk.MenuItem {
        private GLib.File[] files;

        public FileRollerMenuItem (GLib.File[] files) {
            this.files = files;
            this.label = "Compress";
        }

        public override void activate () {
            var args = new string[files.length + 2];

            args[0] = "file-roller";
            args[1] = "--add";

            var i = 2;
            foreach (var file in files)
                args[i++] = file.get_path ();

            try {
                new Subprocess.newv (args, SubprocessFlags.NONE);
            } catch (Error err) {
                warning (err.message);
            }
        }

    }

    public class FileRoller : Base {
        public override void context_menu (Gtk.Widget widget, List<Files.File> gof_files) {
            if (gof_files == null)
                return;

            var files = new Gee.ArrayList<GLib.File>();
            foreach (unowned Files.File file in gof_files)
                if (file.location != null)
                    if (file.location.get_uri_scheme () == "recent")
                        files.add (GLib.File.new_for_uri (file.get_display_target_uri ()));
                    else
                        files.add (file.location);

            var menu = widget as Gtk.Menu;
            var menu_item = new FileRollerMenuItem (files.to_array ());

            plugins.menuitem_references.add (menu_item);
            menu.append (menu_item);
            menu_item.show ();
        }

    }

}

public Files.Plugins.Base module_init () {
    return new Files.Plugins.FileRoller ();
}
