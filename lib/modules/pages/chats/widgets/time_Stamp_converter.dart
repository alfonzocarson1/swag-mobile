class TimeStampConverter{

  String calculateTime(int timestamp){
    DateTime messageDate = DateTime.fromMillisecondsSinceEpoch(timestamp);
    DateTime now = DateTime.now();
    Duration difference = now.difference(messageDate);
    int differenceInDays = difference.inDays;
    int differenceInWeeks = (differenceInDays / 7).round();
    String timeMessage = "";
    if(differenceInDays > 1 && differenceInDays < 7){
     timeMessage = '$differenceInDays+ days ago';     
    }
    else if(differenceInDays <= 1){
     timeMessage = 'today'; 
    }
    else if(differenceInWeeks >1 && differenceInWeeks < 4){      
      timeMessage = "$differenceInWeeks + weeks ago";
    }
    else if(differenceInWeeks == 1){
      timeMessage = "1 week ago";
    }
    return timeMessage;
  }

}