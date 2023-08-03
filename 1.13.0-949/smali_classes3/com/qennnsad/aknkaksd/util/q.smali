.class public final Lcom/qennnsad/aknkaksd/util/q;
.super Ljava/lang/Object;
.source "DebugInfoUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0007J \u0010\u000c\u001a\u00020\u0008*\u00020\u00022\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00080\nH\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/q;",
        "",
        "Landroid/view/View;",
        "view",
        "",
        "clicksCount",
        "",
        "debugInfo",
        "",
        "d",
        "Lkotlin/Function1;",
        "onClick",
        "f",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/a;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lu7/f;
.end annotation


# instance fields
.field private final a:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/q;->a:Lg5/a;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/qennnsad/aknkaksd/util/q;->g(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/qennnsad/aknkaksd/util/q;Landroid/view/View;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/16 p2, 0xa

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 1
    iget-object p3, p0, Lcom/qennnsad/aknkaksd/util/q;->a:Lg5/a;

    invoke-virtual {p3}, Lg5/a;->g()Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/qennnsad/aknkaksd/data/bean/ConfigDnsBean;->getHost()Ljava/lang/String;

    move-result-object p3

    const-string p4, "localDataManager.getDns().host"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/util/q;->d(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method private static final g(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "$primaryPointerId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$secondaryPointerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$onClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p0

    invoke-virtual {p4, p0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p0

    iput p0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/q;->h(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    goto :goto_0

    .line 4
    :cond_2
    iget p4, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v0, -0x1

    if-le p4, v0, :cond_3

    iget p4, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-le p4, v0, :cond_3

    .line 5
    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/q;->h(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    const-string p0, "v"

    .line 6
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 7
    :cond_3
    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/util/q;->h(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    return v1

    .line 8
    :cond_4
    invoke-virtual {p4, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :goto_0
    return v2
.end method

.method private static final h(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2
    iput v0, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/q;->e(Lcom/qennnsad/aknkaksd/util/q;Landroid/view/View;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final c(Landroid/view/View;I)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/q;->e(Lcom/qennnsad/aknkaksd/util/q;Landroid/view/View;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final d(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 2
    new-instance v1, Lcom/qennnsad/aknkaksd/util/q$a;

    invoke-direct {v1, v0, p2, p1, p3}, Lcom/qennnsad/aknkaksd/util/q$a;-><init>(Lkotlin/jvm/internal/Ref$IntRef;ILandroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/qennnsad/aknkaksd/util/q;->f(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final f(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v1, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 3
    new-instance v1, Lcom/qennnsad/aknkaksd/util/p;

    invoke-direct {v1, v0, v2, p2}, Lcom/qennnsad/aknkaksd/util/p;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
