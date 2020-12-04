

class Comment {
  String text = ""; 
  final int commentId;
  Story story; 
  Comment({this.commentId,this.text});

  factory Comment.fromJSON(Map<String,dynamic> json) {
    return Comment(
      commentId: json["id"],
      text: json["text"]
    );
  }

}

class Story {
  
  final String title; 
   
  List<int> commentIds = List<int>(); 

  Story({this.title,this.commentIds});

  factory Story.fromJSON(Map<String,dynamic> json) {
    return Story(
      title: json["title"], 
       
      commentIds: json["kids"] == null ? List<int>() : json["kids"].cast<int>()
    );
  }

}