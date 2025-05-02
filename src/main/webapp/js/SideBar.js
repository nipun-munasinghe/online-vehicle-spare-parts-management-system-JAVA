document.addEventListener('DOMContentLoaded', function() {
    const toggleSidebar = document.getElementById('toggle-sidebar');
    const closeSidebar = document.getElementById('close-sidebar');
    const sidebar = document.getElementById('sidebar');

    if (toggleSidebar && sidebar) {
        // Show Sidebar
        toggleSidebar.addEventListener('click', () => {
            sidebar.classList.add('active');
        });
    }
    if (closeSidebar && sidebar) {
        // Hide Sidebar
        closeSidebar.addEventListener('click', () => {
            sidebar.classList.remove('active');
        });
    }
});