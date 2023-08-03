.class public final Lcom/qennnsad/aknkaksd/util/ScrollableLayout;
.super Landroid/widget/FrameLayout;
.source "ScrollableLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001Z\u0018\u00002\u00020\u0001:\u0001(B\'\u0008\u0007\u0012\u0006\u0010b\u001a\u00020a\u0012\n\u0008\u0002\u0010d\u001a\u0004\u0018\u00010c\u0012\u0008\u0008\u0002\u0010e\u001a\u00020\u0005\u00a2\u0006\u0004\u0008f\u0010gJ/\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u000e\u001a\u00020\u0007H\u0002J\u0008\u0010\u000f\u001a\u00020\u0007H\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0012\u001a\u00020\u0010H\u0002J\u0006\u0010\u0013\u001a\u00020\u0005J\u0008\u0010\u0014\u001a\u00020\u0007H\u0014J0\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0014J\u000e\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0005J\u0019\u0010\u001d\u001a\u00020\u00072\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020\u00072\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u0019\u0010 \u001a\u00020\u00072\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008 \u0010\u001eJ\u0010\u0010#\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020!H\u0016J\u0010\u0010%\u001a\u00020\u00102\u0006\u0010$\u001a\u00020!H\u0016J\u000e\u0010\'\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u0002R\u0014\u0010*\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\"\u00105\u001a\u00020+8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010-\u001a\u0004\u00083\u0010/\"\u0004\u00084\u00101R\"\u00108\u001a\u00020+8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010-\u001a\u0004\u00086\u0010/\"\u0004\u00087\u00101R\u0016\u0010:\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010)R$\u0010A\u001a\u0004\u0018\u00010;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\"\u0010G\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\"\u0010J\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010B\u001a\u0004\u0008H\u0010D\"\u0004\u0008I\u0010FR\"\u0010P\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\"\u0010S\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010K\u001a\u0004\u0008Q\u0010M\"\u0004\u0008R\u0010OR$\u0010Y\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010\u001eR\u0014\u0010\\\u001a\u00020Z8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010[R\u0014\u0010`\u001a\u00020]8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008^\u0010_\u00a8\u0006h"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/ScrollableLayout;",
        "Landroid/widget/FrameLayout;",
        "",
        "selectedItemNewPosition",
        "speed",
        "",
        "newPosition",
        "",
        "q",
        "(FLjava/lang/Float;Ljava/lang/Integer;)V",
        "Landroid/animation/Animator$AnimatorListener;",
        "d",
        "(Ljava/lang/Integer;)Landroid/animation/Animator$AnimatorListener;",
        "h",
        "i",
        "c",
        "",
        "f",
        "g",
        "getCurrentItem",
        "onFinishInflate",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "item",
        "setCurrentItem",
        "j",
        "(Ljava/lang/Float;)V",
        "n",
        "l",
        "Landroid/view/MotionEvent;",
        "ev",
        "onInterceptTouchEvent",
        "event",
        "onTouchEvent",
        "distance",
        "p",
        "a",
        "I",
        "mTouchSlop",
        "Landroid/view/View;",
        "b",
        "Landroid/view/View;",
        "getPrevItem",
        "()Landroid/view/View;",
        "setPrevItem",
        "(Landroid/view/View;)V",
        "prevItem",
        "getSelectedItem",
        "setSelectedItem",
        "selectedItem",
        "getNextItem",
        "setNextItem",
        "nextItem",
        "e",
        "currentItem",
        "Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;",
        "Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;",
        "getScrollableLayoutListener",
        "()Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;",
        "setScrollableLayoutListener",
        "(Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;)V",
        "scrollableLayoutListener",
        "F",
        "getMinSpeed",
        "()F",
        "setMinSpeed",
        "(F)V",
        "minSpeed",
        "getThresholdSpeed",
        "setThresholdSpeed",
        "thresholdSpeed",
        "Z",
        "getAnimationIsRunning",
        "()Z",
        "setAnimationIsRunning",
        "(Z)V",
        "animationIsRunning",
        "getMIsScrolling",
        "setMIsScrolling",
        "mIsScrolling",
        "k",
        "Ljava/lang/Float;",
        "getLastEvY",
        "()Ljava/lang/Float;",
        "setLastEvY",
        "lastEvY",
        "com/qennnsad/aknkaksd/util/ScrollableLayout$c",
        "Lcom/qennnsad/aknkaksd/util/ScrollableLayout$c;",
        "gestureDetectorListener",
        "Landroidx/core/view/GestureDetectorCompat;",
        "m",
        "Landroidx/core/view/GestureDetectorCompat;",
        "gestureDetector",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyle",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:I

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field private e:I

.field private f:Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private g:F

