

import 'dart:convert';

class Apod {
    String date;
    String title;
    String explanation;
    String imageUrl;

    Apod({
        this.date,
        this.title,
        this.explanation,
        this.imageUrl
    });

    factory Apod.fromJson(Map<String, dynamic> jsonBody) {
        return Apod(
            date: jsonBody["date"],
            title: jsonBody["title"],
            explanation: jsonBody["explanation"],
            imageUrl: jsonBody["hdurl"]
        );
    }
}