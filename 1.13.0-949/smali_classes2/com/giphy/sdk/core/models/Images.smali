.class public final Lcom/giphy/sdk/core/models/Images;
.super Ljava/lang/Object;
.source "Images.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build La8/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/core/models/Images$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000e\n\u0002\u0008\"\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u00f5\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0002\u0010\u0018J\t\u00109\u001a\u00020:H\u00d6\u0001J\u0006\u0010;\u001a\u00020<J\u0019\u0010=\u001a\u00020<2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020:H\u00d6\u0001R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001aR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001aR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001aR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001aR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001a\"\u0004\u0008!\u0010\"R \u0010\t\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001a\"\u0004\u0008$\u0010\"R \u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u001a\"\u0004\u0008&\u0010\"R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001aR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001aR \u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u001a\"\u0004\u0008*\u0010\"R \u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u001a\"\u0004\u0008,\u0010\"R \u0010\u000c\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001a\"\u0004\u0008.\u0010\"R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u001aR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u001aR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u001a\"\u0004\u00086\u0010\"R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010\u001aR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\u001a\u00a8\u0006A"
    }
    d2 = {
        "Lcom/giphy/sdk/core/models/Images;",
        "Landroid/os/Parcelable;",
        "fixedHeight",
        "Lcom/giphy/sdk/core/models/Image;",
        "fixedHeightStill",
        "fixedHeightDownsampled",
        "fixedWidth",
        "fixedWidthStill",
        "fixedWidthDownsampled",
        "fixedHeightSmall",
        "fixedHeightSmallStill",
        "fixedWidthSmall",
        "fixedWidthSmallStill",
        "downsized",
        "downsizedStill",
        "downsizedLarge",
        "downsizedMedium",
        "original",
        "originalStill",
        "looping",
        "preview",
        "downsizedSmall",
        "mediaId",
        "",
        "(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Ljava/lang/String;)V",
        "getDownsized",
        "()Lcom/giphy/sdk/core/models/Image;",
        "getDownsizedLarge",
        "getDownsizedMedium",
        "getDownsizedSmall",
        "getDownsizedStill",
        "getFixedHeight",
        "getFixedHeightDownsampled",
        "setFixedHeightDownsampled",
        "(Lcom/giphy/sdk/core/models/Image;)V",
        "getFixedHeightSmall",
        "setFixedHeightSmall",
        "getFixedHeightSmallStill",
        "setFixedHeightSmallStill",
        "getFixedHeightStill",
        "getFixedWidth",
        "getFixedWidthDownsampled",
        "setFixedWidthDownsampled",
        "getFixedWidthSmall",
        "setFixedWidthSmall",
        "getFixedWidthSmallStill",
        "setFixedWidthSmallStill",
        "getFixedWidthStill",
        "getLooping",
        "getMediaId",
        "()Ljava/lang/String;",
        "setMediaId",
        "(Ljava/lang/String;)V",
        "getOriginal",
        "setOriginal",
        "getOriginalStill",
        "getPreview",
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
            "Lcom/giphy/sdk/core/models/Images;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final downsized:Lcom/giphy/sdk/core/models/Image;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final downsizedLarge:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downsized_large"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final downsizedMedium:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downsized_medium"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final downsizedSmall:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downsized_small"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final downsizedStill:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "downsized_still"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fixedHeight:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private fixedHeightDownsampled:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height_downsampled"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private fixedHeightSmall:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height_small"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private fixedHeightSmallStill:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height_small_still"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fixedHeightStill:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_height_still"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fixedWidth:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private fixedWidthDownsampled:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width_downsampled"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private fixedWidthSmall:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width_small"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private fixedWidthSmallStill:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width_small_still"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final fixedWidthStill:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fixed_width_still"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final looping:Lcom/giphy/sdk/core/models/Image;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private mediaId:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private original:Lcom/giphy/sdk/core/models/Image;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final originalStill:Lcom/giphy/sdk/core/models/Image;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_still"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final preview:Lcom/giphy/sdk/core/models/Image;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/core/models/Images$Creator;

    invoke-direct {v0}, Lcom/giphy/sdk/core/models/Images$Creator;-><init>()V

    sput-object v0, Lcom/giphy/sdk/core/models/Images;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

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

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xfffff

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v22}, Lcom/giphy/sdk/core/models/Images;-><init>(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p14    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p15    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p16    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p17    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p18    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p19    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->fixedHeight:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p2

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->fixedHeightStill:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p3

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->fixedHeightDownsampled:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p4

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->fixedWidth:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p5

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->fixedWidthStill:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p6

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->fixedWidthDownsampled:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p7

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmall:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p8

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmallStill:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p9

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmall:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p10

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmallStill:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p11

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->downsized:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p12

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->downsizedStill:Lcom/giphy/sdk/core/models/Image;

    move-object v1, p13

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->downsizedLarge:Lcom/giphy/sdk/core/models/Image;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->downsizedMedium:Lcom/giphy/sdk/core/models/Image;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->original:Lcom/giphy/sdk/core/models/Image;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->originalStill:Lcom/giphy/sdk/core/models/Image;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->looping:Lcom/giphy/sdk/core/models/Image;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->preview:Lcom/giphy/sdk/core/models/Image;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->downsizedSmall:Lcom/giphy/sdk/core/models/Image;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v0, v0, v20

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v0, p20

    :goto_13
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v0

    .line 2
    invoke-direct/range {p1 .. p21}, Lcom/giphy/sdk/core/models/Images;-><init>(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/core/models/Image;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getDownsized()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsized:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getDownsizedLarge()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedLarge:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getDownsizedMedium()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedMedium:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getDownsizedSmall()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedSmall:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getDownsizedStill()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedStill:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getFixedHeight()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeight:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getFixedHeightDownsampled()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightDownsampled:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getFixedHeightSmall()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmall:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getFixedHeightSmallStill()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmallStill:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getFixedHeightStill()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightStill:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getFixedWidth()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidth:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getFixedWidthDownsampled()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthDownsampled:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getFixedWidthSmall()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmall:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getFixedWidthSmallStill()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmallStill:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getFixedWidthStill()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthStill:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getLooping()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->looping:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getMediaId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOriginal()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->original:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getOriginalStill()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->originalStill:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final getPreview()Lcom/giphy/sdk/core/models/Image;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->preview:Lcom/giphy/sdk/core/models/Image;

    return-object v0
.end method

.method public final postProcess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->original:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->original:Lcom/giphy/sdk/core/models/Image;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->original:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->originalStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->originalStill:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->originalStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeight:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeight:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeight:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightStill:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeightStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightDownsampled:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_4

    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightDownsampled:Lcom/giphy/sdk/core/models/Image;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeightDownsampled:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidth:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_5

    .line 17
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidth:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidth:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_6

    .line 20
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthStill:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidthStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthDownsampled:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_7

    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthDownsampled:Lcom/giphy/sdk/core/models/Image;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidthDownsampled:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 25
    :cond_7
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmall:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_8

    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmall:Lcom/giphy/sdk/core/models/Image;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeightSmall:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 28
    :cond_8
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmallStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_9

    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmallStill:Lcom/giphy/sdk/core/models/Image;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedHeightSmallStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 31
    :cond_9
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmall:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_a

    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmall:Lcom/giphy/sdk/core/models/Image;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidthSmall:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 34
    :cond_a
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmallStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_b

    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmallStill:Lcom/giphy/sdk/core/models/Image;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidthSmallStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 37
    :cond_b
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsized:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_c

    .line 38
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsized:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsized:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 40
    :cond_c
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_d

    .line 41
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedStill:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsizedStill:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 43
    :cond_d
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedLarge:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_e

    .line 44
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedLarge:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsizedLarge:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 46
    :cond_e
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedMedium:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_f

    .line 47
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedMedium:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsizedMedium:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 49
    :cond_f
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->looping:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_10

    .line 50
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->looping:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->looping:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 52
    :cond_10
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->preview:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_11

    .line 53
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->preview:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->preview:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    .line 55
    :cond_11
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedSmall:Lcom/giphy/sdk/core/models/Image;

    if-eqz v0, :cond_12

    .line 56
    iget-object v1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setMediaId(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/giphy/sdk/core/models/Images;->downsizedSmall:Lcom/giphy/sdk/core/models/Image;

    sget-object v1, Lcom/giphy/sdk/core/models/enums/RenditionType;->downsizedSmall:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/core/models/Image;->setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V

    :cond_12
    return-void
.end method

.method public final setFixedHeightDownsampled(Lcom/giphy/sdk/core/models/Image;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightDownsampled:Lcom/giphy/sdk/core/models/Image;

    return-void
.end method

.method public final setFixedHeightSmall(Lcom/giphy/sdk/core/models/Image;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmall:Lcom/giphy/sdk/core/models/Image;

    return-void
.end method

.method public final setFixedHeightSmallStill(Lcom/giphy/sdk/core/models/Image;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmallStill:Lcom/giphy/sdk/core/models/Image;

    return-void
.end method

.method public final setFixedWidthDownsampled(Lcom/giphy/sdk/core/models/Image;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthDownsampled:Lcom/giphy/sdk/core/models/Image;

    return-void
.end method

.method public final setFixedWidthSmall(Lcom/giphy/sdk/core/models/Image;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmall:Lcom/giphy/sdk/core/models/Image;

    return-void
.end method

.method public final setFixedWidthSmallStill(Lcom/giphy/sdk/core/models/Image;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmallStill:Lcom/giphy/sdk/core/models/Image;

    return-void
.end method

.method public final setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    return-void
.end method

.method public final setOriginal(Lcom/giphy/sdk/core/models/Image;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Image;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/core/models/Images;->original:Lcom/giphy/sdk/core/models/Image;

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

    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeight:Lcom/giphy/sdk/core/models/Image;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightDownsampled:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidth:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthDownsampled:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmall:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->fixedHeightSmallStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmall:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->fixedWidthSmallStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->downsized:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_a

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->downsizedStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_b

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->downsizedLarge:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_c

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_c
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->downsizedMedium:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_d

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_d

    :cond_d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->original:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_e

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    :cond_e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->originalStill:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_f

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->looping:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_10

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->preview:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_11

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_11

    :cond_11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->downsizedSmall:Lcom/giphy/sdk/core/models/Image;

    if-eqz p2, :cond_12

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_12
    iget-object p2, p0, Lcom/giphy/sdk/core/models/Images;->mediaId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