.field private h:F

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Float;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final l:Lcom/qennnsad/aknkaksd/util/ScrollableLayout$c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final m:Landroidx/core/view/GestureDetectorCompat;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
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

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->a:I

    .line 4
    new-instance p2, Lcom/qennnsad/aknkaksd/util/ScrollableLayout$c;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout$c;-><init>(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;)V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->l:Lcom/qennnsad/aknkaksd/util/ScrollableLayout$c;

    .line 5
    new-instance p3, Landroidx/core/view/GestureDetectorCompat;

    invoke-direct {p3, p1, p2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->m:Landroidx/core/view/GestureDetectorCompat;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->h(F)V

    return-void
.end method

.method public static final synthetic b(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->i()V

    return-void
.end method

.method private final c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getPrevItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getNextItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->i:Z

    return-void
.end method

.method private final d(Ljava/lang/Integer;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout$b;

    invoke-direct {v0, p1, p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout$b;-><init>(Ljava/lang/Integer;Lcom/qennnsad/aknkaksd/util/ScrollableLayout;)V

    return-object v0
.end method

.method static synthetic e(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->d(Ljava/lang/Integer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    return-object p0
.end method

.method private final f()Z
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->f:Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->e:I

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;->j(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final g()Z
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->f:Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->e:I

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;->k(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final h(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->h:F

    neg-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->j(Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_1

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->j(Ljava/lang/Float;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->h:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->n(Ljava/lang/Float;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_3

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->n(Ljava/lang/Float;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0, p1, v0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->m(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;Ljava/lang/Float;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getPrevItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getPrevItem()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getNextItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->c()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->k:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->j:Z

    return-void
.end method

.method public static synthetic k(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;Ljava/lang/Float;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->j(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic m(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;Ljava/lang/Float;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->l(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic o(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;Ljava/lang/Float;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->n(Ljava/lang/Float;)V

    return-void
.end method

.method private final q(FLjava/lang/Float;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->g:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, p2

    const/16 p2, 0x3e8

    int-to-float p2, p2

    mul-float v0, v0, p2

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToLong(F)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getPrevItem()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getNextItem()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    invoke-direct {p0, p3}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->d(Ljava/lang/Integer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->i:Z

    return-void
.end method

.method static synthetic r(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;FLjava/lang/Float;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->q(FLjava/lang/Float;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getAnimationIsRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->i:Z

    return v0
.end method

.method public final getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->e:I

    return v0
.end method

.method public final getLastEvY()Ljava/lang/Float;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->k:Ljava/lang/Float;

    return-object v0
.end method

.method public final getMIsScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->j:Z

    return v0
.end method

.method public final getMinSpeed()F
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->g:F

    return v0
.end method

.method public final getNextItem()Landroid/view/View;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "nextItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPrevItem()Landroid/view/View;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "prevItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getScrollableLayoutListener()Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->f:Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;

    return-object v0
.end method

.method public final getSelectedItem()Landroid/view/View;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "selectedItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getThresholdSpeed()F
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->h:F

    return v0
.end method

.method public final j(Ljava/lang/Float;)V
    .locals 3
    .param p1    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start scrolling to next position from position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    iget v1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->q(FLjava/lang/Float;Ljava/lang/Integer;)V

    return-void
.end method

.method public final l(Ljava/lang/Float;)V
    .locals 9
    .param p1    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start scrolling to original state"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    .line 2
    invoke-static/range {v3 .. v8}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->r(Lcom/qennnsad/aknkaksd/util/ScrollableLayout;FLjava/lang/Float;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public final n(Ljava/lang/Float;)V
    .locals 3
    .param p1    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start scrolling to previous position"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->e:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->q(FLjava/lang/Float;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "getChildAt(2)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->setNextItem(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "getChildAt(0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->setPrevItem(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "getChildAt(1)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->setSelectedItem(Landroid/view/View;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const-string v1, "Scrollable.events"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ltimber/log/Timber$c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v0, 0x3

    if-eq v2, v0, :cond_3

    goto :goto_2

    .line 3
    :cond_0
    iget-boolean v2, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->j:Z

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Already scrolling"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v4, 0x1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->k:Ljava/lang/Float;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    :goto_1
    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 6
    invoke-virtual {v0, v1}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current diff: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v5}, Ltimber/log/Timber$c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->k:Ljava/lang/Float;

    .line 8
    iget p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->a:I

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_4

    .line 9
    iput-boolean v3, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->j:Z

    goto :goto_0

    .line 10
    :cond_3
    iput-boolean v4, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->j:Z

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->k:Ljava/lang/Float;

    .line 12
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    :goto_2
    return v4

    .line 13
    :cond_5
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    sub-int/2addr p5, p3

    int-to-float p1, p5

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    const p2, 0x3e99999a    # 0.3f

    div-float/2addr p1, p2

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->g:F

    const/4 p2, 0x4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 3
    iput p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->h:F

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->i()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const-string v1, "Scrollable.events"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$b;->H(Ljava/lang/String;)Ltimber/log/Timber$c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got touch event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$c;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->m:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->h(F)V

    .line 4
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public final p(F)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    int-to-float v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->g()Z

    move-result v0

    if-nez v0, :cond_1

    int-to-float v0, v1

    .line 4
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 5
    :cond_1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scroll "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->g()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getSelectedItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 7
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getPrevItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->getNextItem()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public final setAnimationIsRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->i:Z

    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 3

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->e:I

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->f:Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;->w(I)V

    :cond_0
    return-void
.end method

.method public final setLastEvY(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->k:Ljava/lang/Float;

    return-void
.end method

.method public final setMIsScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->j:Z

    return-void
.end method

.method public final setMinSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->g:F

    return-void
.end method

.method public final setNextItem(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->d:Landroid/view/View;

    return-void
.end method

.method public final setPrevItem(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->b:Landroid/view/View;

    return-void
.end method

.method public final setScrollableLayoutListener(Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;)V
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->f:Lcom/qennnsad/aknkaksd/util/ScrollableLayout$a;

    return-void
.end method

.method public final setSelectedItem(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->c:Landroid/view/View;

    return-void
.end method

.method public final setThresholdSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/util/ScrollableLayout;->h:F

    return-void
.end method
