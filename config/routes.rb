# redmics - redmine ics export plugin
# Copyright (c) 2012 Frank Schwarz, frank.schwarz@buschmais.com
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

RedmineApp::Application.routes.draw do
  match 'icalendar/all_projects/:assignment/issues.:format', :to => 'i_calendar#index', :via => 'get'
  match 'icalendar/all_projects/:assignment/:status/issues.:format', :to => 'i_calendar#index', :via => 'get'
  match 'icalendar/:project_id/:assignment/issues.:format', :to => 'i_calendar#index', :via => 'get'
  match 'icalendar/:project_id/:assignment/:status/issues.:format', :to => 'i_calendar#index', :via => 'get'
  match 'my/redmics_settings', :to => 'my#redmics_settings', :via => [:get, :post]
  match 'my/redmics_settings/reset', :to => 'my#redmics_settings_reset', :via => 'get'
end
