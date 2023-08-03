.class public final Lcom/giphy/sdk/core/models/Media;
.super Ljava/lang/Object;
.source "Media.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build La8/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/models/Media$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008=\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u00cf\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011\u0012\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\"\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\"\u0012\u0008\u0008\u0002\u0010$\u001a\u00020\"\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\"\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\"\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020\"\u0012\u0008\u0008\u0002\u0010(\u001a\u00020\"\u0012\u0008\u0008\u0002\u0010)\u001a\u00020\"\u0012\u0008\u0008\u0002\u0010*\u001a\u00020\"\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010,\u0012\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/\u0012\u0008\u0008\u0002\u00100\u001a\u00020\"\u0012(\u0008\u0002\u00101\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u000102j\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u0001`3\u00a2\u0006\u0002\u00104J\t\u0010p\u001a\u00020qH\u00d6\u0001J\u0006\u0010r\u001a\u00020sJ\u0019\u0010t\u001a\u00020s2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020qH\u00d6\u0001R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0018\u0010-\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00106R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00106R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u00106R\u001e\u0010+\u001a\u0004\u0018\u00010,8\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u00106R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010@R\u0013\u0010.\u001a\u0004\u0018\u00010/\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010BR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u00106R\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00118\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010ER\u001e\u00100\u001a\u00020\"8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u00106\"\u0004\u0008K\u0010LR\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Q\u0010@R\u0016\u0010%\u001a\u00020\"8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010GR\u0016\u0010$\u001a\u00020\"8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010GR\u0016\u0010*\u001a\u00020\"8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010GR\u0016\u0010&\u001a\u00020\"8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010GR\u0016\u0010!\u001a\u00020\"8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010GR\u0016\u0010(\u001a\u00020\"8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010GR\u0016\u0010\'\u001a\u00020\"8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010GR\u0016\u0010#\u001a\u00020\"8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010GR\u0016\u0010)\u001a\u00020\"8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010GR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010SR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008T\u00106R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u00106R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u00106R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u00106R\u0019\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008X\u0010ER\u0013\u0010Y\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008Z\u00106R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u00106R\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\\\u0010@R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008a\u0010@R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u00106\"\u0004\u0008c\u0010LR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR:\u00101\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u000102j\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u0001`3X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010i\"\u0004\u0008j\u0010kR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008l\u0010m\"\u0004\u0008n\u0010o\u00a8\u0006x"
    }
    d2 = {
        "Lcom/giphy/sdk/core/models/Media;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "type",
        "Lcom/giphy/sdk/core/models/enums/MediaType;",
        "slug",
        "url",
        "bitlyGifUrl",
        "bitlyUrl",
        "embedUrl",
        "source",
        "title",
        "rating",
        "Lcom/giphy/sdk/core/models/enums/RatingType;",
        "contentUrl",
        "tags",
        "",
        "featuredTags",
        "user",
        "Lcom/giphy/sdk/core/models/User;",
        "images",
        "Lcom/giphy/sdk/core/models/Images;",
        "video",
        "Lcom/giphy/sdk/core/models/Video;",
        "analyticsResponsePayload",
        "sourceTld",
        "sourcePostUrl",
        "updateDate",
        "Ljava/util/Date;",
        "createDate",
        "importDate",
        "trendingDate",
        "isHidden",
        "",
        "isRemoved",
        "isCommunity",
        "isAnonymous",
        "isFeatured",
        "isRealtime",
        "isIndexable",
        "isSticker",
        "isDynamic",
        "bottleData",
        "Lcom/giphy/sdk/core/models/BottleData;",
        "animatedTextStyle",
        "cta",
        "Lcom/giphy/sdk/core/models/Cta;",
        "hasAttributions",
        "userDictionary",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/RatingType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/giphy/sdk/core/models/User;Lcom/giphy/sdk/core/models/Images;Lcom/giphy/sdk/core/models/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZZZZZZZZZLcom/giphy/sdk/core/models/BottleData;Ljava/lang/String;Lcom/giphy/sdk/core/models/Cta;ZLjava/util/HashMap;)V",
        "getAnalyticsResponsePayload",
        "()Ljava/lang/String;",
        "getAnimatedTextStyle",
        "getBitlyGifUrl",
        "getBitlyUrl",
        "getBottleData",
        "()Lcom/giphy/sdk/core/models/BottleData;",
        "setBottleData",
        "(Lcom/giphy/sdk/core/models/BottleData;)V",
        "getContentUrl",
        "getCreateDate",
        "()Ljava/util/Date;",
        "getCta",
        "()Lcom/giphy/sdk/core/models/Cta;",
        "getEmbedUrl",
        "getFeaturedTags",
        "()Ljava/util/List;",
        "getHasAttributions",
        "()Z",
        "setHasAttributions",
        "(Z)V",
        "getId",
        "setId",
        "(Ljava/lang/String;)V",
        "getImages",
        "()Lcom/giphy/sdk/core/models/Images;",
        "setImages",
        "(Lcom/giphy/sdk/core/models/Images;)V",
        "getImportDate",
        "getRating",
        "()Lcom/giphy/sdk/core/models/enums/RatingType;",
        "getSlug",
        "getSource",
        "getSourcePostUrl",
        "getSourceTld",
        "getTags",
        "tid",
        "getTid",
        "getTitle",
        "getTrendingDate",
        "getType",
        "()Lcom/giphy/sdk/core/models/enums/MediaType;",
        "setType",
        "(Lcom/giphy/sdk/core/models/enums/MediaType;)V",
        "getUpdateDate",
        "getUrl",
        "setUrl",
        "getUser",
        "()Lcom/giphy/sdk/core/models/User;",
        "setUser",
        "(Lcom/giphy/sdk/core/models/User;)V",
        "getUserDictionary",
        "()Ljava/util/HashMap;",
        "setUserDictionary",
        "(Ljava/util/HashMap;)V",
        "getVideo",
        "()Lcom/giphy/sdk/core/models/Video;",
        "setVideo",
        "(Lcom/giphy/sdk/core/models/Video;)V",
        "describeContents",
        "",
        "postProcess",
        "",
        "writeToParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/giphy/sdk/core/models/Media;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final analyticsResponsePayload:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "analytics_response_payload"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final animatedTextStyle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "animated_text_style"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final bitlyGifUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bitly_gif_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final bitlyUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bitly_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private bottleData:Lcom/giphy/sdk/core/models/BottleData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bottle_data"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final contentUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final createDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create_datetime"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final cta:Lcom/giphy/sdk/core/models/Cta;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final embedUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "embed_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final featuredTags:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "featured_tags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private hasAttributions:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_attribution"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private images:Lcom/giphy/sdk/core/models/Images;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final importDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "import_datetime"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final isAnonymous:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_anonymous"
    .end annotation
