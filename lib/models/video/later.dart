class MediaVideoItemModel {
  MediaVideoItemModel({
    this.id,
    this.aid,
    this.offset,
    this.index,
    this.intro,
    this.attr,
    this.tid,
    this.copyRight,
    this.cntInfo,
    this.cover,
    this.duration,
    this.pubtime,
    this.likeState,
    this.favState,
    this.page,
    this.cid,
    this.pages,
    this.title,
    this.type,
    this.upper,
    this.link,
    this.bvid,
    this.shortLink,
    this.rights,
    this.elecInfo,
    this.coin,
    this.progressPercent,
    this.badge,
    this.forbidFav,
    this.moreType,
    this.businessOid,
  });

  int? id;
  int? aid;
  int? offset;
  int? index;
  String? intro;
  int? attr;
  int? tid;
  int? copyRight;
  Map? cntInfo;
  String? cover;
  int? duration;
  int? pubtime;
  int? likeState;
  int? favState;
  int? page;
  int? cid;
  List<Page>? pages;
  String? title;
  int? type;
  Upper? upper;
  String? link;
  String? bvid;
  String? shortLink;
  Rights? rights;
  dynamic elecInfo;
  Coin? coin;
  double? progressPercent;
  dynamic badge;
  bool? forbidFav;
  int? moreType;
  int? businessOid;

  factory MediaVideoItemModel.fromJson(Map<String, dynamic> json) =>
      MediaVideoItemModel(
        id: json["id"],
        aid: json["id"],
        offset: json["offset"],
        index: json["index"],
        intro: json["intro"],
        attr: json["attr"],
        tid: json["tid"],
        copyRight: json["copy_right"],
        cntInfo: json["cnt_info"],
        cover: json["cover"],
        duration: json["duration"],
        pubtime: json["pubtime"],
        likeState: json["like_state"],
        favState: json["fav_state"],
        page: json["page"],
        cid: json["pages"] == null ? -1 : json["pages"].first['id'],
        // json["pages"] 可能为null
        pages: json["pages"] == null
            ? []
            : List<Page>.from(json["pages"].map((x) => Page.fromJson(x))),
        title: json["title"],
        type: json["type"],
        upper: Upper.fromJson(json["upper"]),
        link: json["link"],
        bvid: json["bv_id"],
        shortLink: json["short_link"],
        rights: Rights.fromJson(json["rights"]),
        elecInfo: json["elec_info"],
        coin: Coin.fromJson(json["coin"]),
        progressPercent: json["progress_percent"].toDouble(),
        badge: json["badge"],
        forbidFav: json["forbid_fav"],
        moreType: json["more_type"],
        businessOid: json["business_oid"],
      );
}

class Coin {
  Coin({
    this.maxNum,
    this.coinNumber,
  });

  int? maxNum;
  int? coinNumber;

  factory Coin.fromJson(Map<String, dynamic> json) => Coin(
        maxNum: json["max_num"],
        coinNumber: json["coin_number"],
      );
}

class Page {
  Page({
    this.id,
    this.title,
    this.intro,
    this.duration,
    this.link,
    this.page,
    this.metas,
    this.from,
    this.dimension,
  });

  int? id;
  String? title;
  String? intro;
  int? duration;
  String? link;
  int? page;
  List<Meta>? metas;
  String? from;
  Dimension? dimension;

  factory Page.fromJson(Map<String, dynamic> json) => Page(
        id: json["id"],
        title: json["title"],
        intro: json["intro"],
        duration: json["duration"],
        link: json["link"],
        page: json["page"],
        metas: List<Meta>.from(json["metas"].map((x) => Meta.fromJson(x))),
        from: json["from"],
        dimension: Dimension.fromJson(json["dimension"]),
      );
}

class Dimension {
  Dimension({
    this.width,
    this.height,
    this.rotate,
  });

  int? width;
  int? height;
  int? rotate;

  factory Dimension.fromJson(Map<String, dynamic> json) => Dimension(
        width: json["width"],
        height: json["height"],
        rotate: json["rotate"],
      );
}

class Meta {
  Meta({
    this.quality,
    this.size,
  });

  int? quality;
  int? size;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        quality: json["quality"],
        size: json["size"],
      );
}

class Rights {
  Rights({
    this.bp,
    this.elec,
    this.download,
    this.movie,
    this.pay,
    this.ugcPay,
    this.hd5,
    this.noReprint,
    this.autoplay,
    this.noBackground,
  });

  int? bp;
  int? elec;
  int? download;
  int? movie;
  int? pay;
  int? ugcPay;
  int? hd5;
  int? noReprint;
  int? autoplay;
  int? noBackground;

  factory Rights.fromJson(Map<String, dynamic> json) => Rights(
        bp: json["bp"],
        elec: json["elec"],
        download: json["download"],
        movie: json["movie"],
        pay: json["pay"],
        ugcPay: json["ugc_pay"],
        hd5: json["hd5"],
        noReprint: json["no_reprint"],
        autoplay: json["autoplay"],
        noBackground: json["no_background"],
      );
}

class Upper {
  Upper({
    this.mid,
    this.name,
    this.face,
    this.followed,
    this.fans,
    this.vipType,
    this.vipStatue,
    this.vipDueDate,
    this.vipPayType,
    this.officialRole,
    this.officialTitle,
    this.officialDesc,
    this.displayName,
  });

  int? mid;
  String? name;
  String? face;
  int? followed;
  int? fans;
  int? vipType;
  int? vipStatue;
  int? vipDueDate;
  int? vipPayType;
  int? officialRole;
  String? officialTitle;
  String? officialDesc;
  String? displayName;

  factory Upper.fromJson(Map<String, dynamic> json) => Upper(
        mid: json["mid"],
        name: json["name"],
        face: json["face"],
        followed: json["followed"],
        fans: json["fans"],
        vipType: json["vip_type"],
        vipStatue: json["vip_statue"],
        vipDueDate: json["vip_due_date"],
        vipPayType: json["vip_pay_type"],
        officialRole: json["official_role"],
        officialTitle: json["official_title"],
        officialDesc: json["official_desc"],
        displayName: json["display_name"],
      );
}
