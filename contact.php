<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<?php
if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $msg = $_POST['message'];

    try {
        $stmt = $conn->prepare("INSERT INTO contact_enqueries (name,email,phone,msg) VALUES (:name,:email,:phone,:message)");
        $stmt->execute(['name' => $name, 'email' => $email, 'phone' => $phone, 'message' => $msg]);
        $userid = $conn->lastInsertId();
        $stat = '<h2>Thank you for contacting us. We will reach out you soon!</h2>';
    } catch (PDOException $e) {
        $stat = $e->getMessage();
    }
    unset($_POST);
}
?>
<body class="skin-green hold-transition skin-blue layout-top-nav">
    <div class="wrapper">

        <?php include 'includes/navbar.php'; ?>

        <div class="content-wrapper">
            <div class="container">

                <!-- Main content -->
                <section class="content">
                    <?= @$stat ?>
                    <div class="row">
                        <div class="col-sm-8" style="background:url(images/contact.jpg)">
                            <h1 class="page-header">Contact Us</h1>
                            <form action="contact.php" method="POST" style="width: 40%" >
                                <div class="form-group has-feedback">
                                    <input type="text" class="form-control" name="name" required="" placeholder="Name" value="<?php echo (isset($_POST['name'])) ? $_POST['name'] : '' ?>" required>
                                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <input type="text" class="form-control" name="phone" required="" placeholder="Contact No." value="<?php echo (isset($_POST['phone'])) ? $_POST['phone'] : '' ?>"  required>
                                    <span class="glyphicon glyphicon-earphone form-control-feedback"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <input type="email" class="form-control" name="email" required="" placeholder="Email" value="<?php echo (isset($_POST['email'])) ? $_POST['email'] : '' ?>" required>
                                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                                </div>
                                <div class="form-group has-feedback">
                                    <textarea id="id" name="message" rows="2" required="" placeholder="Message" class="form-control"  cols="10"></textarea><span class="glyphicon glyphicon-pencil form-control-feedback"></span>
                                </div>
                                <div class="row">
                                    <div class="col-xs-4">
                                        <button type="submit" class="btn btn-primary btn-block btn-flat" name="submit">Submit</button>
                                    </div>
                                </div>
                                <br/>
                            </form>

                        </div><div class="col-sm-1">
                            &nbsp;
                        </div>
                        <div class="col-sm-3">
                            <?php include 'includes/sidebar.php'; ?>
                        </div>
                    </div>

                </section>
            </div>

            <?php include 'includes/footer.php'; ?>
        </div>

        <?php include 'includes/scripts.php'; ?>
</body>
</html>