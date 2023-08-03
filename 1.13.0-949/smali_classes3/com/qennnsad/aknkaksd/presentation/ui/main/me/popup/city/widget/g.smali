.class public Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;
.super Ljava/lang/Object;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;
    }
.end annotation


# static fields
.field private static final l:I = 0x190

.field public static final m:I = 0x1


# instance fields
.field private a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/GestureDetector;

.field private d:Landroid/widget/Scroller;

.field private e:I

.field private f:F

.field private g:Z

.field private h:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private final i:I

.field private final j:I

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->h:Landroid/view/GestureDetector$SimpleOnGestureListener;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->i:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->j:I

    .line 5
    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$b;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;)V

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->k:Landroid/os/Handler;

    .line 6
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->h:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->c:Landroid/view/GestureDetector;

    .line 7
    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 8
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->d:Landroid/widget/Scroller;

    .line 9
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;

    .line 10
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->e:I

    return p0
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;I)I
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->e:I

    return p1
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->d:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->n(I)V

    return-void
.end method

.method static synthetic e(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;)Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;

    return-object p0
.end method

.method static synthetic f(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->j()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;->onJustify()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->n(I)V

    return-void
.end method

.method private n(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->h()V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->k:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->g:Z

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;->onStarted()V

    :cond_0
    return-void
.end method


# virtual methods
.method i()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;

    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;->onFinished()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->g:Z

    :cond_0
    return-void
.end method

.method public k(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->f:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->o()V

    .line 4
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;

    invoke-interface {v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g$c;->onScroll(I)V

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->f:F

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->f:F

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->d:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 8
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->h()V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->j()V

    :cond_3
    return v1
.end method

.method public l(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->d:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->e:I

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->d:Landroid/widget/Scroller;

    if-eqz p2, :cond_0

    move v6, p2

    goto :goto_0

    :cond_0
    const/16 p2, 0x190

    const/16 v6, 0x190

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->n(I)V

    .line 5
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->o()V

    return-void
.end method

.method public m(Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->d:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->d:Landroid/widget/Scroller;

    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/g;->d:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method
