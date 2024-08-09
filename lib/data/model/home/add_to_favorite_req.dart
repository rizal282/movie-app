class AddToFavoriteReq {
  String mediaType;
  int mediaId;
  bool favorite;

  AddToFavoriteReq({required this.mediaType, required this.mediaId, required this.favorite});

  Map<String, dynamic> toJson() => {
      'media_type': mediaType,
      'media_id': mediaId,
      'favorite': favorite
    };
  
}