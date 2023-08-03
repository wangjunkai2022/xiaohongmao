.class public final Lcom/qennnsad/aknkaksd/util/l0;
.super Ljava/lang/Object;
.source "GestureUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001c\u0010\u0007\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0007J\u0012\u0010\n\u001a\u00020\u0006*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002J\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002J\u0012\u0010\u000c\u001a\u00020\u0006*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002J\u0012\u0010\r\u001a\u00020\u0006*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002J\"\u0010\u0010\u001a\u00020\u0006*\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003JZ\u0010\u001b\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u00060\u0016*\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00122\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0014H\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/l0;",
        "",
        "Landroid/view/View;",
        "",
        "x",
        "y",
        "",
        "h",
        "Landroid/view/ViewGroup;",
        "target",
        "c",
        "d",
        "e",
        "b",
        "distanceX",
        "distanceY",
        "a",
        "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "rv",
        "Lkotlin/Function0;",
        "refreshFromBottomRoutine",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "header",
        "footer",
        "f",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/util/l0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/util/l0;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/util/l0;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/l0;->a:Lcom/qennnsad/aknkaksd/util/l0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/qennnsad/aknkaksd/util/l0;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/jvm/functions/Function2;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/util/l0;->f(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function2;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Landroid/view/View;FF)V
    .locals 24
    .param p0    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    const/4 v1, 0x1

    new-array v15, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 3
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v3, 0x0

    .line 4
    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 5
    iput v1, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    aput-object v2, v15, v3

    new-array v1, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 6
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move/from16 v4, p1

    .line 7
    iput v4, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v4, p2

    .line 8
    iput v4, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    iput v4, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 10
    iput v4, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    aput-object v2, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    move-wide/from16 v2, v18

    move-wide/from16 v4, v20

    move-object v8, v15

    move-object v9, v1

    move-object/from16 v23, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v22

    .line 11
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v6, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide/from16 v2, v18

    move-object/from16 v8, v23

    .line 13
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;FF)V
    .locals 22
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "target"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 1
    fill-array-data v3, :array_0

    .line 2
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    new-array v2, v2, [I

    .line 3
    fill-array-data v2, :array_1

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v4, v2, v1

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    const/4 v14, 0x1

    aget v6, v2, v14

    int-to-float v6, v6

    add-float v15, v6, v5

    aget v6, v2, v1

    aget v7, v3, v1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float v13, v6, v5

    aget v2, v2, v14

    aget v3, v3, v14

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v2, v5

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    const/4 v10, 0x0

    const/4 v3, 0x0

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    move v11, v4

    move v12, v15

    move v5, v13

    move v13, v3

    .line 7
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v5, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    const/16 v13, 0x1002

    .line 9
    invoke-virtual {v3, v13}, Landroid/view/MotionEvent;->setSource(I)V

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0x14

    if-ltz v3, :cond_0

    if-gt v3, v6, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const-wide/16 v8, 0x1

    if-eqz v7, :cond_2

    int-to-float v7, v3

    mul-float v10, v7, p3

    int-to-float v6, v6

    div-float/2addr v10, v6

    add-float v11, v4, v10

    mul-float v7, v7, p4

    div-float/2addr v7, v6

    add-float v12, v15, v7

    add-float/2addr v10, v5

    add-float/2addr v7, v2

    const/high16 v6, 0x41200000    # 10.0f

    cmpg-float v20, v11, v6

    if-lez v20, :cond_2

    cmpg-float v6, v12, v6

    if-gtz v6, :cond_1

    goto :goto_2

    :cond_1
    add-long v18, v18, v8

    const/4 v9, 0x2

    const/16 v20, 0x0

    move/from16 v21, v5

    move-wide/from16 v5, v16

    move v1, v7

    move-wide/from16 v7, v18

    move v14, v10

    move v10, v11

    move v11, v12

    move/from16 v12, v20

    .line 11
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 12
    invoke-virtual {v5, v14, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 13
    invoke-virtual {v5, v13}, Landroid/view/MotionEvent;->setSource(I)V

    .line 14
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v21

    const/4 v1, 0x0

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    move/from16 v21, v5

    add-long v7, v18, v8

    const/4 v9, 0x1

    int-to-float v1, v3

    mul-float v3, v1, p3

    add-float v10, v4, v3

    mul-float v1, v1, p4

    add-float v11, v15, v1

    const/4 v12, 0x0

    move-wide/from16 v5, v16

    .line 15
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    add-float v3, v21, v3

    add-float/2addr v2, v1

    .line 16
    invoke-virtual {v4, v3, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 17
    invoke-virtual {v4, v13}, Landroid/view/MotionEvent;->setSource(I)V

    .line 18
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final b(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/qennnsad/aknkaksd/util/l0;->a(Landroid/view/ViewGroup;Landroid/view/View;FF)V

    return-void
.end method

.method public final c(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/qennnsad/aknkaksd/util/l0;->a(Landroid/view/ViewGroup;Landroid/view/View;FF)V

    return-void
.end method

.method public final d(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/qennnsad/aknkaksd/util/l0;->a(Landroid/view/ViewGroup;Landroid/view/View;FF)V

    return-void
.end method

.method public final e(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/qennnsad/aknkaksd/util/l0;->a(Landroid/view/ViewGroup;Landroid/view/View;FF)V

    return-void
.end method

.method public final f(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function2;
    .locals 2
    .param p1    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/h;
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
            "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rv"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/util/l0$a;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/qennnsad/aknkaksd/util/l0$a;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    :cond_1
    new-instance p3, Lcom/qennnsad/aknkaksd/util/l0$b;

    invoke-direct {p3, v1, p1, p2}, Lcom/qennnsad/aknkaksd/util/l0$b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p3
.end method
