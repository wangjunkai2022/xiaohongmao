.class public final Ls4/a;
.super Ljava/lang/Object;
.source "BitmapSampleSizeCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapSampleSizeCalculator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapSampleSizeCalculator.kt\ncom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator\n*L\n1#1,33:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Ls4/a;",
        "",
        "Landroid/graphics/BitmapFactory$Options;",
        "options",
        "",
        "reqWidth",
        "reqHeight",
        "a",
        "<init>",
        "()V",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:Ls4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls4/a;

    invoke-direct {v0}, Ls4/a;-><init>()V

    sput-object v0, Ls4/a;->a:Ls4/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p1    # Landroid/graphics/BitmapFactory$Options;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-lez p3, :cond_2

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    if-gt v0, p3, :cond_1

    if-le p1, p2, :cond_2

    .line 2
    :cond_1
    div-int/lit8 v0, v0, 0x2

    .line 3
    div-int/lit8 p1, p1, 0x2

    .line 4
    :goto_0
    div-int v2, v0, v1

    if-lt v2, p3, :cond_2

    div-int v2, p1, v1

    if-lt v2, p2, :cond_2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method
