var stats = {
    type: "GROUP",
name: "Global Information",
path: "",
pathFormatted: "group_missing-name-b06d1",
stats: {
    "name": "Global Information",
    "numberOfRequests": {
        "total": "9",
        "ok": "9",
        "ko": "0"
    },
    "minResponseTime": {
        "total": "1182",
        "ok": "1182",
        "ko": "-"
    },
    "maxResponseTime": {
        "total": "1526",
        "ok": "1526",
        "ko": "-"
    },
    "meanResponseTime": {
        "total": "1300",
        "ok": "1300",
        "ko": "-"
    },
    "standardDeviation": {
        "total": "110",
        "ok": "110",
        "ko": "-"
    },
    "percentiles1": {
        "total": "1239",
        "ok": "1239",
        "ko": "-"
    },
    "percentiles2": {
        "total": "1346",
        "ok": "1346",
        "ko": "-"
    },
    "percentiles3": {
        "total": "1486",
        "ok": "1486",
        "ko": "-"
    },
    "percentiles4": {
        "total": "1518",
        "ok": "1518",
        "ko": "-"
    },
    "group1": {
    "name": "t < 800 ms",
    "count": 0,
    "percentage": 0
},
    "group2": {
    "name": "800 ms < t < 1200 ms",
    "count": 1,
    "percentage": 11
},
    "group3": {
    "name": "t > 1200 ms",
    "count": 8,
    "percentage": 89
},
    "group4": {
    "name": "failed",
    "count": 0,
    "percentage": 0
},
    "meanNumberOfRequestsPerSecond": {
        "total": "1.8",
        "ok": "1.8",
        "ko": "-"
    }
},
contents: {
"req_post--public-v2-bfb41": {
        type: "REQUEST",
        name: "POST /public/v2/users",
path: "POST /public/v2/users",
pathFormatted: "req_post--public-v2-bfb41",
stats: {
    "name": "POST /public/v2/users",
    "numberOfRequests": {
        "total": "9",
        "ok": "9",
        "ko": "0"
    },
    "minResponseTime": {
        "total": "1182",
        "ok": "1182",
        "ko": "-"
    },
    "maxResponseTime": {
        "total": "1526",
        "ok": "1526",
        "ko": "-"
    },
    "meanResponseTime": {
        "total": "1300",
        "ok": "1300",
        "ko": "-"
    },
    "standardDeviation": {
        "total": "110",
        "ok": "110",
        "ko": "-"
    },
    "percentiles1": {
        "total": "1239",
        "ok": "1239",
        "ko": "-"
    },
    "percentiles2": {
        "total": "1346",
        "ok": "1346",
        "ko": "-"
    },
    "percentiles3": {
        "total": "1486",
        "ok": "1486",
        "ko": "-"
    },
    "percentiles4": {
        "total": "1518",
        "ok": "1518",
        "ko": "-"
    },
    "group1": {
    "name": "t < 800 ms",
    "count": 0,
    "percentage": 0
},
    "group2": {
    "name": "800 ms < t < 1200 ms",
    "count": 1,
    "percentage": 11
},
    "group3": {
    "name": "t > 1200 ms",
    "count": 8,
    "percentage": 89
},
    "group4": {
    "name": "failed",
    "count": 0,
    "percentage": 0
},
    "meanNumberOfRequestsPerSecond": {
        "total": "1.8",
        "ok": "1.8",
        "ko": "-"
    }
}
    }
}

}

function fillStats(stat){
    $("#numberOfRequests").append(stat.numberOfRequests.total);
    $("#numberOfRequestsOK").append(stat.numberOfRequests.ok);
    $("#numberOfRequestsKO").append(stat.numberOfRequests.ko);

    $("#minResponseTime").append(stat.minResponseTime.total);
    $("#minResponseTimeOK").append(stat.minResponseTime.ok);
    $("#minResponseTimeKO").append(stat.minResponseTime.ko);

    $("#maxResponseTime").append(stat.maxResponseTime.total);
    $("#maxResponseTimeOK").append(stat.maxResponseTime.ok);
    $("#maxResponseTimeKO").append(stat.maxResponseTime.ko);

    $("#meanResponseTime").append(stat.meanResponseTime.total);
    $("#meanResponseTimeOK").append(stat.meanResponseTime.ok);
    $("#meanResponseTimeKO").append(stat.meanResponseTime.ko);

    $("#standardDeviation").append(stat.standardDeviation.total);
    $("#standardDeviationOK").append(stat.standardDeviation.ok);
    $("#standardDeviationKO").append(stat.standardDeviation.ko);

    $("#percentiles1").append(stat.percentiles1.total);
    $("#percentiles1OK").append(stat.percentiles1.ok);
    $("#percentiles1KO").append(stat.percentiles1.ko);

    $("#percentiles2").append(stat.percentiles2.total);
    $("#percentiles2OK").append(stat.percentiles2.ok);
    $("#percentiles2KO").append(stat.percentiles2.ko);

    $("#percentiles3").append(stat.percentiles3.total);
    $("#percentiles3OK").append(stat.percentiles3.ok);
    $("#percentiles3KO").append(stat.percentiles3.ko);

    $("#percentiles4").append(stat.percentiles4.total);
    $("#percentiles4OK").append(stat.percentiles4.ok);
    $("#percentiles4KO").append(stat.percentiles4.ko);

    $("#meanNumberOfRequestsPerSecond").append(stat.meanNumberOfRequestsPerSecond.total);
    $("#meanNumberOfRequestsPerSecondOK").append(stat.meanNumberOfRequestsPerSecond.ok);
    $("#meanNumberOfRequestsPerSecondKO").append(stat.meanNumberOfRequestsPerSecond.ko);
}
