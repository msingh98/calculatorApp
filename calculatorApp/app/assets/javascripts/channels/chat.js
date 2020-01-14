App.chat = App.cable.subscriptions.create("ChatChannel", {
  connected: function() {
    console.log("Connected to Chat Channel");
  },
  disconnected: function() {
    console.log("Disconnected to Chat Channel");

  },
  received: function(data) {
    var calculations = $('#title');
    calculations.append(data['calculation']);
  }
});