.class public final Lcom/giphy/sdk/core/models/Channel;
.super Ljava/lang/Object;
.source "Channel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build La8/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/models/Channel$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012\u0012\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0015J\t\u0010:\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u0003H\u00d6\u0001R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R \u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR \u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R \u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001b\"\u0004\u0008#\u0010\u001dR \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001b\"\u0004\u0008%\u0010\u001dR \u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u001b\"\u0004\u0008/\u0010\u001dR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u001b\"\u0004\u00081\u0010\u001dR\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0017\"\u0004\u00083\u0010\u0019R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u001b\"\u0004\u00085\u0010\u001dR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109\u00a8\u0006@"
    }
    d2 = {
        "Lcom/giphy/sdk/core/models/Channel;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "slug",
        "",
        "displayName",
        "shortDisplayName",
        "type",
        "contentType",
        "Lcom/giphy/sdk/core/models/enums/MediaType;",
        "descriptionText",
        "bannerImage",
        "featuredGif",
        "Lcom/giphy/sdk/core/models/Media;",
        "user",
        "Lcom/giphy/sdk/core/models/User;",
        "tags",
        "",
        "Lcom/giphy/sdk/core/models/ChannelTag;",
        "ancestors",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/User;Ljava/util/List;Ljava/util/List;)V",
        "getAncestors",
        "()Ljava/util/List;",
        "setAncestors",
        "(Ljava/util/List;)V",
        "getBannerImage",
        "()Ljava/lang/String;",
        "setBannerImage",
        "(Ljava/lang/String;)V",
        "getContentType",
        "()Lcom/giphy/sdk/core/models/enums/MediaType;",
        "setContentType",
        "(Lcom/giphy/sdk/core/models/enums/MediaType;)V",
        "getDescriptionText",
        "setDescriptionText",
        "getDisplayName",
        "setDisplayName",
        "getFeaturedGif",
        "()Lcom/giphy/sdk/core/models/Media;",
        "setFeaturedGif",
        "(Lcom/giphy/sdk/core/models/Media;)V",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getShortDisplayName",
        "setShortDisplayName",
        "getSlug",
        "setSlug",
        "getTags",
        "setTags",
        "getType",
        "setType",
        "getUser",
        "()Lcom/giphy/sdk/core/models/User;",
        "setUser",
        "(Lcom/giphy/sdk/core/models/User;)V",
        "describeContents",
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
            "Lcom/giphy/sdk/core/models/Channel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ancestors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/Channel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private bannerImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banner_image"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private contentType:Lcom/giphy/sdk/core/models/enums/MediaType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_type"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private descriptionText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_name"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private featuredGif:Lcom/giphy/sdk/core/models/Media;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "featured_gif"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private id:I

.field private shortDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_display_name"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private slug:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/ChannelTag;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private user:Lcom/giphy/sdk/core/models/User;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/core/models/Channel$Creator;

    invoke-direct {v0}, Lcom/giphy/sdk/core/models/Channel$Creator;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/models/Channel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/User;Ljava/util/List;Ljava/util/List;)V
    .locals 0
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
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Lcom/giphy/sdk/core/models/enums/MediaType;
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
    .param p9    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Lcom/giphy/sdk/core/models/User;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/enums/MediaType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/Media;",
            "Lcom/giphy/sdk/core/models/User;",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/ChannelTag;",
            ">;",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/Channel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/giphy/sdk/core/models/Channel;->id:I

    iput-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->slug:Ljava/lang/String;

    iput-object p3, p0, Lcom/giphy/sdk/core/models/Channel;->displayName:Ljava/lang/String;

    iput-object p4, p0, Lcom/giphy/sdk/core/models/Channel;->shortDisplayName:Ljava/lang/String;

    iput-object p5, p0, Lcom/giphy/sdk/core/models/Channel;->type:Ljava/lang/String;

    iput-object p6, p0, Lcom/giphy/sdk/core/models/Channel;->contentType:Lcom/giphy/sdk/core/models/enums/MediaType;

    iput-object p7, p0, Lcom/giphy/sdk/core/models/Channel;->descriptionText:Ljava/lang/String;

    iput-object p8, p0, Lcom/giphy/sdk/core/models/Channel;->bannerImage:Ljava/lang/String;

    iput-object p9, p0, Lcom/giphy/sdk/core/models/Channel;->featuredGif:Lcom/giphy/sdk/core/models/Media;

    iput-object p10, p0, Lcom/giphy/sdk/core/models/Channel;->user:Lcom/giphy/sdk/core/models/User;

    iput-object p11, p0, Lcom/giphy/sdk/core/models/Channel;->tags:Ljava/util/List;

    iput-object p12, p0, Lcom/giphy/sdk/core/models/Channel;->ancestors:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/User;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 14

    and-int/lit8 v0, p13, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 2
    invoke-direct/range {v1 .. v13}, Lcom/giphy/sdk/core/models/Channel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/User;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAncestors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/Channel;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Channel;->ancestors:Ljava/util/List;

    return-object v0
.end method

.method public final getBannerImage()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Channel;->bannerImage:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentType()Lcom/giphy/sdk/core/models/enums/MediaType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Channel;->contentType:Lcom/giphy/sdk/core/models/enums/MediaType;

    return-object v0
.end method

.method public final getDescriptionText()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Channel;->descriptionText:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Channel;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeaturedGif()Lcom/giphy/sdk/core/models/Media;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Channel;->featuredGif:Lcom/giphy/sdk/core/models/Media;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/Channel;->id:I

    return v0
.end method

.method public final getShortDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Channel;->shortDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSlug()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Channel;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/ChannelTag;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Channel;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Channel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Lcom/giphy/sdk/core/models/User;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Channel;->user:Lcom/giphy/sdk/core/models/User;

    return-object v0
.end method

.method public final setAncestors(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/Channel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Channel;->ancestors:Ljava/util/List;

    return-void
.end method

.method public final setBannerImage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Channel;->bannerImage:Ljava/lang/String;

    return-void
.end method

.method public final setContentType(Lcom/giphy/sdk/core/models/enums/MediaType;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Channel;->contentType:Lcom/giphy/sdk/core/models/enums/MediaType;

    return-void
.end method

.method public final setDescriptionText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Channel;->descriptionText:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Channel;->displayName:Ljava/lang/String;

    return-void
.end method

.method public final setFeaturedGif(Lcom/giphy/sdk/core/models/Media;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Channel;->featuredGif:Lcom/giphy/sdk/core/models/Media;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/giphy/sdk/core/models/Channel;->id:I

    return-void
.end method

.method public final setShortDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Channel;->shortDisplayName:Ljava/lang/String;

    return-void
.end method

.method public final setSlug(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Channel;->slug:Ljava/lang/String;

    return-void
.end method

.method public final setTags(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/core/models/ChannelTag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Channel;->tags:Ljava/util/List;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Channel;->type:Ljava/lang/String;

    return-void
.end method

.method public final setUser(Lcom/giphy/sdk/core/models/User;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/User;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Channel;->user:Lcom/giphy/sdk/core/models/User;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/giphy/sdk/core/models/Channel;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->slug:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->shortDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->contentType:Lcom/giphy/sdk/core/models/enums/MediaType;

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
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->descriptionText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->bannerImage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->featuredGif:Lcom/giphy/sdk/core/models/Media;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->user:Lcom/giphy/sdk/core/models/User;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->tags:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/giphy/sdk/core/models/ChannelTag;

    invoke-interface {v2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Channel;->ancestors:Ljava/util/List;

    if-eqz p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giphy/sdk/core/models/Channel;

    invoke-interface {v0, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_6
    return-void
.end method
