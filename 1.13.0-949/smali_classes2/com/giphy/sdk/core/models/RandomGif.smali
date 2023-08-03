.class public final Lcom/giphy/sdk/core/models/RandomGif;
.super Ljava/lang/Object;
.source "RandomGif.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build La8/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/models/RandomGif$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u00081\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0093\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000b\u0012\u0006\u0010\u001c\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u001eJ\t\u0010;\u001a\u00020\u000bH\u00d6\u0001J\u0006\u0010<\u001a\u00020=J\u0019\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020\u000bH\u00d6\u0001R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0016\u0010\u0010\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010 R\u0016\u0010\u000f\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\"R\u0016\u0010\u0017\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\"R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010 R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010 R\u0016\u0010\u0016\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\"R\u0016\u0010\u0013\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\"R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010 R\u0016\u0010\u0012\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\"R\u0016\u0010\u001b\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\"R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010 R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010 R\u0016\u0010\u001a\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\"R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010 R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\"R\u0016\u0010\r\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\"R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010 R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010 R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010 R\u0016\u0010\u000c\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\"R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010 R\u0011\u0010\u001c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010 \u00a8\u0006C"
    }
    d2 = {
        "Lcom/giphy/sdk/core/models/RandomGif;",
        "Landroid/os/Parcelable;",
        "type",
        "Lcom/giphy/sdk/core/models/enums/MediaType;",
        "id",
        "",
        "url",
        "imageOriginalUrl",
        "imageUrl",
        "imageMp4Url",
        "imageFrames",
        "",
        "imageWidth",
        "imageHeight",
        "fixedHeightDownsampledUrl",
        "fixedHeightDownsampledWidth",
        "fixedHeightDownsampledHeight",
        "fixedWidthDownsampledUrl",
        "fixedWidthDownsampledWidth",
        "fixedWidthDownsampledHeight",
        "fixedHeightSmallUrl",
        "fixedHeightSmallStillUrl",
        "fixedHeightSmallWidth",
        "fixedHeightSmallHeight",
        "fixedWidthSmallUrl",
        "fixedWidthSmallStillUrl",
        "fixedWidthSmallWidth",
        "fixedWidthSmallHeight",
        "username",
        "caption",
        "(Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V",
        "getCaption",
        "()Ljava/lang/String;",
        "getFixedHeightDownsampledHeight",
        "()I",
        "getFixedHeightDownsampledUrl",
        "getFixedHeightDownsampledWidth",
        "getFixedHeightSmallHeight",
        "getFixedHeightSmallStillUrl",
        "getFixedHeightSmallUrl",
        "getFixedHeightSmallWidth",
        "getFixedWidthDownsampledHeight",
        "getFixedWidthDownsampledUrl",
        "getFixedWidthDownsampledWidth",
        "getFixedWidthSmallHeight",
        "getFixedWidthSmallStillUrl",
        "getFixedWidthSmallUrl",
        "getFixedWidthSmallWidth",
        "getId",
        "getImageFrames",
        "getImageHeight",
        "getImageMp4Url",
        "getImageOriginalUrl",
        "getImageUrl",
        "getImageWidth",
        "getType",
        "()Lcom/giphy/sdk/core/models/enums/MediaType;",
        "getUrl",
        "getUsername",
        "describeContents",
        "toGif",
        "Lcom/giphy/sdk/core/models/Media;",
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
            "Lcom/giphy/sdk/core/models/RandomGif;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final caption:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fixedHeightDownsampledHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height_downsampled_height"
    .end annotation
.end field

.field private final fixedHeightDownsampledUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height_downsampled_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fixedHeightDownsampledWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height_downsampled_width"
    .end annotation
.end field

.field private final fixedHeightSmallHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height_small_height"
    .end annotation
.end field

.field private final fixedHeightSmallStillUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height_small_still_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fixedHeightSmallUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height_small_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fixedHeightSmallWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height_small_width"
    .end annotation
.end field

.field private final fixedWidthDownsampledHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width_downsampled_height"
    .end annotation
.end field

.field private final fixedWidthDownsampledUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width_downsampled_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fixedWidthDownsampledWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width_downsampled_width"
    .end annotation
.end field

.field private final fixedWidthSmallHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width_small_height"
    .end annotation
.end field

.field private final fixedWidthSmallStillUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width_small_still_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fixedWidthSmallUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width_small_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fixedWidthSmallWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width_small_width"
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final imageFrames:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_frames"
    .end annotation
.end field

.field private final imageHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_height"
    .end annotation
.end field

.field private final imageMp4Url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_mp4_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final imageOriginalUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_original_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_url"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final imageWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image_width"
    .end annotation
.end field

.field private final type:Lcom/giphy/sdk/core/models/enums/MediaType;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final username:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/core/models/RandomGif$Creator;

    invoke-direct {v0}, Lcom/giphy/sdk/core/models/RandomGif$Creator;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/models/RandomGif;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/giphy/sdk/core/models/enums/MediaType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
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
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p24

    const-string v3, "id"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "username"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->type:Lcom/giphy/sdk/core/models/enums/MediaType;

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->id:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->url:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->imageOriginalUrl:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->imageUrl:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->imageMp4Url:Ljava/lang/String;

    move v1, p7

    iput v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->imageFrames:I

    move v1, p8

    iput v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->imageWidth:I

    move v1, p9

    iput v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->imageHeight:I

    move-object v1, p10

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledUrl:Ljava/lang/String;

    move v1, p11

    iput v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledWidth:I

    move/from16 v1, p12

    iput v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledHeight:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledUrl:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledWidth:I

    move/from16 v1, p15

    iput v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledHeight:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallUrl:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallStillUrl:Ljava/lang/String;

    move/from16 v1, p18

    iput v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallWidth:I

    move/from16 v1, p19

    iput v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallHeight:I

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallUrl:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallStillUrl:Ljava/lang/String;

    move/from16 v1, p22

    iput v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallWidth:I

    move/from16 v1, p23

    iput v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallHeight:I

    iput-object v2, v0, Lcom/giphy/sdk/core/models/RandomGif;->username:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->caption:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 29

    move/from16 v0, p26

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

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

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    move/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    const/4 v11, 0x0

    goto :goto_6

    :cond_6
    move/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    const/4 v12, 0x0

    goto :goto_7

    :cond_7
    move/from16 v12, p9

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

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move/from16 v14, p11

    :goto_9
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move/from16 v15, p12

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

    const/16 v17, 0x0

    goto :goto_c

    :cond_c
    move/from16 v17, p14

    :goto_c
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_d

    const/16 v18, 0x0

    goto :goto_d

    :cond_d
    move/from16 v18, p15

    :goto_d
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v19, v2

    goto :goto_e

    :cond_e
    move-object/from16 v19, p16

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

    const/16 v21, 0x0

    goto :goto_10

    :cond_10
    move/from16 v21, p18

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

    move-object/from16 v23, v2

    goto :goto_12

    :cond_12
    move-object/from16 v23, p20

    :goto_12
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move-object/from16 v24, v2

    goto :goto_13

    :cond_13
    move-object/from16 v24, p21

    :goto_13
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    const/16 v25, 0x0

    goto :goto_14

    :cond_14
    move/from16 v25, p22

    :goto_14
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    const/16 v26, 0x0

    goto :goto_15

    :cond_15
    move/from16 v26, p23

    :goto_15
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    move-object/from16 v28, v2

    goto :goto_16

    :cond_16
    move-object/from16 v28, p25

    :goto_16
    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v27, p24

    .line 2
    invoke-direct/range {v3 .. v28}, Lcom/giphy/sdk/core/models/RandomGif;-><init>(Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getCaption()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public final getFixedHeightDownsampledHeight()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledHeight:I

    return v0
.end method

.method public final getFixedHeightDownsampledUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFixedHeightDownsampledWidth()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledWidth:I

    return v0
.end method

.method public final getFixedHeightSmallHeight()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallHeight:I

    return v0
.end method

.method public final getFixedHeightSmallStillUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallStillUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFixedHeightSmallUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFixedHeightSmallWidth()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallWidth:I

    return v0
.end method

.method public final getFixedWidthDownsampledHeight()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledHeight:I

    return v0
.end method

.method public final getFixedWidthDownsampledUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFixedWidthDownsampledWidth()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledWidth:I

    return v0
.end method

.method public final getFixedWidthSmallHeight()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallHeight:I

    return v0
.end method

.method public final getFixedWidthSmallStillUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallStillUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFixedWidthSmallUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getFixedWidthSmallWidth()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallWidth:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageFrames()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageFrames:I

    return v0
.end method

.method public final getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageHeight:I

    return v0
.end method

.method public final getImageMp4Url()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageMp4Url:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageWidth:I

    return v0
.end method

.method public final getType()Lcom/giphy/sdk/core/models/enums/MediaType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->type:Lcom/giphy/sdk/core/models/enums/MediaType;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/RandomGif;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final toGif()Lcom/giphy/sdk/core/models/Media;
    .locals 50
    .annotation build Lm8/g;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v15, Lcom/giphy/sdk/core/models/Media;

    move-object v1, v15

    iget-object v2, v0, Lcom/giphy/sdk/core/models/RandomGif;->id:Ljava/lang/String;

    new-instance v17, Lcom/giphy/sdk/core/models/Images;

    move-object/from16 v16, v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const v38, 0xfffff

    const/16 v39, 0x0

    invoke-direct/range {v17 .. v39}, Lcom/giphy/sdk/core/models/Images;-><init>(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v42, v15

    move-object/from16 v15, v17

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, -0x4002

    const/16 v40, 0x1f

    const/16 v41, 0x0

    invoke-direct/range {v1 .. v41}, Lcom/giphy/sdk/core/models/Media;-><init>(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/RatingType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/giphy/sdk/core/models/User;Lcom/giphy/sdk/core/models/Images;Lcom/giphy/sdk/core/models/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZZZZZZZZZLcom/giphy/sdk/core/models/BottleData;Ljava/lang/String;Lcom/giphy/sdk/core/models/Cta;ZLjava/util/HashMap;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iget-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->type:Lcom/giphy/sdk/core/models/enums/MediaType;

    move-object/from16 v2, v42

    invoke-virtual {v2, v1}, Lcom/giphy/sdk/core/models/Media;->setType(Lcom/giphy/sdk/core/models/enums/MediaType;)V

    .line 3
    iget-object v1, v0, Lcom/giphy/sdk/core/models/RandomGif;->url:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/giphy/sdk/core/models/Media;->setUrl(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/giphy/sdk/core/models/User;

    move-object v3, v1

    iget-object v8, v0, Lcom/giphy/sdk/core/models/RandomGif;->username:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v25, 0x1fffef

    const/16 v26, 0x0

    invoke-direct/range {v3 .. v26}, Lcom/giphy/sdk/core/models/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v1}, Lcom/giphy/sdk/core/models/Media;->setUser(Lcom/giphy/sdk/core/models/User;)V

    .line 5
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    new-instance v15, Lcom/giphy/sdk/core/models/Image;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x7ff

    move-object v3, v15

    move-object/from16 v43, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v3 .. v16}, Lcom/giphy/sdk/core/models/Image;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/giphy/sdk/core/models/enums/RenditionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v43

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Images;->setOriginal(Lcom/giphy/sdk/core/models/Image;)V

    .line 6
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->imageOriginalUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setGifUrl(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->imageMp4Url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setMp4Url(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->imageFrames:I

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setFrames(I)V

    .line 9
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->imageWidth:I

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setWidth(I)V

    .line 10
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->imageHeight:I

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setHeight(I)V

    .line 11
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    new-instance v15, Lcom/giphy/sdk/core/models/Image;

    const/16 v16, 0x7ff

    move-object v3, v15

    move-object/from16 v44, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v3 .. v16}, Lcom/giphy/sdk/core/models/Image;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/giphy/sdk/core/models/enums/RenditionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v44

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Images;->setFixedHeightDownsampled(Lcom/giphy/sdk/core/models/Image;)V

    .line 12
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedHeightDownsampled()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setGifUrl(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedHeightDownsampled()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledWidth:I

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setWidth(I)V

    .line 14
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedHeightDownsampled()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledHeight:I

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setHeight(I)V

    .line 15
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    new-instance v15, Lcom/giphy/sdk/core/models/Image;

    const/16 v16, 0x7ff

    move-object v3, v15

    move-object/from16 v45, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v3 .. v16}, Lcom/giphy/sdk/core/models/Image;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/giphy/sdk/core/models/enums/RenditionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v45

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Images;->setFixedWidthDownsampled(Lcom/giphy/sdk/core/models/Image;)V

    .line 16
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedWidthDownsampled()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setGifUrl(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedWidthDownsampled()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledWidth:I

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setWidth(I)V

    .line 18
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedWidthDownsampled()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledHeight:I

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setHeight(I)V

    .line 19
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    new-instance v15, Lcom/giphy/sdk/core/models/Image;

    const/16 v16, 0x7ff

    move-object v3, v15

    move-object/from16 v46, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v3 .. v16}, Lcom/giphy/sdk/core/models/Image;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/giphy/sdk/core/models/enums/RenditionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v46

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Images;->setFixedHeightSmall(Lcom/giphy/sdk/core/models/Image;)V

    .line 20
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedHeightSmall()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setGifUrl(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedHeightSmall()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallWidth:I

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setWidth(I)V

    .line 22
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedHeightSmall()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallHeight:I

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setHeight(I)V

    .line 23
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    new-instance v15, Lcom/giphy/sdk/core/models/Image;

    const/16 v16, 0x7ff

    move-object v3, v15

    move-object/from16 v47, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v3 .. v16}, Lcom/giphy/sdk/core/models/Image;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/giphy/sdk/core/models/enums/RenditionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v47

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Images;->setFixedWidthSmall(Lcom/giphy/sdk/core/models/Image;)V

    .line 24
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedWidthSmall()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setGifUrl(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedWidthSmall()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallWidth:I

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setWidth(I)V

    .line 26
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedWidthSmall()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallHeight:I

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setHeight(I)V

    .line 27
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    new-instance v15, Lcom/giphy/sdk/core/models/Image;

    const/16 v16, 0x7ff

    move-object v3, v15

    move-object/from16 v48, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v3 .. v16}, Lcom/giphy/sdk/core/models/Image;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/giphy/sdk/core/models/enums/RenditionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v48

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Images;->setFixedHeightSmallStill(Lcom/giphy/sdk/core/models/Image;)V

    .line 28
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedHeightSmallStill()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallStillUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setGifUrl(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    new-instance v15, Lcom/giphy/sdk/core/models/Image;

    const/16 v16, 0x7ff

    move-object v3, v15

    move-object/from16 v49, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v3 .. v16}, Lcom/giphy/sdk/core/models/Image;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/giphy/sdk/core/models/enums/RenditionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v49

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Images;->setFixedWidthSmallStill(Lcom/giphy/sdk/core/models/Image;)V

    .line 30
    invoke-virtual {v2}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v1

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Images;->getFixedWidthSmallStill()Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallStillUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/giphy/sdk/core/models/Image;->setGifUrl(Ljava/lang/String;)V

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->type:Lcom/giphy/sdk/core/models/enums/MediaType;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageOriginalUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageMp4Url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageFrames:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->imageHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightDownsampledHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthDownsampledHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallStillUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedHeightSmallHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallStillUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->fixedWidthSmallHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/core/models/RandomGif;->caption:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
