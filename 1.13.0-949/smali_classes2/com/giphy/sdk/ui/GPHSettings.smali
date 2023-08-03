.class public final Lcom/giphy/sdk/ui/GPHSettings;
.super Ljava/lang/Object;
.source "GPHSettings.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build La8/d;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/GPHSettings$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008L\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00bb\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0002\u0010\u001cJ\t\u0010R\u001a\u00020\u0003H\u00c6\u0003J\t\u0010S\u001a\u00020\nH\u00c6\u0003J\t\u0010T\u001a\u00020\u0014H\u00c6\u0003J\t\u0010U\u001a\u00020\u0008H\u00c6\u0003J\t\u0010V\u001a\u00020\nH\u00c6\u0003J\t\u0010W\u001a\u00020\nH\u00c6\u0003J\t\u0010X\u001a\u00020\nH\u00c6\u0003J\t\u0010Y\u001a\u00020\nH\u00c6\u0003J\t\u0010Z\u001a\u00020\u001bH\u00c6\u0003J\t\u0010[\u001a\u00020\u0005H\u00c6\u0003J\u0014\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003\u00a2\u0006\u0002\u00102J\t\u0010]\u001a\u00020\nH\u00c6\u0003J\t\u0010^\u001a\u00020\nH\u00c6\u0003J\t\u0010_\u001a\u00020\rH\u00c6\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003J\u00c4\u0001\u0010c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0016\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001bH\u00c6\u0001\u00a2\u0006\u0002\u0010dJ\t\u0010e\u001a\u00020\u0014H\u00d6\u0001J\u0013\u0010f\u001a\u00020\n2\u0008\u0010g\u001a\u0004\u0018\u00010hH\u00d6\u0003J\t\u0010i\u001a\u00020\u0014H\u00d6\u0001J\t\u0010j\u001a\u00020kH\u00d6\u0001J\u0019\u0010l\u001a\u00020m2\u0006\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020\u0014H\u00d6\u0001R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001e\"\u0004\u0008\"\u0010 R\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001a\u0010\u0019\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010$\"\u0004\u0008(\u0010&R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\"\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00105\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u001e\"\u0004\u0008;\u0010 R\u001a\u0010\u0015\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010$\"\u0004\u0008A\u0010&R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010$\"\u0004\u0008C\u0010&R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010$\"\u0004\u0008E\u0010&R\u001a\u0010\u0016\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010$\"\u0004\u0008G\u0010&R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u001a\u0010\u0017\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010$\"\u0004\u0008M\u0010&R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010Q\u00a8\u0006q"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/GPHSettings;",
        "Landroid/os/Parcelable;",
        "gridType",
        "Lcom/giphy/sdk/ui/themes/GridType;",
        "theme",
        "Lcom/giphy/sdk/ui/themes/GPHTheme;",
        "mediaTypeConfig",
        "",
        "Lcom/giphy/sdk/ui/GPHContentType;",
        "showConfirmationScreen",
        "",
        "showAttribution",
        "rating",
        "Lcom/giphy/sdk/core/models/enums/RatingType;",
        "renditionType",
        "Lcom/giphy/sdk/core/models/enums/RenditionType;",
        "clipsPreviewRenditionType",
        "confirmationRenditionType",
        "showCheckeredBackground",
        "stickerColumnCount",
        "",
        "selectedContentType",
        "showSuggestionsBar",
        "suggestionsBarFixedPosition",
        "enableDynamicText",
        "enablePartnerProfiles",
        "imageFormat",
        "Lcom/giphy/sdk/ui/drawables/ImageFormat;",
        "(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;)V",
        "getClipsPreviewRenditionType",
        "()Lcom/giphy/sdk/core/models/enums/RenditionType;",
        "setClipsPreviewRenditionType",
        "(Lcom/giphy/sdk/core/models/enums/RenditionType;)V",
        "getConfirmationRenditionType",
        "setConfirmationRenditionType",
        "getEnableDynamicText",
        "()Z",
        "setEnableDynamicText",
        "(Z)V",
        "getEnablePartnerProfiles",
        "setEnablePartnerProfiles",
        "getGridType",
        "()Lcom/giphy/sdk/ui/themes/GridType;",
        "setGridType",
        "(Lcom/giphy/sdk/ui/themes/GridType;)V",
        "getImageFormat",
        "()Lcom/giphy/sdk/ui/drawables/ImageFormat;",
        "setImageFormat",
        "(Lcom/giphy/sdk/ui/drawables/ImageFormat;)V",
        "getMediaTypeConfig",
        "()[Lcom/giphy/sdk/ui/GPHContentType;",
        "setMediaTypeConfig",
        "([Lcom/giphy/sdk/ui/GPHContentType;)V",
        "[Lcom/giphy/sdk/ui/GPHContentType;",
        "getRating",
        "()Lcom/giphy/sdk/core/models/enums/RatingType;",
        "setRating",
        "(Lcom/giphy/sdk/core/models/enums/RatingType;)V",
        "getRenditionType",
        "setRenditionType",
        "getSelectedContentType",
        "()Lcom/giphy/sdk/ui/GPHContentType;",
        "setSelectedContentType",
        "(Lcom/giphy/sdk/ui/GPHContentType;)V",
        "getShowAttribution",
        "setShowAttribution",
        "getShowCheckeredBackground",
        "setShowCheckeredBackground",
        "getShowConfirmationScreen",
        "setShowConfirmationScreen",
        "getShowSuggestionsBar",
        "setShowSuggestionsBar",
        "getStickerColumnCount",
        "()I",
        "setStickerColumnCount",
        "(I)V",
        "getSuggestionsBarFixedPosition",
        "setSuggestionsBarFixedPosition",
        "getTheme",
        "()Lcom/giphy/sdk/ui/themes/GPHTheme;",
        "setTheme",
        "(Lcom/giphy/sdk/ui/themes/GPHTheme;)V",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;)Lcom/giphy/sdk/ui/GPHSettings;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
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
            "Lcom/giphy/sdk/ui/GPHSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private clipsPreviewRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private confirmationRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private enableDynamicText:Z