.end field

.field private final isCommunity:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_community"
    .end annotation
.end field

.field private final isDynamic:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_dynamic"
    .end annotation
.end field

.field private final isFeatured:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_featured"
    .end annotation
.end field

.field private final isHidden:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_hidden"
    .end annotation
.end field

.field private final isIndexable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_indexable"
    .end annotation
.end field

.field private final isRealtime:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_realtime"
    .end annotation
.end field

.field private final isRemoved:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_removed"
    .end annotation
.end field

.field private final isSticker:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_sticker"
    .end annotation
.end field

.field private final rating:Lcom/giphy/sdk/core/models/enums/RatingType;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final slug:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final source:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final sourcePostUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_post_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final sourceTld:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_tld"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final trendingDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trending_datetime"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private type:Lcom/giphy/sdk/core/models/enums/MediaType;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final updateDate:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_datetime"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private user:Lcom/giphy/sdk/core/models/User;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private userDictionary:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private video:Lcom/giphy/sdk/core/models/Video;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/core/models/Media$Creator;

    invoke-direct {v0}, Lcom/giphy/sdk/core/models/Media$Creator;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/models/Media;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/RatingType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/giphy/sdk/core/models/User;Lcom/giphy/sdk/core/models/Images;Lcom/giphy/sdk/core/models/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZZZZZZZZZLcom/giphy/sdk/core/models/BottleData;Ljava/lang/String;Lcom/giphy/sdk/core/models/Cta;ZLjava/util/HashMap;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p14    # Lcom/giphy/sdk/core/models/User;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Lcom/giphy/sdk/core/models/Images;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p16    # Lcom/giphy/sdk/core/models/Video;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p20    # Ljava/util/Date;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p21    # Ljava/util/Date;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p22    # Ljava/util/Date;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p23    # Ljava/util/Date;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p33    # Lcom/giphy/sdk/core/models/BottleData;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p34    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p35    # Lcom/giphy/sdk/core/models/Cta;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p37    # Ljava/util/HashMap;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/enums/MediaType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/enums/RatingType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/giphy/sdk/core/models/User;",
            "Lcom/giphy/sdk/core/models/Images;",
            "Lcom/giphy/sdk/core/models/Video;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "ZZZZZZZZZ",
            "Lcom/giphy/sdk/core/models/BottleData;",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/Cta;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p15

    const-string v3, "id"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "images"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->id:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->type:Lcom/giphy/sdk/core/models/enums/MediaType;

    move-object v1, p3

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->slug:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->url:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->bitlyGifUrl:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->bitlyUrl:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->embedUrl:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->source:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->title:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    move-object v1, p11

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->contentUrl:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->tags:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->featuredTags:Ljava/util/List;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->user:Lcom/giphy/sdk/core/models/User;

    iput-object v2, v0, Lcom/giphy/sdk/core/models/Media;->images:Lcom/giphy/sdk/core/models/Images;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->video:Lcom/giphy/sdk/core/models/Video;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->analyticsResponsePayload:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->sourceTld:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->sourcePostUrl:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->updateDate:Ljava/util/Date;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->createDate:Ljava/util/Date;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->importDate:Ljava/util/Date;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->trendingDate:Ljava/util/Date;

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/Media;->isHidden:Z

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/Media;->isRemoved:Z

    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/Media;->isCommunity:Z

    move/from16 v1, p27

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/Media;->isAnonymous:Z

    move/from16 v1, p28

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/Media;->isFeatured:Z

    move/from16 v1, p29

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/Media;->isRealtime:Z

    move/from16 v1, p30

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/Media;->isIndexable:Z

    move/from16 v1, p31

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/Media;->isSticker:Z

    move/from16 v1, p32

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/Media;->isDynamic:Z

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->bottleData:Lcom/giphy/sdk/core/models/BottleData;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->animatedTextStyle:Ljava/lang/String;

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->cta:Lcom/giphy/sdk/core/models/Cta;

    move/from16 v1, p36

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/Media;->hasAttributions:Z

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Media;->userDictionary:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/RatingType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/giphy/sdk/core/models/User;Lcom/giphy/sdk/core/models/Images;Lcom/giphy/sdk/core/models/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZZZZZZZZZLcom/giphy/sdk/core/models/BottleData;Ljava/lang/String;Lcom/giphy/sdk/core/models/Cta;ZLjava/util/HashMap;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 41

    move/from16 v0, p38

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    move-object v13, v2

    goto :goto_8

    :cond_8
    move-object/from16 v13, p10

    :goto_8
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_9

    move-object v14, v2

    goto :goto_9

    :cond_9
    move-object/from16 v14, p11

    :goto_9
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_a

    move-object v15, v2

    goto :goto_a

    :cond_a
    move-object/from16 v15, p12

    :goto_a
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_b

    move-object/from16 v16, v2

    goto :goto_b

    :cond_b
    move-object/from16 v16, p13

    :goto_b
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_c

    move-object/from16 v17, v2

    goto :goto_c

    :cond_c
    move-object/from16 v17, p14

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v19, v2

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v20, v2

    goto :goto_e

    :cond_e
    move-object/from16 v20, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v21, v2

    goto :goto_f

    :cond_f
    move-object/from16 v21, p18

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v22, v2

    goto :goto_10

    :cond_10
    move-object/from16 v22, p19

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move-object/from16 v23, v2

    goto :goto_11

    :cond_11
    move-object/from16 v23, p20

    :goto_11
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move-object/from16 v24, v2

    goto :goto_12

    :cond_12
    move-object/from16 v24, p21

    :goto_12
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move-object/from16 v25, v2

    goto :goto_13

    :cond_13
    move-object/from16 v25, p22

    :goto_13
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    move-object/from16 v26, v2

    goto :goto_14

    :cond_14
    move-object/from16 v26, p23

    :goto_14
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    const/16 v27, 0x0

    goto :goto_15

    :cond_15
    move/from16 v27, p24

    :goto_15
    const/high16 v1, 0x1000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_16

    const/16 v28, 0x0

    goto :goto_16

    :cond_16
    move/from16 v28, p25

    :goto_16
    const/high16 v1, 0x2000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    const/16 v29, 0x0

    goto :goto_17

    :cond_17
    move/from16 v29, p26

    :goto_17
    const/high16 v1, 0x4000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_18

    const/16 v30, 0x0

    goto :goto_18

    :cond_18
    move/from16 v30, p27

    :goto_18
    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_19

    const/16 v31, 0x0

    goto :goto_19

    :cond_19
    move/from16 v31, p28

    :goto_19
    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1a

    const/16 v32, 0x0

    goto :goto_1a

    :cond_1a
    move/from16 v32, p29

    :goto_1a
    const/high16 v1, 0x20000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1b

    const/16 v33, 0x0

    goto :goto_1b

    :cond_1b
    move/from16 v33, p30

    :goto_1b
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v0

    if-eqz v1, :cond_1c

    const/16 v34, 0x0

    goto :goto_1c

    :cond_1c
    move/from16 v34, p31

    :goto_1c
    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    const/16 v35, 0x0

    goto :goto_1d

    :cond_1d
    move/from16 v35, p32

    :goto_1d
    and-int/lit8 v0, p39, 0x1

    if-eqz v0, :cond_1e

    move-object/from16 v36, v2

    goto :goto_1e

    :cond_1e
    move-object/from16 v36, p33

    :goto_1e
    and-int/lit8 v0, p39, 0x2

    if-eqz v0, :cond_1f

    move-object/from16 v37, v2

    goto :goto_1f

    :cond_1f
    move-object/from16 v37, p34

    :goto_1f
    and-int/lit8 v0, p39, 0x4

    if-eqz v0, :cond_20

    move-object/from16 v38, v2

    goto :goto_20

    :cond_20
    move-object/from16 v38, p35

    :goto_20
    and-int/lit8 v0, p39, 0x8

    if-eqz v0, :cond_21

    const/16 v39, 0x0

    goto :goto_21

    :cond_21
    move/from16 v39, p36

    :goto_21
    and-int/lit8 v0, p39, 0x10

    if-eqz v0, :cond_22

    move-object/from16 v40, v2

    goto :goto_22

    :cond_22
    move-object/from16 v40, p37

    :goto_22
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v18, p15

    .line 2
    invoke-direct/range {v3 .. v40}, Lcom/giphy/sdk/core/models/Media;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/RatingType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/giphy/sdk/core/models/User;Lcom/giphy/sdk/core/models/Images;Lcom/giphy/sdk/core/models/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZZZZZZZZZLcom/giphy/sdk/core/models/BottleData;Ljava/lang/String;Lcom/giphy/sdk/core/models/Cta;ZLjava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAnalyticsResponsePayload()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->analyticsResponsePayload:Ljava/lang/String;

    return-object v0
