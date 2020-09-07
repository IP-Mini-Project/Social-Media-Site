<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://kit.fontawesome.com/14d91ba717.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <link rel="stylesheet" href="../static/notif.css">
</head>

<body>
    <!-- Navbar -->
    <div id="nav-placeholder">

    </div>
    <script>
        $(function() {
            $("#nav-placeholder").load("navbar.php");
        });
    </script>
    <!-- body -->
    <div class="container-4">
        <div class="head">
            <h3>Notifications</h3>
        </div>
        <div class="body-wrap">
            <div class="liked noti">
                <a href="">
                <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="30" height="30" viewBox="0 0 172 172" style=" fill:#000000;">
                    <g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal">
                        <path d="M0,172v-172h172v172z" fill="none"></path>
                        <g fill="#71c2ff">
                            <path d="M86,162.71469l-2.20375,-1.8275c-4.17906,-3.49375 -9.83625,-7.28312 -16.39375,-11.66375c-25.54469,-17.10594 -60.5225,-40.51406 -60.5225,-80.42344c0,-24.65781 20.06219,-44.72 44.72,-44.72c13.39719,0 25.94781,5.96625 34.4,16.16531c8.45219,-10.19906 21.00281,-16.16531 34.4,-16.16531c24.65781,0 44.72,20.06219 44.72,44.72c0,39.90938 -34.97781,63.3175 -60.5225,80.42344c-6.5575,4.38063 -12.21469,8.17 -16.39375,11.66375z"></path>
                        </g>
                    </g>
                </svg>
                <p> Zendaya liked your post.</p>
                </a>
               
            </div>
            <div class="mention noti">
                <a href="">
                <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="26" height="26" viewBox="0 0 172 172" style=" fill:#000000;">
                    <g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal">
                        <path d="M0,172v-172h172v172z" fill="#ffffff"></path>
                        <g id="original-icon" fill="#71c2ff">
                            <path d="M86,1.24038c-46.30769,0 -84.75962,33.49038 -84.75962,75.66346c0,19.82031 9.30288,37.26322 23.15385,50.64904c-0.54267,7.67488 -4.39303,12.2488 -9.71635,16.74519c-2.86839,2.40324 -6.02103,4.65144 -8.88942,7.44231c-2.86839,2.79087 -5.78846,6.56371 -5.78846,11.78365c0,3.02344 2.04147,5.65926 4.96154,6.40865c12.42969,3.33353 25.78967,0.87861 38.03846,-3.51442c11.00842,-3.95372 20.33714,-9.81971 27.70192,-15.50481c4.98738,0.82692 10.02644,1.44712 15.29808,1.44712c46.30769,0 84.75962,-33.30949 84.75962,-75.45673c0,-42.14724 -38.45192,-75.66346 -84.75962,-75.66346zM86,14.47115c40.0024,0 71.52885,28.3738 71.52885,62.43269c0,34.0589 -31.52644,62.22596 -71.52885,62.22596c-5.19411,0 -10.18149,-0.3101 -15.09135,-1.24038c-1.96394,-0.46514 -4.00541,0 -5.58173,1.24038c-5.96935,5.01322 -15.99579,11.0601 -26.66827,14.88462c-6.5637,2.35156 -13.23077,3.4369 -19.43269,3.72115c1.39544,-1.11118 2.48077,-1.91226 4.13462,-3.30769c6.66707,-5.60757 14.67788,-14.65204 14.67788,-28.32212c0,-1.91226 -0.82692,-3.72115 -2.27404,-4.96154c-13.23077,-11.42187 -21.29327,-26.97837 -21.29327,-44.24038c0,-34.05889 31.52644,-62.43269 71.52885,-62.43269z"></path>
                        </g>
                    </g>
                </svg>
                <p>Zendaya commented on your post.</p>
                </a>
                
            </div>
            <div class="foll-req noti">
                <a href="">
                <i class="fas fa-user-plus"></i>
                <p>@Zendaya has requested connection.</p>
                </a>
            
            </div>
        </div>

    </div>
</body>

</html>