.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;
.super Landroid/widget/FrameLayout;
.source "MySwipeView.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private final g:Landroid/animation/ValueAnimator;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x32

    .line 4
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->a:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->b:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->c:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->i:Z

    .line 8
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;->RIGHT:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 9
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->g:Landroid/animation/ValueAnimator;

    .line 10
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/a;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    new-instance p2, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;

    invoke-direct {p2, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->l(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    return-object p0
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    return-object p1
.end method

.method static synthetic d(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->f:I

    return p0
.end method

.method static synthetic e(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;)I
    .locals 0

    iget p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->c:I

    return p0
.end method

.method static synthetic f(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;I)I
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->e:I

    return p1
.end method

.method static synthetic g(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->h:Z

    return p1
.end method

.method private h(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;->RIGHT:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->c:I

    div-int/lit8 v1, v0, 0x3

    if-le p1, v1, :cond_0

    .line 3
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->f:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;->LEFT:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->c:I

    div-int/lit8 v0, v0, 0x3

    if-le p1, v0, :cond_1

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->f:I

    :cond_1
    :goto_0
    return-void
.end method

.method private i(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;->RIGHT:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x32

    return p1

    .line 3
    :cond_0
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->c:I

    add-int/lit8 p1, p1, -0x32

    sub-int/2addr v0, p1

    return v0
.end method

.method private k(II)Z
    .locals 0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 p2, 0x32

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic l(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->f:I

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->e:I

    sub-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 5
    iget v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->e:I

    int-to-float v3, v3

    int-to-float v4, v0

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public j(II)Z
    .locals 4

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;->RIGHT:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x32

    if-eqz v0, :cond_1

    sub-int/2addr p2, p1

    if-le p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    sub-int/2addr p1, p2

    if-le p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->i:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->e:I

    invoke-virtual {p0, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->j(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->j:Z

    if-nez v1, :cond_2

    .line 5
    iput-boolean v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->h:Z

    .line 6
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    .line 7
    :cond_2
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->e:I

    invoke-direct {p0, v1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->k(II)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->j:Z

    .line 9
    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->e:I

    .line 10
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->e:I

    sub-int v1, v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 4
    :cond_0
    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->e:I

    invoke-virtual {p0, v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->j(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->i:Z

    if-eqz v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->d:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 7
    invoke-direct {p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->i(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 9
    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->e:I

    invoke-virtual {p0, v2, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->j(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->i:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->i(I)I

    move-result v0

    iput v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->e:I

    .line 11
    invoke-direct {p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->h(I)V

    .line 12
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 13
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setIsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->i:Z

    return-void
.end method

.method public setSwipeContentView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->d:Ljava/util/List;

    .line 2
    sget-object p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;->RIGHT:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/MySwipeView;->k:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/view/Constants$Orientation;

    return-void
.end method
