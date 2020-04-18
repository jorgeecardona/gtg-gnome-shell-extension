====================================
Getting Things Gnome Shell extension
====================================

A GTG shell extension for Gnome 3.


The initial integration of GTG with GNOME Shell was a 2012 Summer of Code project realized by [Baptiste Saleil](https://github.com/bsaleil).

 - [extension page](https://extensions.gnome.org/extension/409/gtg-integration/)
 - [Summer of Code project page](https://wiki.gnome.org/Outreach/SummerOfCode/2012/Projects/BaptisteSaleil_GTG_GNOME_Shell)
 - created by [Baptiste Saleil](https://github.com/bsaleil)


Installation
============


Manual Installation
-------------------

Clone the repository::

  git clone https://github.com/jorgeecardona/gtg-shell-extension.git

Checkout the intended branch::

  git checkout master

Build a fresh distribution package::

  make dist

This will create a distributable archive located in the ``dist/`` folder.

Install in your local extensions folder using::

  make install

Afterwards, enable the extension and change the preferences using Tweak Tool, or on ``https://extensions.gnome.org/local/``

Usage
=====

Search in overview
------------------

![Search in overview](https://raw.githubusercontent.com/getting-things-gnome/gtg-gnome-shell-extension/master/documents/guadec/search.png "Search in overview")

This feature is simple to use.
Open the overview by pressing "super" key or move your mouse on top left corner or click on "Activities" button, type some letters to search in your tasks, and the extension will displays results.
The task editor will be open if you click on a task.

Calendar menu
-------------

![Calendar Menu](https://raw.githubusercontent.com/getting-things-gnome/gtg-gnome-shell-extension/master/documents/guadec/calendar.png "Calendar Menu")

The second feature bring with the extension is the calendar menu which can be open by clicking on the date in the topbar.
For now, the GTG calendar menu will replace the existing, synchornization of both is planned for the future.
This menu can be split in two others, tasks menu and todo list.

Tasks menu

This menu shows GTG's tasks to do for selected day in calendar menu, on the left.
You can see two different colors for your tasks.
The first one (Grey) displays tasks which has start date identic to the day selected and the second one (Dark grey) displays only tasks with a start date before the day selected and/or a due date after the day selected.

Todo list
~~~~~~~~~

On the right side of the calendar menu is the todo list.
This menu displays only tasks without start date AND without due date.
By this way, every tasks are listed to user.

Preferences
~~~~~~~~~~~

![Preferences](https://raw.githubusercontent.com/getting-things-gnome/gtg-gnome-shell-extension/master/documents/guadec/prefs.png "Preferences")
