// Custom JavaScript for Table Row Highlighting (Optional) 

    document.addEventListener("DOMContentLoaded", function() {
        // Table Row Click Handling
        let rows = document.querySelectorAll(".clickable-row");

        if (rows.length > 0) {
            rows.forEach(row => {
                row.addEventListener("click", function() {
                    rows.forEach(r => r.style.backgroundColor = ""); // Reset all row colors
                    this.style.backgroundColor = "#A6FF00"; // Highlight selected row
                });
            });
        }
    });
