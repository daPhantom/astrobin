# Django
from django.conf.urls.defaults import *
from django.views.generic import *

# This app
from astrobin_apps_users.views import TogglePropertyUsersAjaxView

urlpatterns = patterns('',
    url(
        r'toggleproperty_users_ajax/(?P<property_type>\w+)/(?P<object_id>\d+)/(?P<content_type_id>\d+)/$',
        TogglePropertyUsersAjaxView.as_view(),
        name = 'astrobin_apps_users.toggleproperty_users_ajax'),
)

