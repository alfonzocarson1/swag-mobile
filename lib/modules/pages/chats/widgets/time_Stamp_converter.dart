class TimeStampConverter{

  String calculateTime(int timestamp){
    DateTime fullMessageDate = DateTime.fromMillisecondsSinceEpoch(timestamp);
    DateTime messageDateOnly = DateTime(fullMessageDate.year, fullMessageDate.month, fullMessageDate.day);
    DateTime now = DateTime.now();
    DateTime nowDateOnly = DateTime(now.year, now.month, now.day);
    Duration difference = nowDateOnly.difference(messageDateOnly);
    int differenceInDays = difference.inDays;
    int differenceInWeeks = (differenceInDays / 7).round();
    String timeMessage = "";
    if(differenceInDays >= 1 && differenceInDays < 7){
     timeMessage = '$differenceInDays day${differenceInDays == 1 ? '' : 's'} ago';     
    }
    else if(differenceInDays < 1){
     timeMessage = 'today'; 
    }
    else if(differenceInWeeks >=1 && differenceInWeeks < 4){      
      timeMessage = "$differenceInWeeks week${differenceInWeeks == 1 ? '' : 's'} ago";
    }
    return timeMessage;
  }

}