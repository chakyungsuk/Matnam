<!doctype html>
<html lang="en">

<head>

    @@include("partials/title-meta.html", {"title": "Reset Password"})

    @@include("partials/head-css.html")

</head>

@@include("partials/body.html")
<div class="auth-bg">
    <div class="container p-0">
        <div class="row justify-content-center g-0">
            <div class="col-xl-9 col-lg-8">
                <div class="authentication-page-content shadow-lg">
                    <div class="d-flex flex-column h-100 px-4 pt-4">
                        <div class="row justify-content-center my-auto">
                            <div class="col-sm-8 col-lg-6 col-xl-6">

                                <div class="py-md-5 py-4">

                                    <div class="text-center mb-5">
                                        <h3>Reset Password</h3>
                                        <p class="text-muted">Reset Password with Vhato.</p>
                                    </div>
                                    <div class="alert alert-info text-center my-4" role="alert">
                                        Enter your Email and instructions will be sent to you!
                                    </div>
                                    <form>
                                        <div class="mb-4">
                                            <label class="form-label">Email</label>
                                            <input type="text" class="form-control" id="email"
                                                placeholder="Enter email">
                                        </div>

                                        <div class="text-center mt-4">
                                            <button class="btn btn-primary w-100" type="submit">Reset</button>
                                        </div>
                                    </form><!-- end form -->

                                    <div class="mt-5 text-center text-muted">
                                        <p>Remember It ? <a href="auth-login.html"
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