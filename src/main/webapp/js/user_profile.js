




  // trigger and display a Bootstrap modal window
  document.addEventListener("DOMContentLoaded", () => {
      const openBtn = document.getElementById("openDeleteModal");
      const modal = new bootstrap.Modal(document.getElementById("deleteAccountModal"));
	  
	  //Enable/Disable Delete Button
      const userInput = document.getElementById("confirmUserId");
      const deleteBtn = document.getElementById("deleteBtn");
      const expectedId = document.querySelector("input[name='usrid']").value;

      openBtn.addEventListener("click", () => {
          userInput.value = "";
          deleteBtn.disabled = true;
          modal.show();
      });

      userInput.addEventListener("input", () => {
          deleteBtn.disabled = userInput.value.trim() !== expectedId;
      });
  });

