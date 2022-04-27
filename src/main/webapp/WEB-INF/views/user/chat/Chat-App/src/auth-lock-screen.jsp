<!doctype html>
<html lang="en">

<head>

    @@include("partials/title-meta.html", {"title": "Lock screen"})

    @@include("partials/head-css.html")

</head>

@@include("partials/body.html")

<div class="auth-bg">
    <div class="container p-0">
        <div class="row g-0 justify-content-center">
            <div class="col-xl-9 col-lg-8">
                <div class="authentication-page-content shadow-lg">
                    <div class="d-flex flex-column h-100 px-4 pt-4">
                        <div class="row justify-content-center">
                            <div class="col-sm-8 col-lg-6 col-xl-6">

                                <div class="py-md-5 py-4">

                                    <div class="text-center mb-5">
                                        <h3>Lock screen</h3>
                                        <p class="text-muted">Enter your password to unlock the screen!</p>
                                    </div>
                                    <div class="user-thumb text-center mb-4">
                                        <img src="assets/images/users/avatar-1.jpg"
                                            class="rounded-circle img-thumbnail avatar-lg" alt="thumbnail">
                                        <h5 class="fs-15 mt-3">Kathryn Swarey</h5>
                                    </div>
                                    <form>
                                        <div class="mb-3">
                                            <label class="form-label" for="userpassword">Password</label>
                                            <input type="password" class="form-control" id="userpassword"
                                                placeholder="Enter password">
                                        </div>
                                        <div class="mb-3 mt-4">
                                            <button class="btn btn-primary w-100 waves-effect waves-light"
                                                type="submit">Unlock</button>
                                        </div>
                                    </form><!-- end form -->

                                    <div class="mt-5 text-center text-muted">
                                        <p>Not you ? return <a href="auth-login.html"
                                                class="fw-medium text-decoration-underline"> Login</a></p>
                                    </div>
                                </div>
                            </div><!-- end col -->
                        </div><!-- end row -->

                        <div class="row">
                            <div class="col-xl-12">
                                <div class="text-center text-muted p-4">
                                    <p class="mb-0">&copy;
                                        <script>document.write(new Date().getFullYear())</script> Vhato. Crafted with <i
                                            class="mdi mdi-heart text-danger"></i> by Themesbrand
                                    </p>
                                </div>
                            </div><!-- end col -->
                        </div><!-- end row -->
                    </div>
                </div>
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container-fluid -->
</div>
<!-- end auth bg -->


@@include("partials/vendor-scripts.html")

<!-- theme-style init -->
<script src="assets/js/pages/theme-style.init.js"></script>

<script src="assets/js/app.js"></script>

</body>

</html>