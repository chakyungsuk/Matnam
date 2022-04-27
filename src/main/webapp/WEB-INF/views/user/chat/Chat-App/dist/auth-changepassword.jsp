<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8" />
    <title>Change Password | Vhato - Responsive Bootstrap 5 Chat App</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Vhato - Responsive Chat App Template in HTML. A fully featured HTML chat messenger template in Bootstrap 5" name="description" />
    <meta name="keywords" content="Vhato chat template, chat, web chat template, chat status, chat template, communication, discussion, group chat, message, messenger template, status"/>
    <meta content="Themesbrand" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="assets/images/favicon.ico" id="tabIcon">

    <!-- Bootstrap Css -->
    <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

</head>

<body>
<div class="auth-bg">
    <div class="container p-0">
        <div class="row justify-content-center g-0">
            <div class="col-xl-9 col-lg-8">
                <div class="authentication-page-content shadow-lg">
                    <div class="d-flex flex-column h-100 px-4 pt-4">
                        <div class="row justify-content-center">
                            <div class="col-sm-8 col-lg-6 col-xl-6">

                                <div class="py-md-5 py-4">

                                    <div class="text-center mb-5">
                                        <h3>Change Password</h3>
                                    </div>
                                    <div class="user-thumb text-center mb-4">
                                        <img src="assets/images/users/avatar-1.jpg"
                                            class="rounded-circle img-thumbnail avatar-lg" alt="thumbnail">
                                        <h5 class="fs-15 mt-3">Dushane Daniel</h5>
                                    </div>
                                    <form>
                                        <div class="mb-3">
                                            <label for="oldpassword-input" class="form-label">Old Password</label>
                                            <input type="password" class="form-control" id="oldpassword-input"
                                                placeholder="Enter Old Password">
                                        </div>

                                        <div class="mb-3">
                                            <label for="newpassword-input" class="form-label">New Password</label>
                                            <div class="position-relative auth-pass-inputgroup mb-3">
                                                <input type="password" class="form-control pe-5"
                                                    placeholder="Enter New Password" id="password-input">
                                                <button
                                                    class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted"
                                                    type="button" id="password-addon"><i
                                                        class="ri-eye-fill align-middle"></i></button>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="confirmpassword-input" class="form-label">Confirm New
                                                Password</label>
                                            <input type="password" class="form-control" id="confirmpassword-input"
                                                placeholder="Enter Confirm Password">
                                        </div>

                                        <div class="text-center mt-4">
                                            <div class="row">
                                                <div class="col-6">
                                                    <button class="btn btn-primary w-100" type="submit">Save</button>
                                                </div>
                                                <div class="col-6">
                                                    <button class="btn btn-light w-100" type="button">Cancel</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form><!-- end form -->
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

<!-- JAVASCRIPT -->
<script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/libs/simplebar/simplebar.min.js"></script>
<script src="assets/libs/node-waves/waves.min.js"></script>

<!-- password addon -->
<script src="assets/js/pages/password-addon.init.js"></script>

<!-- theme-style init -->
<script src="assets/js/pages/theme-style.init.js"></script>

<script src="assets/js/app.js"></script>
</body>

</html>