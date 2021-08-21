#! /bin/make -f

# Multilingual Dvorak for Programmers Copyright (C) 2020 Der Linux König

# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later
# version.

# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
# details.

# You should have received a copy of the GNU General Public License along with
# this program.  If not, see <https://www.gnu.org/licenses/>.

#------------------------------------------------------------------------------#

# Set the default goal.
ifeq ($(.DEFAULT_GOAL),)
	.DEFAULT_GOAL = nothing
endif

# Tell make which targets are commands.
.PHONY: nothing install remove

# A command that does nothing.
nothing:
	# Nothing done.

# A command that installs the layout on the system.
install:
	sudo cp mdfp /usr/share/X11/xkb/symbols/

# A command that removes the layout from the system.
remove:
	sudo rm /usr/share/X11/xkb/symbols/mdfp
