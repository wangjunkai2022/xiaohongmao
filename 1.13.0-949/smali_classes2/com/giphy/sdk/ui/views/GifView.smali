.class public Lcom/giphy/sdk/ui/views/GifView;
.super Lcom/facebook/drawee/view/SimpleDraweeView;
.source "GifView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/views/GifView$b;,
        Lcom/giphy/sdk/ui/views/GifView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00c9\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0010\u0008\u0016\u0018\u0000 92\u00020\u0001:\u0004\u00a0\u0001\u00a1\u0001B.\u0008\u0007\u0012\u0008\u0010\u009a\u0001\u001a\u00030\u0099\u0001\u0012\u000c\u0008\u0002\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u0001\u0012\t\u0008\u0002\u0010\u009d\u0001\u001a\u00020(\u00a2\u0006\u0006\u0008\u009e\u0001\u0010\u009f\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010\u0013\u001a\u00020\u0002H\u0014J(\u0010\u001a\u001a\u00020\u00022\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018Jd\u0010%\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00182>\u0008\u0002\u0010$\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\u001e\u00a2\u0006\u000c\u0008\u001f\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(!\u0012\u0015\u0012\u0013\u0018\u00010\"\u00a2\u0006\u000c\u0008\u001f\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001dJ\u0010\u0010\'\u001a\u00020\u00022\u0008\u0010&\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010*\u001a\u00020\u00022\u0008\u0008\u0001\u0010)\u001a\u00020(J\u0018\u0010-\u001a\u00020\u00022\u0006\u0010+\u001a\u00020(2\u0006\u0010,\u001a\u00020(H\u0014J*\u00102\u001a\u00020\u00022\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\n\u0008\u0001\u0010/\u001a\u0004\u0018\u00010.2\n\u0008\u0001\u00101\u001a\u0004\u0018\u000100H\u0016J\u0006\u00103\u001a\u00020\u0002J\u0006\u00104\u001a\u00020\u0002J\u0006\u00106\u001a\u000205J\u0006\u00107\u001a\u00020\u0002J\u0006\u00108\u001a\u00020\u0002J\u0006\u00109\u001a\u00020\u0002R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0018\u0010@\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0016\u0010B\u001a\u00020:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010<R\u0014\u0010E\u001a\u00020C8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008D\u00108R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0016\u0010I\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010\u001aR\u0018\u0010L\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR \u0010R\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020O0N0M8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR$\u0010Z\u001a\u0004\u0018\u00010S8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR*\u0010b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010[8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010aR$\u0010h\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010c\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR\u0016\u0010j\u001a\u00020C8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u00108R\"\u0010o\u001a\u00020:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010<\u001a\u0004\u0008k\u0010l\"\u0004\u0008m\u0010nR\"\u0010q\u001a\u00020:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010<\u001a\u0004\u0008i\u0010l\"\u0004\u0008p\u0010nR\"\u0010x\u001a\u00020r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010s\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\"\u0010{\u001a\u00020:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010<\u001a\u0004\u0008y\u0010l\"\u0004\u0008z\u0010nR\'\u0010\u0082\u0001\u001a\u0004\u0018\u00010|8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u0003\u0010}\u001a\u0004\u0008~\u0010\u007f\"\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\'\u0010\u0087\u0001\u001a\u00020C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0004\u0008\n\u00108\u001a\u0006\u0008\u0083\u0001\u0010\u0084\u0001\"\u0006\u0008\u0085\u0001\u0010\u0086\u0001R4\u0010\u0015\u001a\u0004\u0018\u00010\u00142\t\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00148\u0006@BX\u0086\u000e\u00a2\u0006\u0017\n\u0005\u00082\u0010\u0089\u0001\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001\"\u0006\u0008\u008c\u0001\u0010\u008d\u0001R*\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0013\u0010\u008e\u0001\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001\"\u0006\u0008\u0091\u0001\u0010\u0092\u0001R)\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0004\u00084\u0010G\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001\u00a8\u0006\u00a2\u0001"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/GifView;",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "",
        "y",
        "N",
        "M",
        "w",
        "Landroid/net/Uri;",
        "uri",
        "G",
        "z",
        "x",
        "",
        "Lcom/giphy/sdk/ui/drawables/c;",
        "getLoadingSteps",
        "s",
        "com/giphy/sdk/ui/views/GifView$d",
        "getControllerListener",
        "()Lcom/giphy/sdk/ui/views/GifView$d;",
        "B",
        "Lcom/giphy/sdk/core/models/Media;",
        "media",
        "Lcom/giphy/sdk/core/models/enums/RenditionType;",
        "renditionType",
        "Landroid/graphics/drawable/Drawable;",
        "placeholderDrawable",
        "I",
        "",
        "id",
        "Lkotlin/Function2;",
        "Lcom/giphy/sdk/core/network/response/MediaResponse;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "",
        "e",
        "completionHandler",
        "K",
        "url",
        "v",
        "",
        "resId",
        "u",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "Lcom/facebook/imagepipeline/image/g;",
        "imageInfo",
        "Landroid/graphics/drawable/Animatable;",
        "anim",
        "A",
        "D",
        "C",
        "Lcom/facebook/drawee/drawable/l;",
        "getProgressDrawable",
        "H",
        "F",
        "E",
        "",
        "i",
        "Z",
        "keepGifRatio",
        "j",
        "Lcom/giphy/sdk/core/models/enums/RenditionType;",
        "targetRendition",
        "k",
        "autoPlay",
        "",
        "l",
        "DEFAULT_ASPECT_RATIO",
        "m",
        "Landroid/graphics/drawable/Drawable;",
        "n",
        "stepIndex",
        "o",
        "Lcom/giphy/sdk/ui/drawables/c;",
        "step",
        "Lcom/facebook/datasource/i;",
        "Lcom/facebook/common/references/a;",
        "Lcom/facebook/imagepipeline/image/c;",
        "p",
        "Lcom/facebook/datasource/i;",
        "retainingSupplier",
        "Lcom/giphy/sdk/ui/views/GifView$b;",
        "q",
        "Lcom/giphy/sdk/ui/views/GifView$b;",
        "getGifCallback",
        "()Lcom/giphy/sdk/ui/views/GifView$b;",
        "setGifCallback",
        "(Lcom/giphy/sdk/ui/views/GifView$b;)V",
        "gifCallback",
        "Lkotlin/Function0;",
        "r",
        "Lkotlin/jvm/functions/Function0;",
        "getOnPingbackGifLoadSuccess",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnPingbackGifLoadSuccess",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onPingbackGifLoadSuccess",
        "Ljava/lang/Float;",
        "getFixedAspectRatio",
        "()Ljava/lang/Float;",
        "setFixedAspectRatio",
        "(Ljava/lang/Float;)V",
        "fixedAspectRatio",
        "t",
        "renditionAspectRatio",
        "getShowProgress",
        "()Z",
        "setShowProgress",
        "(Z)V",
        "showProgress",
        "setBackgroundVisible",
        "isBackgroundVisible",
        "Lcom/giphy/sdk/ui/drawables/ImageFormat;",
        "Lcom/giphy/sdk/ui/drawables/ImageFormat;",
        "getImageFormat",
        "()Lcom/giphy/sdk/ui/drawables/ImageFormat;",
        "setImageFormat",
        "(Lcom/giphy/sdk/ui/drawables/ImageFormat;)V",
        "imageFormat",
        "getLoaded",
        "setLoaded",
        "loaded",
        "Lcom/facebook/drawee/drawable/s$c;",
        "Lcom/facebook/drawee/drawable/s$c;",
        "getScaleType",
        "()Lcom/facebook/drawee/drawable/s$c;",
        "setScaleType",
        "(Lcom/facebook/drawee/drawable/s$c;)V",
        "scaleType",
        "getCornerRadius",
        "()F",
        "setCornerRadius",
        "(F)V",
        "cornerRadius",
        "value",
        "Lcom/giphy/sdk/core/models/Media;",
        "getMedia",
        "()Lcom/giphy/sdk/core/models/Media;",
        "setMedia",
        "(Lcom/giphy/sdk/core/models/Media;)V",
        "Ljava/lang/String;",
        "getMediaId",
        "()Ljava/lang/String;",
        "setMediaId",
        "(Ljava/lang/String;)V",
        "mediaId",
        "getBgDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "setBgDrawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "bgDrawable",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "a",
        "b",
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
.field private static final D:F

.field public static final E:Lcom/giphy/sdk/ui/views/GifView$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private A:Lcom/giphy/sdk/core/models/Media;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private B:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private C:Landroid/graphics/drawable/Drawable;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final i:Z

.field private j:Lcom/giphy/sdk/core/models/enums/RenditionType;

.field private k:Z

.field private final l:F

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:Lcom/giphy/sdk/ui/drawables/c;

.field private final p:Lcom/facebook/datasource/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/i<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Lcom/giphy/sdk/ui/views/GifView$b;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private r:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private s:Ljava/lang/Float;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private t:F

.field private u:Z

.field private v:Z

.field private w:Lcom/giphy/sdk/ui/drawables/ImageFormat;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private x:Z

.field private y:Lcom/facebook/drawee/drawable/s$c;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/ui/views/GifView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/ui/views/GifView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/ui/views/GifView;->E:Lcom/giphy/sdk/ui/views/GifView$a;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/giphy/sdk/ui/views/GifView;->D:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/ui/views/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/ui/views/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p3, Lcom/giphy/sdk/ui/l;->f:Lcom/giphy/sdk/ui/l;

    invoke-virtual {p3}, Lcom/giphy/sdk/ui/l;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->k:Z

    const v0, 0x3fe38e39

    .line 4
    iput v0, p0, Lcom/giphy/sdk/ui/views/GifView;->l:F

    .line 5
    new-instance v1, Lcom/facebook/datasource/i;

    invoke-direct {v1}, Lcom/facebook/datasource/i;-><init>()V

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GifView;->p:Lcom/facebook/datasource/i;

    .line 6
    iput v0, p0, Lcom/giphy/sdk/ui/views/GifView;->t:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->v:Z

    .line 8
    sget-object v1, Lcom/giphy/sdk/ui/drawables/ImageFormat;->WEBP:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    iput-object v1, p0, Lcom/giphy/sdk/ui/views/GifView;->w:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/giphy/sdk/ui/views/GifView;->z:F

    .line 10
    sget-object v2, Lcom/giphy/sdk/ui/p$q;->Jd:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    sget v1, Lcom/giphy/sdk/ui/p$q;->Md:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->i:Z

    .line 12
    sget v0, Lcom/giphy/sdk/ui/p$q;->Kd:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/giphy/sdk/ui/views/GifView;->z:F

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p3}, Lcom/giphy/sdk/ui/l;->m()Li2/e;

    move-result-object p2

    sget-object p3, Li2/d;->n:Li2/d;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/giphy/sdk/ui/p$h;->Z2:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/giphy/sdk/ui/p$h;->Y2:I

    .line 15
    :goto_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView;->C:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/giphy/sdk/ui/views/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final G(Landroid/net/Uri;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->o:Lcom/giphy/sdk/ui/drawables/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/drawables/c;->a()Lcom/giphy/sdk/ui/drawables/GifStepAction;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/giphy/sdk/ui/drawables/GifStepAction;->TERMINATE:Lcom/giphy/sdk/ui/drawables/GifStepAction;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->DEFAULT:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 2
    :goto_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->A(Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 3
    sget-object v2, Lkotlinx/coroutines/a2;->a:Lkotlinx/coroutines/a2;

    invoke-static {}, Lkotlinx/coroutines/i1;->e()Lkotlinx/coroutines/u2;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/giphy/sdk/ui/views/GifView$f;

    invoke-direct {v5, p0, p1, v1}, Lcom/giphy/sdk/ui/views/GifView$f;-><init>(Lcom/giphy/sdk/ui/views/GifView;Lcom/facebook/imagepipeline/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/j;->b(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/y0;

    return-void
.end method

.method public static synthetic J(Lcom/giphy/sdk/ui/views/GifView;Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/giphy/sdk/ui/views/GifView;->I(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setMedia"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic L(Lcom/giphy/sdk/ui/views/GifView;Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 1

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, Lcom/giphy/sdk/core/models/enums/RenditionType;->fixedWidth:Lcom/giphy/sdk/core/models/enums/RenditionType;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 2
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/giphy/sdk/ui/views/GifView;->K(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 3
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setMediaWithId"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final M()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/giphy/sdk/ui/views/GifView;->n:I

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->getLoadingSteps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->w()V

    :cond_0
    return-void
.end method

.method private final N()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/giphy/sdk/ui/views/GifView;->n:I

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->getLoadingSteps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->getLoadingSteps()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/giphy/sdk/ui/views/GifView;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giphy/sdk/ui/drawables/c;

    .line 3
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/drawables/c;->a()Lcom/giphy/sdk/ui/drawables/GifStepAction;

    move-result-object v0

    sget-object v1, Lcom/giphy/sdk/ui/views/q;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lcom/giphy/sdk/ui/views/GifView;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/giphy/sdk/ui/views/GifView;->n:I

    .line 5
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->M()V

    goto :goto_0

    .line 6
    :cond_2
    iget v0, p0, Lcom/giphy/sdk/ui/views/GifView;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/giphy/sdk/ui/views/GifView;->n:I

    .line 7
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->M()V

    :goto_0
    return-void
.end method

.method private final getControllerListener()Lcom/giphy/sdk/ui/views/GifView$d;
    .locals 1

    new-instance v0, Lcom/giphy/sdk/ui/views/GifView$d;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GifView$d;-><init>(Lcom/giphy/sdk/ui/views/GifView;)V

    return-object v0
.end method

.method private final getLoadingSteps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/ui/drawables/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->j:Lcom/giphy/sdk/core/models/enums/RenditionType;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/giphy/sdk/ui/drawables/b;->e:Lcom/giphy/sdk/ui/drawables/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/giphy/sdk/ui/drawables/b;->e(Lcom/giphy/sdk/core/models/enums/RenditionType;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/giphy/sdk/tracking/f;->d(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/giphy/sdk/ui/drawables/b;->e:Lcom/giphy/sdk/ui/drawables/b;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/drawables/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_2
    sget-object v0, Lcom/giphy/sdk/ui/drawables/b;->e:Lcom/giphy/sdk/ui/drawables/b;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/drawables/b;->c()Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static final synthetic p()F
    .locals 1

    sget v0, Lcom/giphy/sdk/ui/views/GifView;->D:F

    return v0
.end method

.method public static final synthetic q(Lcom/giphy/sdk/ui/views/GifView;)Lcom/facebook/datasource/i;
    .locals 0

    iget-object p0, p0, Lcom/giphy/sdk/ui/views/GifView;->p:Lcom/facebook/datasource/i;

    return-object p0
.end method

.method public static final synthetic r(Lcom/giphy/sdk/ui/views/GifView;)V
    .locals 0

    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->y()V

    return-void
.end method

.method private final s()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/giphy/sdk/ui/views/GifView;->z:F

    const/4 v1, 0x0

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Lcom/giphy/sdk/ui/views/GifView$c;

    invoke-direct {v0, p0}, Lcom/giphy/sdk/ui/views/GifView$c;-><init>(Lcom/giphy/sdk/ui/views/GifView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method

.method private final setMedia(Lcom/giphy/sdk/core/models/Media;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->x:Z

    .line 2
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    .line 3
    invoke-virtual {p0}, Lcom/giphy/sdk/ui/views/GifView;->B()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 5
    new-instance p1, Lcom/giphy/sdk/ui/views/GifView$e;

    invoke-direct {p1, p0}, Lcom/giphy/sdk/ui/views/GifView$e;-><init>(Lcom/giphy/sdk/ui/views/GifView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final w()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->getLoadingSteps()Ljava/util/List;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/giphy/sdk/ui/views/GifView;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/giphy/sdk/ui/drawables/c;

    .line 3
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/giphy/sdk/ui/drawables/c;->c()Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/giphy/sdk/ui/utils/f;->a(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;)Lcom/giphy/sdk/core/models/Image;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GifView;->w:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-static {v1, v2}, Lcom/giphy/sdk/ui/utils/f;->c(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/ui/drawables/ImageFormat;)Landroid/net/Uri;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_3

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 6
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/d;->j()Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lz0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->S(Lz0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/f;

    .line 8
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->getControllerListener()Lcom/giphy/sdk/ui/views/GifView$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->K(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/f;

    .line 9
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GifView;->p:Lcom/facebook/datasource/i;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->M(Lcom/facebook/common/internal/m;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/f;

    .line 10
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e()Lcom/facebook/drawee/controller/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/view/DraweeView;->setController(Lz0/a;)V

    .line 11
    invoke-direct {p0, v3}, Lcom/giphy/sdk/ui/views/GifView;->G(Landroid/net/Uri;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-direct {p0, v3}, Lcom/giphy/sdk/ui/views/GifView;->x(Landroid/net/Uri;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->N()V

    :goto_1
    return-void
.end method

.method private final x(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/d;->j()Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/f;->g0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lz0/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->S(Lz0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/f;

    .line 4
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->getControllerListener()Lcom/giphy/sdk/ui/views/GifView$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->K(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/f;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lz0/a;)V

    return-void
.end method

.method private final y()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->x:Z

    .line 2
    iput v0, p0, Lcom/giphy/sdk/ui/views/GifView;->n:I

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lz0/b;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/generic/a;->M(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->u:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lz0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    invoke-virtual {p0}, Lcom/giphy/sdk/ui/views/GifView;->getProgressDrawable()Lcom/facebook/drawee/drawable/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->S(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Media;->isSticker()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/giphy/sdk/tracking/f;->d(Lcom/giphy/sdk/core/models/Media;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->v:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :goto_1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    if-eqz v0, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->w()V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->y:Lcom/facebook/drawee/drawable/s$c;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lz0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    const-string v1, "hierarchy"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GifView;->y:Lcom/facebook/drawee/drawable/s$c;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->z(Lcom/facebook/drawee/drawable/s$c;)V

    :cond_5
    return-void
.end method

.method private final z()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->getLoadingSteps()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/giphy/sdk/ui/views/GifView;->n:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giphy/sdk/ui/drawables/c;

    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->o:Lcom/giphy/sdk/ui/drawables/c;

    .line 2
    sget-object v1, Lcom/giphy/sdk/ui/utils/d;->a:Lcom/giphy/sdk/ui/utils/d;

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/drawables/c;->c()Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/giphy/sdk/ui/utils/d;->a(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;)Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GifView;->w:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    invoke-virtual {v1, v0, v2}, Lcom/giphy/sdk/ui/utils/d;->b(Lcom/giphy/sdk/core/models/Image;Lcom/giphy/sdk/ui/drawables/ImageFormat;)Lcom/giphy/sdk/ui/drawables/ImageUriInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/giphy/sdk/ui/drawables/ImageUriInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/giphy/sdk/ui/views/GifView;->G(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-boolean p1, p0, Lcom/giphy/sdk/ui/views/GifView;->x:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/GifView;->x:Z

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->q:Lcom/giphy/sdk/ui/views/GifView$b;

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v7}, Lcom/giphy/sdk/ui/views/GifView$b$a;->a(Lcom/giphy/sdk/ui/views/GifView$b;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;JIILjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GifView;->r:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_1
    const/4 p1, 0x0

    const-wide/16 v0, -0x1

    .line 5
    instance-of v2, p3, Lcom/facebook/fresco/animation/drawable/a;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object v2, p3

    :goto_0
    check-cast v2, Lcom/facebook/fresco/animation/drawable/a;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2}, Lcom/facebook/fresco/animation/drawable/a;->g()I

    move-result p1

    .line 7
    invoke-virtual {v2}, Lcom/facebook/fresco/animation/drawable/a;->h()J

    move-result-wide v0

    move v7, p1

    move-wide v5, v0

    goto :goto_1

    :cond_3
    move-wide v5, v0

    const/4 v7, 0x0

    .line 8
    :goto_1
    iget-boolean p1, p0, Lcom/giphy/sdk/ui/views/GifView;->k:Z

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    .line 9
    invoke-interface {p3}, Landroid/graphics/drawable/Animatable;->start()V

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GifView;->q:Lcom/giphy/sdk/ui/views/GifView$b;

    if-eqz v2, :cond_5

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v2 .. v7}, Lcom/giphy/sdk/ui/views/GifView$b;->b(Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;JI)V

    .line 11
    :cond_5
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->N()V

    return-void
.end method

.method protected B()V
    .locals 0

    return-void
.end method

.method public final C()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->k:Z

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lz0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz0/a;->g()Landroid/graphics/drawable/Animatable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lz0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz0/a;->g()Landroid/graphics/drawable/Animatable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method

.method public final D()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->k:Z

    .line 2
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lz0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz0/a;->g()Landroid/graphics/drawable/Animatable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lz0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz0/a;->g()Landroid/graphics/drawable/Animatable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public final E()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/giphy/sdk/ui/views/GifView;->setMedia(Lcom/giphy/sdk/core/models/Media;)V

    .line 2
    iput-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->m:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lz0/b;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/generic/a;->M(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lz0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->J(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/giphy/sdk/ui/p$h;->I2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/facebook/drawee/drawable/r;

    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->h:Lcom/facebook/drawee/drawable/s$c;

    invoke-direct {v1, v0, v2}, Lcom/facebook/drawee/drawable/r;-><init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;)V

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lz0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->J(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public final I(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/core/models/Media;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GifView;->setMedia(Lcom/giphy/sdk/core/models/Media;)V

    .line 2
    iput-object p2, p0, Lcom/giphy/sdk/ui/views/GifView;->j:Lcom/giphy/sdk/core/models/enums/RenditionType;

    .line 3
    iput-object p3, p0, Lcom/giphy/sdk/ui/views/GifView;->m:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final K(Ljava/lang/String;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/enums/RenditionType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/giphy/sdk/core/models/enums/RenditionType;",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/giphy/sdk/core/network/response/MediaResponse;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renditionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView;->B:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/giphy/sdk/core/c;->h:Lcom/giphy/sdk/core/c;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/c;->f()Lcom/giphy/sdk/core/network/api/GPHApiClient;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/giphy/sdk/ui/views/GifView$g;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/giphy/sdk/ui/views/GifView$g;-><init>(Lcom/giphy/sdk/ui/views/GifView;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function2;)V

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/giphy/sdk/core/network/api/GPHApiClient;->h(Ljava/lang/String;Lcom/giphy/sdk/core/network/api/a;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final getBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->C:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getCornerRadius()F
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/ui/views/GifView;->z:F

    return v0
.end method

.method public final getFixedAspectRatio()Ljava/lang/Float;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->s:Ljava/lang/Float;

    return-object v0
.end method

.method public final getGifCallback()Lcom/giphy/sdk/ui/views/GifView$b;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->q:Lcom/giphy/sdk/ui/views/GifView$b;

    return-object v0
.end method

.method public final getImageFormat()Lcom/giphy/sdk/ui/drawables/ImageFormat;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->w:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    return-object v0
.end method

.method public final getLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->x:Z

    return v0
.end method

.method public final getMedia()Lcom/giphy/sdk/core/models/Media;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    return-object v0
.end method

.method public final getMediaId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final getOnPingbackGifLoadSuccess()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->r:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getProgressDrawable()Lcom/facebook/drawee/drawable/l;
    .locals 5
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/drawee/drawable/l;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/l;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/giphy/sdk/ui/p$f;->i1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/drawable/l;->m(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    invoke-virtual {v0, v4}, Lcom/facebook/drawee/drawable/l;->p(I)V

    return-object v0
.end method

.method public final getScaleType()Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->y:Lcom/facebook/drawee/drawable/s$c;

    return-object v0
.end method

.method public final getShowProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->u:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMeasure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    if-eqz v0, :cond_4

    .line 5
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->getLoadingSteps()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giphy/sdk/ui/drawables/c;

    .line 6
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/drawables/c;->c()Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/giphy/sdk/ui/utils/f;->a(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;)Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Images;->getOriginal()Lcom/giphy/sdk/core/models/Image;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    move-object v3, v0

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GifView;->A:Lcom/giphy/sdk/core/models/Media;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Media;->getImages()Lcom/giphy/sdk/core/models/Images;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Images;->getFixedWidth()Lcom/giphy/sdk/core/models/Image;

    move-result-object v3

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v3}, Lcom/giphy/sdk/core/models/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Lcom/giphy/sdk/core/models/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/giphy/sdk/ui/views/GifView;->t:F

    .line 9
    invoke-virtual {v3}, Lcom/giphy/sdk/core/models/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v0

    .line 10
    invoke-virtual {v3}, Lcom/giphy/sdk/core/models/Image;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/giphy/sdk/ui/utils/g;->b(I)I

    move-result v2

    goto :goto_2

    :cond_4
    const/16 v0, 0x12c

    const/16 v2, 0xc8

    :goto_2
    int-to-float v3, v0

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 11
    iput v3, p0, Lcom/giphy/sdk/ui/views/GifView;->t:F

    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-eqz v4, :cond_5

    .line 12
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 13
    :cond_5
    iget v3, p0, Lcom/giphy/sdk/ui/views/GifView;->l:F

    iput v3, p0, Lcom/giphy/sdk/ui/views/GifView;->t:F

    .line 14
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rendition size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] measured=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/giphy/sdk/ui/views/GifView;->t:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 18
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    if-ne v3, v5, :cond_7

    goto :goto_3

    :cond_7
    if-ne v3, v6, :cond_8

    .line 19
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3

    :cond_8
    move p1, v0

    :goto_3
    if-ne v4, v5, :cond_9

    move v2, p2

    goto :goto_4

    :cond_9
    if-ne v4, v6, :cond_a

    .line 20
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_a
    :goto_4
    int-to-float p2, p1

    int-to-float v5, v2

    div-float v5, p2, v5

    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[1] aspectRatio="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/giphy/sdk/ui/views/GifView;->t:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " actualRatio="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v7, v9}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    iget v7, p0, Lcom/giphy/sdk/ui/views/GifView;->t:F

    cmpg-float v5, v5, v7

    if-eqz v5, :cond_10

    if-ne v4, v6, :cond_b

    div-float/2addr p2, v7

    float-to-int p2, p2

    .line 23
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    :cond_b
    if-nez v4, :cond_d

    .line 24
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GifView;->s:Ljava/lang/Float;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    :cond_c
    div-float/2addr p2, v7

    float-to-int v2, p2

    :cond_d
    :goto_5
    if-ne v3, v6, :cond_e

    int-to-float p1, v2

    .line 25
    iget p2, p0, Lcom/giphy/sdk/ui/views/GifView;->t:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_7

    :cond_e
    if-nez v3, :cond_10

    int-to-float p1, v2

    .line 26
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GifView;->s:Ljava/lang/Float;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_6

    :cond_f
    iget p2, p0, Lcom/giphy/sdk/ui/views/GifView;->t:F

    :goto_6
    mul-float p1, p1, p2

    float-to-int p1, p1

    :cond_10
    :goto_7
    int-to-float p2, p1

    int-to-float v0, v2

    div-float/2addr p2, v0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[2] aspectRatio="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/giphy/sdk/ui/views/GifView;->t:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0, p1, v2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    .line 29
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->s()V

    return-void
.end method

.method public final setBackgroundVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/GifView;->v:Z

    return-void
.end method

.method public final setBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView;->C:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/giphy/sdk/ui/views/GifView;->z:F

    return-void
.end method

.method public final setFixedAspectRatio(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView;->s:Ljava/lang/Float;

    return-void
.end method

.method public final setGifCallback(Lcom/giphy/sdk/ui/views/GifView$b;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/ui/views/GifView$b;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView;->q:Lcom/giphy/sdk/ui/views/GifView$b;

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

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView;->w:Lcom/giphy/sdk/ui/drawables/ImageFormat;

    return-void
.end method

.method public final setLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/GifView;->x:Z

    return-void
.end method

.method public final setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView;->B:Ljava/lang/String;

    return-void
.end method

.method public final setOnPingbackGifLoadSuccess(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView;->r:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setScaleType(Lcom/facebook/drawee/drawable/s$c;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s$c;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GifView;->y:Lcom/facebook/drawee/drawable/s$c;

    return-void
.end method

.method public final setShowProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/GifView;->u:Z

    return-void
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->v:Z

    return v0
.end method

.method public final u(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/giphy/sdk/ui/views/GifView;->setMedia(Lcom/giphy/sdk/core/models/Media;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/giphy/sdk/ui/views/GifView;->x:Z

    .line 3
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->w(I)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/d;->j()Lcom/facebook/drawee/backends/pipeline/f;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lz0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->S(Lz0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/f;

    .line 6
    invoke-direct {p0}, Lcom/giphy/sdk/ui/views/GifView;->getControllerListener()Lcom/giphy/sdk/ui/views/GifView$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->K(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/backends/pipeline/f;

    .line 7
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->P(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/f;

    .line 8
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->e()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lz0/a;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/giphy/sdk/ui/views/GifView;->setMedia(Lcom/giphy/sdk/core/models/Media;)V

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Uri.parse(url)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/GifView;->x(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