.end method

.method public final getAnimatedTextStyle()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->animatedTextStyle:Ljava/lang/String;

    return-object v0
.end method

.method public final getBitlyGifUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->bitlyGifUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBitlyUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->bitlyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBottleData()Lcom/giphy/sdk/core/models/BottleData;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->bottleData:Lcom/giphy/sdk/core/models/BottleData;

    return-object v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->contentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreateDate()Ljava/util/Date;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->createDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getCta()Lcom/giphy/sdk/core/models/Cta;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->cta:Lcom/giphy/sdk/core/models/Cta;

    return-object v0
.end method

.method public final getEmbedUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->embedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeaturedTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->featuredTags:Ljava/util/List;

    return-object v0
.end method

.method public final getHasAttributions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/Media;->hasAttributions:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImages()Lcom/giphy/sdk/core/models/Images;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->images:Lcom/giphy/sdk/core/models/Images;

    return-object v0
.end method

.method public final getImportDate()Ljava/util/Date;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->importDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getRating()Lcom/giphy/sdk/core/models/enums/RatingType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    return-object v0
.end method

.method public final getSlug()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourcePostUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->sourcePostUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceTld()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->sourceTld:Ljava/lang/String;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getTid()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->bottleData:Lcom/giphy/sdk/core/models/BottleData;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/BottleData;->getTid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrendingDate()Ljava/util/Date;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->trendingDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getType()Lcom/giphy/sdk/core/models/enums/MediaType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->type:Lcom/giphy/sdk/core/models/enums/MediaType;

    return-object v0
