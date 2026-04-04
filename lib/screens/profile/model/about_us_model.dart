class AboutUsModel {
  final String? description;
  final String? vision;
  final String? mission;
  final String? imagePath;

  AboutUsModel({
    this.description,
    this.vision,
    this.mission,
    this.imagePath,
  });

  factory AboutUsModel.fromJson(Map<String, dynamic> json) {
    return AboutUsModel(
      description: json['description'],
      vision: json['vision'],
      mission: json['mission'],
      imagePath: json['image_path'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'vision': vision,
      'mission': mission,
      'image_path': imagePath,
    };
  }
}