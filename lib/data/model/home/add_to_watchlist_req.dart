class AddToWatchlistReq {
  String mediaType;
  int mediaId;
  bool watchlist;

  AddToWatchlistReq({required this.mediaType, required this.mediaId, required this.watchlist});

  Map<String, dynamic> toJson() => {
      'media_type': mediaType,
      'media_id': mediaId,
      'watchlist': watchlist
    };
  
}