.end method

.method public final getUpdateDate()Ljava/util/Date;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->updateDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/giphy/sdk/core/models/User;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->user:Lcom/giphy/sdk/core/models/User;

    return-object v0
.end method

.method public final getUserDictionary()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->userDictionary:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getVideo()Lcom/giphy/sdk/core/models/Video;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->video:Lcom/giphy/sdk/core/models/Video;

    return-object v0
.end method

.method public final isAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/Media;->isAnonymous:Z

    return v0
.end method

.method public final isCommunity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/Media;->isCommunity:Z

    return v0
.end method

.method public final isDynamic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/Media;->isDynamic:Z

    return v0
.end method

.method public final isFeatured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/Media;->isFeatured:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/Media;->isHidden:Z

    return v0
.end method

.method public final isIndexable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/Media;->isIndexable:Z

    return v0
.end method

.method public final isRealtime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/Media;->isRealtime:Z

    return v0
.end method

.method public final isRemoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/Media;->isRemoved:Z

    return v0
.end method

.method public final isSticker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/Media;->isSticker:Z

    return v0
.end method

.method public final postProcess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->images:Lcom/giphy/sdk/core/models/Images;

    iget-object v1, p0, Lcom/giphy/sdk/core/models/Media;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Images;->setMediaId(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Media;->images:Lcom/giphy/sdk/core/models/Images;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Images;->postProcess()V

    return-void
.end method

.method public final setBottleData(Lcom/giphy/sdk/core/models/BottleData;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/BottleData;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Media;->bottleData:Lcom/giphy/sdk/core/models/BottleData;

    return-void
.end method

.method public final setHasAttributions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/core/models/Media;->hasAttributions:Z

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Media;->id:Ljava/lang/String;

    return-void
.end method

.method public final setImages(Lcom/giphy/sdk/core/models/Images;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/models/Images;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Media;->images:Lcom/giphy/sdk/core/models/Images;

    return-void
.end method

.method public final setType(Lcom/giphy/sdk/core/models/enums/MediaType;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Media;->type:Lcom/giphy/sdk/core/models/enums/MediaType;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Media;->url:Ljava/lang/String;

    return-void
.end method

.method public final setUser(Lcom/giphy/sdk/core/models/User;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/User;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Media;->user:Lcom/giphy/sdk/core/models/User;

    return-void
.end method

.method public final setUserDictionary(Ljava/util/HashMap;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Media;->userDictionary:Ljava/util/HashMap;

    return-void
.end method

.method public final setVideo(Lcom/giphy/sdk/core/models/Video;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Video;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Media;->video:Lcom/giphy/sdk/core/models/Video;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->type:Lcom/giphy/sdk/core/models/enums/MediaType;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->slug:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->bitlyGifUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->bitlyUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->embedUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->contentUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->tags:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->featuredTags:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->user:Lcom/giphy/sdk/core/models/User;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->images:Lcom/giphy/sdk/core/models/Images;

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->video:Lcom/giphy/sdk/core/models/Video;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->analyticsResponsePayload:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->sourceTld:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->sourcePostUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->updateDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->createDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->importDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->trendingDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/Media;->isHidden:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/Media;->isRemoved:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/Media;->isCommunity:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/Media;->isAnonymous:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/Media;->isFeatured:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/Media;->isRealtime:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/Media;->isIndexable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/Media;->isSticker:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/Media;->isDynamic:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->bottleData:Lcom/giphy/sdk/core/models/BottleData;

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->animatedTextStyle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->cta:Lcom/giphy/sdk/core/models/Cta;

    if-eqz p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/Media;->hasAttributions:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Media;->userDictionary:Ljava/util/HashMap;

    if-eqz p2, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_7
    return-void
.end method
