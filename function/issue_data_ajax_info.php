<?php
if (isset($_GET['process_type']) && $_GET['process_type'] == "get_issue_data_by_date") {
    session_start();
    date_default_timezone_set("Asia/Dhaka");
    include '../connection/connect.php';
    include '../helper/utilities.php';


    $date_filter     =    (object)[
        'start_date'    => $_POST['start_date'],
        'end_date'        => $_POST['end_date'],
    ];
    $item_details = get_issue_details_data($date_filter);
    if (isset($item_details) && !empty($item_details)) {

        show_issue_details_data($item_details);
    } else { ?>

        <div class="alert alert-info" role="alert"> Sorry, no data found!</div>
<?php
    }
}
