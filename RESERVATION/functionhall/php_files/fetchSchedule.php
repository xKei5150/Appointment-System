<?php
include 'connection.php';

$today = date('Y-m-d');
$lastDayOfCurrentMonth = date('Y-m-t', strtotime($today));

$daysLeft = date_diff(new DateTime($today), new DateTime($lastDayOfCurrentMonth))->days + 1;

// Delete past date
$stmt = $conn->prepare("DELETE FROM tblschedule2 WHERE date < :today");
$stmt->execute(['today' => $today]);

$startDate = $today;
$endDate = $lastDayOfCurrentMonth;

// Fewer than 7 days left in the month, also get next month's schedule
if ($daysLeft <= 7) {
    $endDate = date('Y-m-t', strtotime('+1 month', strtotime($today)));
}

// Fetch existing schedules
$stmt = $conn->prepare("SELECT date, timeslot, availability FROM tblschedule2 WHERE date BETWEEN :startDate AND :endDate ORDER BY id ASC, timeslot");
$stmt->execute(['startDate' => $startDate, 'endDate' => $endDate]);
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

// If no schedule for the specified date range, generate it
if (empty($results)) {
    $defaultTimeslots = ["Morning", "Afternoon", "Night"];
    $currentDay = new DateTime($startDate);
    $endDay = new DateTime($endDate);

    while ($currentDay <= $endDay) {
        // Check if the day is not a weekend
        if ($currentDay->format('N') < 7) {
            foreach ($defaultTimeslots as $timeslot) {
                $stmt = $conn->prepare("INSERT IGNORE INTO tblschedule2 (date, timeslot, availability) VALUES (:date, :timeslot, 1)");
                $stmt->execute(['date' => $currentDay->format('Y-m-d'), 'timeslot' => $timeslot]);
            }
        }
        $currentDay->modify('+1 day');
    }

    // Refetch the schedules after generation
    $stmt = $conn->prepare("SELECT date, timeslot, availability FROM tblschedule2 WHERE date BETWEEN :startDate AND :endDate ORDER BY id ASC, timeslot");
    $stmt->execute(['startDate' => $startDate, 'endDate' => $endDate]);
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
}

// Format the fetched/generated results for the frontend
$schedules = [];
foreach ($results as $row) {
    $date = $row['date'];
    if (!isset($schedules[$date])) {
        $schedules[$date] = [
            'date' => $date,
            'timeslots' => []
        ];
    }
    $schedules[$date]['timeslots'][] = [
        'time' => $row['timeslot'],
        'availability' => $row['availability']
    ];
}

echo json_encode(array_values($schedules));