.field private enablePartnerProfiles:Z

.field private gridType:Lcom/giphy/sdk/ui/themes/GridType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private mediaTypeConfig:[Lcom/giphy/sdk/ui/GPHContentType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private rating:Lcom/giphy/sdk/core/models/enums/RatingType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private renditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private selectedContentType:Lcom/giphy/sdk/ui/GPHContentType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private showAttribution:Z

.field private showCheckeredBackground:Z

.field private showConfirmationScreen:Z

.field private showSuggestionsBar:Z

.field private stickerColumnCount:I

.field private suggestionsBarFixedPosition:Z

.field private theme:Lcom/giphy/sdk/ui/themes/GPHTheme;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/GPHSettings$a;

    invoke-direct {v0}, Lcom/giphy/sdk/ui/GPHSettings$a;-><init>()V

    sput-object v0, Lcom/giphy/sdk/ui/GPHSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 20

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

    const v18, 0x1ffff

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/giphy/sdk/ui/GPHSettings;-><init>(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;)V
    .locals 8
    .param p1    # Lcom/giphy/sdk/ui/themes/GridType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/ui/themes/GPHTheme;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # [Lcom/giphy/sdk/ui/GPHContentType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Lcom/giphy/sdk/ui/GPHContentType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p17    # Lcom/giphy/sdk/ui/drawables/ImageFormat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object/from16 v5, p12

    move-object/from16 v6, p17

    const-string v7, "gridType"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "theme"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "mediaTypeConfig"

    invoke-static {p3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "rating"

    invoke-static {p6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "selectedContentType"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "imageFormat"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->gridType:Lcom/giphy/sdk/ui/themes/GridType;

    iput-object v2, v0, Lcom/giphy/sdk/ui/GPHSettings;->theme:Lcom/giphy/sdk/ui/themes/GPHTheme;

    iput-object v3, v0, Lcom/giphy/sdk/ui/GPHSettings;->mediaTypeConfig:[Lcom/giphy/sdk/ui/GPHContentType;

    move v1, p4

    iput-boolean v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->showConfirmationScreen:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->showAttribution:Z

    iput-object v4, v0, Lcom/giphy/sdk/ui/GPHSettings;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    move-object v1, p7

    iput-object v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->renditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->clipsPreviewRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->confirmationRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    move/from16 v1, p10

    iput-boolean v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->showCheckeredBackground:Z

    move/from16 v1, p11

    iput v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->stickerColumnCount:I

    iput-object v5, v0, Lcom/giphy/sdk/ui/GPHSettings;->selectedContentType:Lcom/giphy/sdk/ui/GPHContentType;

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->showSuggestionsBar:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->suggestionsBarFixedPosition:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->enableDynamicText:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->enablePartnerProfiles:Z

    iput-object v6, v0, Lcom/giphy/sdk/ui/GPHSettings;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/giphy/sdk/ui/themes/GridType;->waterfall:Lcom/giphy/sdk/ui/themes/GridType;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 3
    sget-object v2, Lcom/giphy/sdk/ui/themes/GPHTheme;->Automatic:Lcom/giphy/sdk/ui/themes/GPHTheme;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/giphy/sdk/ui/GPHContentType;

    .line 4
    sget-object v7, Lcom/giphy/sdk/ui/GPHContentType;->recents:Lcom/giphy/sdk/ui/GPHContentType;

    aput-object v7, v3, v5

    .line 5
    sget-object v7, Lcom/giphy/sdk/ui/GPHContentType;->gif:Lcom/giphy/sdk/ui/GPHContentType;

    aput-object v7, v3, v6

    .line 6
    sget-object v7, Lcom/giphy/sdk/ui/GPHContentType;->sticker:Lcom/giphy/sdk/ui/GPHContentType;

    aput-object v7, v3, v4

    const/4 v7, 0x3

    .line 7
    sget-object v8, Lcom/giphy/sdk/ui/GPHContentType;->text:Lcom/giphy/sdk/ui/GPHContentType;

    aput-object v8, v3, v7

    .line 8
    sget-object v7, Lcom/giphy/sdk/ui/GPHContentType;->emoji:Lcom/giphy/sdk/ui/GPHContentType;

    const/4 v8, 0x4

    aput-object v7, v3, v8

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move/from16 v7, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    move/from16 v8, p5

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 9
    sget-object v9, Lcom/giphy/sdk/core/models/enums/RatingType;->pg13:Lcom/giphy/sdk/core/models/enums/RatingType;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    and-int/lit8 v10, v0, 0x40

    const/4 v11, 0x0

    if-eqz v10, :cond_6

    move-object v10, v11

    goto :goto_6

    :cond_6
    move-object/from16 v10, p7

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    move-object v12, v11

    goto :goto_7

    :cond_7
    move-object/from16 v12, p8

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    goto :goto_9

    :cond_9
    move/from16 v13, p10

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v4, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    .line 10
    sget-object v14, Lcom/giphy/sdk/ui/GPHContentType;->gif:Lcom/giphy/sdk/ui/GPHContentType;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    goto :goto_c

    :cond_c
    move/from16 v15, p13

    :goto_c
    and-int/lit16 v5, v0, 0x2000

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_d

    :cond_d
    move/from16 v5, p14

    :goto_d
    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_e

    :cond_e
    move/from16 v6, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x1

    goto :goto_f

    :cond_f
    move/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v0, v0, v17

    if-eqz v0, :cond_10

    .line 11
    sget-object v0, Lcom/giphy/sdk/ui/drawables/ImageFormat;->WEBP:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    goto :goto_10

    :cond_10
    move-object/from16 v0, p17

    :goto_10
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move/from16 p5, v7

    move/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v12

    move-object/from16 p10, v11

    move/from16 p11, v13

    move/from16 p12, v4

    move-object/from16 p13, v14

    move/from16 p14, v15

    move/from16 p15, v5

    move/from16 p16, v6

    move/from16 p17, v16

    move-object/from16 p18, v0

    invoke-direct/range {p1 .. p18}, Lcom/giphy/sdk/ui/GPHSettings;-><init>(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/giphy/sdk/ui/GPHSettings;Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;ILjava/lang/Object;)Lcom/giphy/sdk/ui/GPHSettings;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/giphy/sdk/ui/GPHSettings;->gridType:Lcom/giphy/sdk/ui/themes/GridType;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/giphy/sdk/ui/GPHSettings;->theme:Lcom/giphy/sdk/ui/themes/GPHTheme;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/giphy/sdk/ui/GPHSettings;->mediaTypeConfig:[Lcom/giphy/sdk/ui/GPHContentType;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/giphy/sdk/ui/GPHSettings;->showConfirmationScreen:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/giphy/sdk/ui/GPHSettings;->showAttribution:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/giphy/sdk/ui/GPHSettings;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/giphy/sdk/ui/GPHSettings;->renditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/giphy/sdk/ui/GPHSettings;->clipsPreviewRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/giphy/sdk/ui/GPHSettings;->confirmationRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/giphy/sdk/ui/GPHSettings;->showCheckeredBackground:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/giphy/sdk/ui/GPHSettings;->stickerColumnCount:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/giphy/sdk/ui/GPHSettings;->selectedContentType:Lcom/giphy/sdk/ui/GPHContentType;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/giphy/sdk/ui/GPHSettings;->showSuggestionsBar:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Lcom/giphy/sdk/ui/GPHSettings;->suggestionsBarFixedPosition:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-boolean v15, v0, Lcom/giphy/sdk/ui/GPHSettings;->enableDynamicText:Z

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget-boolean v15, v0, Lcom/giphy/sdk/ui/GPHSettings;->enablePartnerProfiles:Z

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/giphy/sdk/ui/GPHSettings;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move/from16 p16, v15

    move-object/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lcom/giphy/sdk/ui/GPHSettings;->copy(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;)Lcom/giphy/sdk/ui/GPHSettings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/giphy/sdk/ui/themes/GridType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->gridType:Lcom/giphy/sdk/ui/themes/GridType;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showCheckeredBackground:Z

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->stickerColumnCount:I

    return v0
.end method

.method public final component12()Lcom/giphy/sdk/ui/GPHContentType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->selectedContentType:Lcom/giphy/sdk/ui/GPHContentType;

    return-object v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showSuggestionsBar:Z

    return v0
.end method

.method public final component14()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->suggestionsBarFixedPosition:Z

    return v0
.end method

.method public final component15()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->enableDynamicText:Z

    return v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->enablePartnerProfiles:Z

    return v0
.end method

.method public final component17()Lcom/giphy/sdk/ui/drawables/ImageFormat;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    return-object v0
.end method

.method public final component2()Lcom/giphy/sdk/ui/themes/GPHTheme;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->theme:Lcom/giphy/sdk/ui/themes/GPHTheme;

    return-object v0
.end method

.method public final component3()[Lcom/giphy/sdk/ui/GPHContentType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->mediaTypeConfig:[Lcom/giphy/sdk/ui/GPHContentType;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showConfirmationScreen:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showAttribution:Z

    return v0
.end method

.method public final component6()Lcom/giphy/sdk/core/models/enums/RatingType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    return-object v0
.end method

.method public final component7()Lcom/giphy/sdk/core/models/enums/RenditionType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->renditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    return-object v0
.end method

.method public final component8()Lcom/giphy/sdk/core/models/enums/RenditionType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->clipsPreviewRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    return-object v0
.end method

.method public final component9()Lcom/giphy/sdk/core/models/enums/RenditionType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->confirmationRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    return-object v0
.end method

.method public final copy(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;)Lcom/giphy/sdk/ui/GPHSettings;
    .locals 20
    .param p1    # Lcom/giphy/sdk/ui/themes/GridType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/ui/themes/GPHTheme;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # [Lcom/giphy/sdk/ui/GPHContentType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p7    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Lcom/giphy/sdk/ui/GPHContentType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p17    # Lcom/giphy/sdk/ui/drawables/ImageFormat;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    const-string v0, "gridType"

    move-object/from16 v18, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "theme"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaTypeConfig"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rating"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedContentType"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageFormat"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, Lcom/giphy/sdk/ui/GPHSettings;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Lcom/giphy/sdk/ui/GPHSettings;-><init>(Lcom/giphy/sdk/ui/themes/GridType;Lcom/giphy/sdk/ui/themes/GPHTheme;[Lcom/giphy/sdk/ui/GPHContentType;ZZLcom/giphy/sdk/core/models/enums/RatingType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;Lcom/giphy/sdk/core/models/enums/RenditionType;ZILcom/giphy/sdk/ui/GPHContentType;ZZZZLcom/giphy/sdk/ui/drawables/ImageFormat;)V

    return-object v19
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/giphy/sdk/ui/GPHSettings;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/giphy/sdk/ui/GPHSettings;

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->gridType:Lcom/giphy/sdk/ui/themes/GridType;

    iget-object v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->gridType:Lcom/giphy/sdk/ui/themes/GridType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->theme:Lcom/giphy/sdk/ui/themes/GPHTheme;

    iget-object v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->theme:Lcom/giphy/sdk/ui/themes/GPHTheme;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->mediaTypeConfig:[Lcom/giphy/sdk/ui/GPHContentType;

    iget-object v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->mediaTypeConfig:[Lcom/giphy/sdk/ui/GPHContentType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showConfirmationScreen:Z

    iget-boolean v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->showConfirmationScreen:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showAttribution:Z

    iget-boolean v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->showAttribution:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    iget-object v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->renditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    iget-object v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->renditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->clipsPreviewRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    iget-object v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->clipsPreviewRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->confirmationRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    iget-object v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->confirmationRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showCheckeredBackground:Z

    iget-boolean v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->showCheckeredBackground:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->stickerColumnCount:I

    iget v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->stickerColumnCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->selectedContentType:Lcom/giphy/sdk/ui/GPHContentType;

    iget-object v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->selectedContentType:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showSuggestionsBar:Z

    iget-boolean v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->showSuggestionsBar:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->suggestionsBarFixedPosition:Z

    iget-boolean v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->suggestionsBarFixedPosition:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->enableDynamicText:Z

    iget-boolean v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->enableDynamicText:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->enablePartnerProfiles:Z

    iget-boolean v1, p1, Lcom/giphy/sdk/ui/GPHSettings;->enablePartnerProfiles:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    iget-object p1, p1, Lcom/giphy/sdk/ui/GPHSettings;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getClipsPreviewRenditionType()Lcom/giphy/sdk/core/models/enums/RenditionType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->clipsPreviewRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    return-object v0
.end method

.method public final getConfirmationRenditionType()Lcom/giphy/sdk/core/models/enums/RenditionType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->confirmationRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    return-object v0
.end method

.method public final getEnableDynamicText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->enableDynamicText:Z

    return v0
.end method

.method public final getEnablePartnerProfiles()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->enablePartnerProfiles:Z

    return v0
.end method

.method public final getGridType()Lcom/giphy/sdk/ui/themes/GridType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->gridType:Lcom/giphy/sdk/ui/themes/GridType;

    return-object v0
.end method

.method public final getImageFormat()Lcom/giphy/sdk/ui/drawables/ImageFormat;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    return-object v0
.end method

.method public final getMediaTypeConfig()[Lcom/giphy/sdk/ui/GPHContentType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->mediaTypeConfig:[Lcom/giphy/sdk/ui/GPHContentType;

    return-object v0
.end method

.method public final getRating()Lcom/giphy/sdk/core/models/enums/RatingType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    return-object v0
.end method

.method public final getRenditionType()Lcom/giphy/sdk/core/models/enums/RenditionType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->renditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    return-object v0
.end method

.method public final getSelectedContentType()Lcom/giphy/sdk/ui/GPHContentType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->selectedContentType:Lcom/giphy/sdk/ui/GPHContentType;

    return-object v0
.end method

.method public final getShowAttribution()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showAttribution:Z

    return v0
.end method

.method public final getShowCheckeredBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showCheckeredBackground:Z

    return v0
.end method

.method public final getShowConfirmationScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showConfirmationScreen:Z

    return v0
.end method

.method public final getShowSuggestionsBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->showSuggestionsBar:Z

    return v0
.end method

.method public final getStickerColumnCount()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->stickerColumnCount:I

    return v0
.end method

.method public final getSuggestionsBarFixedPosition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->suggestionsBarFixedPosition:Z

    return v0
.end method

.method public final getTheme()Lcom/giphy/sdk/ui/themes/GPHTheme;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->theme:Lcom/giphy/sdk/ui/themes/GPHTheme;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/giphy/sdk/ui/GPHSettings;->gridType:Lcom/giphy/sdk/ui/themes/GridType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->theme:Lcom/giphy/sdk/ui/themes/GPHTheme;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->mediaTypeConfig:[Lcom/giphy/sdk/ui/GPHContentType;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->showConfirmationScreen:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->showAttribution:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->renditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->clipsPreviewRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->confirmationRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->showCheckeredBackground:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :cond_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->stickerColumnCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->selectedContentType:Lcom/giphy/sdk/ui/GPHContentType;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->showSuggestionsBar:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :cond_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->suggestionsBarFixedPosition:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :cond_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->enableDynamicText:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :cond_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->enablePartnerProfiles:Z

    if-eqz v2, :cond_e

    goto :goto_8

    :cond_e
    move v3, v2

    :goto_8
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/giphy/sdk/ui/GPHSettings;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_f
    add-int/2addr v0, v1

    return v0
.end method

.method public final setClipsPreviewRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->clipsPreviewRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    return-void
.end method

.method public final setConfirmationRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->confirmationRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    return-void
.end method

.method public final setEnableDynamicText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->enableDynamicText:Z

    return-void
.end method

.method public final setEnablePartnerProfiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->enablePartnerProfiles:Z

    return-void
.end method

.method public final setGridType(Lcom/giphy/sdk/ui/themes/GridType;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/themes/GridType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->gridType:Lcom/giphy/sdk/ui/themes/GridType;

    return-void
.end method

.method public final setImageFormat(Lcom/giphy/sdk/ui/drawables/ImageFormat;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/drawables/ImageFormat;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    return-void
.end method

.method public final setMediaTypeConfig([Lcom/giphy/sdk/ui/GPHContentType;)V
    .locals 1
    .param p1    # [Lcom/giphy/sdk/ui/GPHContentType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->mediaTypeConfig:[Lcom/giphy/sdk/ui/GPHContentType;

    return-void
.end method

.method public final setRating(Lcom/giphy/sdk/core/models/enums/RatingType;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/core/models/enums/RatingType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    return-void
.end method

.method public final setRenditionType(Lcom/giphy/sdk/core/models/enums/RenditionType;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->renditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    return-void
.end method

.method public final setSelectedContentType(Lcom/giphy/sdk/ui/GPHContentType;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/GPHContentType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->selectedContentType:Lcom/giphy/sdk/ui/GPHContentType;

    return-void
.end method

.method public final setShowAttribution(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->showAttribution:Z

    return-void
.end method

.method public final setShowCheckeredBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->showCheckeredBackground:Z

    return-void
.end method

.method public final setShowConfirmationScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->showConfirmationScreen:Z

    return-void
.end method

.method public final setShowSuggestionsBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->showSuggestionsBar:Z

    return-void
.end method

.method public final setStickerColumnCount(I)V
    .locals 0

    iput p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->stickerColumnCount:I

    return-void
.end method

.method public final setSuggestionsBarFixedPosition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->suggestionsBarFixedPosition:Z

    return-void
.end method

.method public final setTheme(Lcom/giphy/sdk/ui/themes/GPHTheme;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/themes/GPHTheme;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/GPHSettings;->theme:Lcom/giphy/sdk/ui/themes/GPHTheme;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GPHSettings(gridType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->gridType:Lcom/giphy/sdk/ui/themes/GridType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->theme:Lcom/giphy/sdk/ui/themes/GPHTheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaTypeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->mediaTypeConfig:[Lcom/giphy/sdk/ui/GPHContentType;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showConfirmationScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->showConfirmationScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showAttribution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->showAttribution:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", renditionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->renditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clipsPreviewRenditionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->clipsPreviewRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confirmationRenditionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->confirmationRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showCheckeredBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->showCheckeredBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stickerColumnCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->stickerColumnCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selectedContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->selectedContentType:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showSuggestionsBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->showSuggestionsBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", suggestionsBarFixedPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->suggestionsBarFixedPosition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableDynamicText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->enableDynamicText:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enablePartnerProfiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->enablePartnerProfiles:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", imageFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/GPHSettings;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->gridType:Lcom/giphy/sdk/ui/themes/GridType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->theme:Lcom/giphy/sdk/ui/themes/GPHTheme;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->mediaTypeConfig:[Lcom/giphy/sdk/ui/GPHContentType;

    array-length v0, p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-le v0, v2, :cond_0

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->showConfirmationScreen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->showAttribution:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->rating:Lcom/giphy/sdk/core/models/enums/RatingType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->renditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->clipsPreviewRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->confirmationRenditionType:Lcom/giphy/sdk/core/models/enums/RenditionType;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-boolean p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->showCheckeredBackground:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->stickerColumnCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->selectedContentType:Lcom/giphy/sdk/ui/GPHContentType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->showSuggestionsBar:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->suggestionsBarFixedPosition:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->enableDynamicText:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->enablePartnerProfiles:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/giphy/sdk/ui/GPHSettings;->imageFormat:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
