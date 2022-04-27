<!doctype html>
<html lang="en">

    <head>
        
        @@include("partials/title-meta.html", {"title": "Starter Page"})

        @@include("partials/head-css.html")

    </head>

    @@include("partials/body.html")

        <div class="layout-wrapper d-lg-flex">

            <!-- Start left sidebar-menu -->
            @@include("partials/sidebar-menu.html")
            <!-- end left sidebar-menu -->
            
        </div>
        <!-- end  layout wrapper -->

        @@include("partials/vendor-scripts.html")

        <!-- theme-style init -->
        <script src="assets/js/pages/theme-style.init.js"></script>
        <script src="assets/js/app.js"></script>

    </body>
</html>
