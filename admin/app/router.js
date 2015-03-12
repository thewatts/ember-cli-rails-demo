import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: '/admin/',
});

Router.map(function() {
  this.resource('events', function() {
    this.route('event', { path: ':slug' }, function() {});
  });
});

export default Router;
