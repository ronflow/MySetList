//= require rails-ujs
//= require_tree .


document.addEventListener("DOMContentLoaded", function() {
  const tbody = document.getElementById("queue-table-body");
  if (!tbody || typeof Sortable === "undefined") return;

  Sortable.create(tbody, {
    animation: 150,
    onEnd: function () {
      const order = Array.from(tbody.querySelectorAll("tr")).map(tr => tr.dataset.id);
      fetch(window.location.pathname.replace(/\/$/, "") + "/reorder", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').content
        },
        body: JSON.stringify({ order: order })
      });
    }
  });
});