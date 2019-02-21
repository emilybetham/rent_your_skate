const tabDynamic = () => {

  document.querySelectorAll("a.tab-underlined").forEach((tab) => {

    tab.addEventListener("click", (event) => {
      event.preventDefault();
      let activeTab = document.querySelector("a.tab-underlined.active");
      activeTab.classList.remove("active");
      activeTab = event.currentTarget
      activeTab.classList.add("active");
      document.querySelector(".tab-content.active").classList.remove("active");
      document.getElementById(activeTab.dataset.contentName).classList.add('active')

    });

  });
}

export { tabDynamic };





