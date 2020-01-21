

class Apod {
    String date;
    String title;
    String explanation;
    String imageUrl;

    Apod({
        this.date,
        this.title,
        this.explanation
    });

    factory Apod.fromJson(Map<String, dynamic> jsonBody) {
        return Apod(
            date: jsonBody["date"],
            title: jsonBody["title"],
            explanation: jsonBody["explanation"]
        );
    }
}