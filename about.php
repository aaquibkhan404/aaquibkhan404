<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-green layout-top-nav">
    <div class="wrapper">

        <?php include 'includes/navbar.php'; ?>

        <div class="content-wrapper">
            <div class="container">

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-sm-9">
                            <img src="images/banner.png" alt="alt" style="width:100% "/>
                            <p>Our Core Values<p>
                            <p> Quality & Innovation - 
                                We are determined to deliver best-in-class quality, coming up with in-trend-and-beyond designs.
                                <br/>
                                Customer & Community -
                                Customer satisfaction is our main focus, which is the basis of our customisation services. We take our contribution to the community seriously and believe in delivering more than what we take.
                                <br>
                                Integrity-
                                Integrity and Honesty keeps us on our path, making us persevere unless we have achieved our cause.<br/>

                                Teamwork & Collaboration-
                                Teamwork is the foundation of all that we have achieved so far.


                            </p>


                        </div>
                        <div class="col-sm-3">
                            <?php include 'includes/sidebar.php'; ?>
                        </div>
                    </div>
                </section>

            </div>
        </div>
        <?php $pdo->close(); ?>
        <?php include 'includes/footer.php'; ?>
    </div>

    <?php include 'includes/scripts.php'; ?>
    <script>
        $(function () {
            $('#add').click(function (e) {
                e.preventDefault();
                var quantity = $('#quantity').val();
                quantity++;
                $('#quantity').val(quantity);
            });
            $('#minus').click(function (e) {
                e.preventDefault();
                var quantity = $('#quantity').val();
                if (quantity > 1) {
                    quantity--;
                }
                $('#quantity').val(quantity);
            });

        });
    </script>
</body>
</html>