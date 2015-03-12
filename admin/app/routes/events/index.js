import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.find('event');
  },

  actions: {
    createEvent: function() {
      var route = this,
          controller = this.controllerFor('events.index'),
          rawEvent = controller.getProperties('name');

      event = this.store.createRecord('event', rawEvent);
      event.save().then(function(data) {
        controller.set('name', '');
      }, function(error) {
        alert('OOPS: ' + error.text);
      });
    },
  },
});
