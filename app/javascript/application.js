// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

document.addEventListener("DOMContentLoaded", () => {
  console.log("loaded via turbo:load");
  const target = document.getElementById("quiz-question");
  if (target) {
    target.scrollIntoView({ behavior: "smooth" });
  }
});

