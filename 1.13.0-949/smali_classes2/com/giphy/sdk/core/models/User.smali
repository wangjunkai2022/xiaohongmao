.class public final Lcom/giphy/sdk/core/models/User;
.super Ljava/lang/Object;
.source "User.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build La8/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/models/User$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008)\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u00f5\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0019J\t\u00104\u001a\u000205H\u00d6\u0001J\u0019\u00106\u001a\u0002072\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u000205H\u00d6\u0001R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001bR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001bR\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001bR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001bR\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010#R\u001e\u0010\u0017\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010#\"\u0004\u0008$\u0010%R\u0016\u0010\u0013\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010#R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001bR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001bR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001bR \u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u001b\"\u0004\u0008,\u0010-R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u001b\"\u0004\u0008/\u0010-R\u001e\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010#\"\u0004\u00081\u0010%R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u001bR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\u001b\u00a8\u0006;"
    }
    d2 = {
        "Lcom/giphy/sdk/core/models/User;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "avatarUrl",
        "bannerUrl",
        "profileUrl",
        "username",
        "displayName",
        "twitter",
        "isPublic",
        "",
        "attributionDisplayName",
        "name",
        "description",
        "facebookUrl",
        "twitterUrl",
        "instagramUrl",
        "tumblrUrl",
        "isSuppressChrome",
        "websiteUrl",
        "websiteDisplayUrl",
        "verified",
        "isStaff",
        "userType",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V",
        "getAttributionDisplayName",
        "()Ljava/lang/String;",
        "getAvatarUrl",
        "getBannerUrl",
        "getDescription",
        "getDisplayName",
        "getFacebookUrl",
        "getId",
        "getInstagramUrl",
        "()Z",
        "setStaff",
        "(Z)V",
        "getName",
        "getProfileUrl",
        "getTumblrUrl",
        "getTwitter",
        "getTwitterUrl",
        "getUserType",
        "setUserType",
        "(Ljava/lang/String;)V",
        "getUsername",
        "setUsername",
        "getVerified",
        "setVerified",
        "getWebsiteDisplayUrl",
        "getWebsiteUrl",
        "describeContents",
        "",
        "writeToParcel",
        "",
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
            "Lcom/giphy/sdk/core/models/User;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final attributionDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attribution_display_name"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final bannerUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final description:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_name"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final facebookUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebook_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final instagramUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instagram_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final isPublic:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_public"
    .end annotation
.end field

.field private isStaff:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_staff"
    .end annotation
.end field

.field private final isSuppressChrome:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suppress_chrome"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final profileUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final tumblrUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tumblr_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final twitter:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final twitterUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "twitter_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private userType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_type"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private verified:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_verified"
    .end annotation
.end field

.field private final websiteDisplayUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "website_display_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final websiteUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "website_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/core/models/User$Creator;

    invoke-direct {v0}, Lcom/giphy/sdk/core/models/User$Creator;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/models/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
        .annotation build Lm8/g;
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
    .param p9    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
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
    .param p21    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p5

    const-string v2, "username"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/giphy/sdk/core/models/User;->id:Ljava/lang/String;

    move-object v2, p2

    iput-object v2, v0, Lcom/giphy/sdk/core/models/User;->avatarUrl:Ljava/lang/String;

    move-object v2, p3

    iput-object v2, v0, Lcom/giphy/sdk/core/models/User;->bannerUrl:Ljava/lang/String;

    move-object v2, p4

    iput-object v2, v0, Lcom/giphy/sdk/core/models/User;->profileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->username:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->displayName:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->twitter:Ljava/lang/String;

    move v1, p8

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/User;->isPublic:Z

    move-object v1, p9

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->attributionDisplayName:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->name:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->description:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->facebookUrl:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->twitterUrl:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->instagramUrl:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->tumblrUrl:Ljava/lang/String;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/User;->isSuppressChrome:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->websiteUrl:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->websiteDisplayUrl:Ljava/lang/String;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/User;->verified:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/giphy/sdk/core/models/User;->isStaff:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/giphy/sdk/core/models/User;->userType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 25

    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

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

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    const/4 v11, 0x0

    goto :goto_6

    :cond_6
    move/from16 v11, p8

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
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_d

    move-object/from16 v18, v2

    goto :goto_d

    :cond_d
    move-object/from16 v18, p15

    :goto_d
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    const/16 v19, 0x0

    goto :goto_e

    :cond_e
    move/from16 v19, p16

    :goto_e
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v20, v2

    goto :goto_f

    :cond_f
    move-object/from16 v20, p17

    :goto_f
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v21, v2

    goto :goto_10

    :cond_10
    move-object/from16 v21, p18

    :goto_10
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    const/16 v22, 0x0

    goto :goto_11

    :cond_11
    move/from16 v22, p19

    :goto_11
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    const/16 v23, 0x0

    goto :goto_12

    :cond_12
    move/from16 v23, p20

    :goto_12
    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    move-object/from16 v24, v2

    goto :goto_13

    :cond_13
    move-object/from16 v24, p21

    :goto_13
    move-object/from16 v3, p0

    move-object/from16 v8, p5

    .line 2
    invoke-direct/range {v3 .. v24}, Lcom/giphy/sdk/core/models/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAttributionDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->attributionDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBannerUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->bannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFacebookUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->facebookUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstagramUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->instagramUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfileUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->profileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTumblrUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->tumblrUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTwitter()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->twitter:Ljava/lang/String;

    return-object v0
.end method

.method public final getTwitterUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->twitterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/User;->verified:Z

    return v0
.end method

.method public final getWebsiteDisplayUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->websiteDisplayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebsiteUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/User;->websiteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final isPublic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/User;->isPublic:Z

    return v0
.end method

.method public final isStaff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/User;->isStaff:Z

    return v0
.end method

.method public final isSuppressChrome()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/core/models/User;->isSuppressChrome:Z

    return v0
.end method

.method public final setStaff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/core/models/User;->isStaff:Z

    return-void
.end method

.method public final setUserType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/User;->userType:Ljava/lang/String;

    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/core/models/User;->username:Ljava/lang/String;

    return-void
.end method

.method public final setVerified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/core/models/User;->verified:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->bannerUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->profileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->twitter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/User;->isPublic:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->attributionDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->facebookUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->twitterUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->instagramUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->tumblrUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/User;->isSuppressChrome:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->websiteUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->websiteDisplayUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/User;->verified:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/core/models/User;->isStaff:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/User;->userType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
