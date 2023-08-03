.class public Leltos/simpledialogfragment/color/ColorWheelView;
.super Landroid/view/View;
.source "ColorWheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/color/ColorWheelView$d;,
        Leltos/simpledialogfragment/color/ColorWheelView$f;,
        Leltos/simpledialogfragment/color/ColorWheelView$g;,
        Leltos/simpledialogfragment/color/ColorWheelView$SavedState;,
        Leltos/simpledialogfragment/color/ColorWheelView$e;,
        Leltos/simpledialogfragment/color/ColorWheelView$b;,
        Leltos/simpledialogfragment/color/ColorWheelView$c;
    }
.end annotation


# static fields
.field public static i:I = -0x30b8b9


# instance fields
.field private a:Leltos/simpledialogfragment/color/ColorWheelView$c;

.field private b:Ljava/lang/Boolean;

.field private c:Leltos/simpledialogfragment/color/ColorWheelView$g;

.field private d:Leltos/simpledialogfragment/color/ColorWheelView$d;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/Paint;

.field private g:Leltos/simpledialogfragment/color/ColorWheelView$b;

.field private h:Leltos/simpledialogfragment/color/ColorWheelView$e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Leltos/simpledialogfragment/color/ColorWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Leltos/simpledialogfragment/color/ColorWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-object p3, p0, Leltos/simpledialogfragment/color/ColorWheelView;->b:Ljava/lang/Boolean;

    .line 5
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Leltos/simpledialogfragment/color/ColorWheelView;->e:Landroid/graphics/RectF;

    .line 6
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Leltos/simpledialogfragment/color/ColorWheelView;->f:Landroid/graphics/Paint;

    .line 7
    new-instance p3, Leltos/simpledialogfragment/color/ColorWheelView$b;

    sget v1, Leltos/simpledialogfragment/color/ColorWheelView;->i:I

    invoke-direct {p3, p0, v1}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;I)V

    iput-object p3, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 8
    sget-object p3, Leltos/simpledialogfragment/color/ColorWheelView$e;->a:Leltos/simpledialogfragment/color/ColorWheelView$e;

    iput-object p3, p0, Leltos/simpledialogfragment/color/ColorWheelView;->h:Leltos/simpledialogfragment/color/ColorWheelView$e;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Leltos/simpledialogfragment/c$p;->G6:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    :try_start_0
    sget p2, Leltos/simpledialogfragment/c$p;->H6:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_0

    .line 12
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 14
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView;->b:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    new-instance p1, Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-direct {p1, p0}, Leltos/simpledialogfragment/color/ColorWheelView$g;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;)V

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    .line 17
    new-instance p1, Leltos/simpledialogfragment/color/ColorWheelView$d;

    invoke-direct {p1, p0}, Leltos/simpledialogfragment/color/ColorWheelView$d;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;)V

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->d:Leltos/simpledialogfragment/color/ColorWheelView$d;

    return-void

    :catchall_0
    move-exception p2

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    throw p2
.end method

.method static synthetic a(Leltos/simpledialogfragment/color/ColorWheelView;FF)F
    .locals 0

    invoke-direct {p0, p1, p2}, Leltos/simpledialogfragment/color/ColorWheelView;->f(FF)F

    move-result p0

    return p0
.end method

.method static synthetic b(Leltos/simpledialogfragment/color/ColorWheelView;FFF)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Leltos/simpledialogfragment/color/ColorWheelView;->d(FFF)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Leltos/simpledialogfragment/color/ColorWheelView;I)F
    .locals 0

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/color/ColorWheelView;->e(I)F

    move-result p0

    return p0
.end method

.method private d(FFF)Z
    .locals 3

    const/high16 v0, 0x43b40000    # 360.0f

    .line 1
    invoke-direct {p0, p1, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->f(FF)F

    move-result p1

    .line 2
    invoke-direct {p0, p2, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->f(FF)F

    move-result p2

    .line 3
    invoke-direct {p0, p3, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->f(FF)F

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmpg-float v2, p1, p3

    if-gez v2, :cond_1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    cmpg-float p1, p2, p3

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    cmpg-float p1, p1, p2

    if-lez p1, :cond_2

    cmpg-float p1, p2, p3

    if-gtz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private e(I)F
    .locals 2

    int-to-float p1, p1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private f(FF)F
    .locals 0

    rem-float/2addr p1, p2

    add-float/2addr p1, p2

    rem-float/2addr p1, p2

    return p1
.end method

.method private h(Leltos/simpledialogfragment/color/ColorWheelView$b;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->i(Leltos/simpledialogfragment/color/ColorWheelView$b;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v1, p1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->h(Leltos/simpledialogfragment/color/ColorWheelView$b;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 3
    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    .line 4
    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-virtual {v2, p1}, Leltos/simpledialogfragment/color/ColorWheelView$f;->e(Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    .line 5
    iget-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->k()F

    move-result v2

    invoke-virtual {p1, v2}, Leltos/simpledialogfragment/color/ColorWheelView$f;->g(F)V

    .line 6
    iget-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-virtual {p1}, Leltos/simpledialogfragment/color/ColorWheelView$f;->d()V

    .line 7
    iget-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->d:Leltos/simpledialogfragment/color/ColorWheelView$d;

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {p1, v2}, Leltos/simpledialogfragment/color/ColorWheelView$d;->d(Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    .line 8
    iget-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->f:Landroid/graphics/Paint;

    iget-object v2, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v2}, Leltos/simpledialogfragment/color/ColorWheelView$b;->p()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    if-eqz v1, :cond_1

    .line 10
    iget-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->a:Leltos/simpledialogfragment/color/ColorWheelView$c;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p0}, Leltos/simpledialogfragment/color/ColorWheelView;->getColor()I

    move-result p2

    invoke-interface {p1, p2}, Leltos/simpledialogfragment/color/ColorWheelView$c;->a(I)V

    :cond_1
    return-void
.end method

.method private setColorInternal(Leltos/simpledialogfragment/color/ColorWheelView$b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->h(Leltos/simpledialogfragment/color/ColorWheelView$b;Z)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->d:Leltos/simpledialogfragment/color/ColorWheelView$d;

    invoke-virtual {v1, v0}, Leltos/simpledialogfragment/color/ColorWheelView$d;->b(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Leltos/simpledialogfragment/color/ColorWheelView$e;->d:Leltos/simpledialogfragment/color/ColorWheelView$e;

    iput-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->h:Leltos/simpledialogfragment/color/ColorWheelView$e;

    .line 5
    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v3, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v1, p0, v3}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    iget-object v3, p0, Leltos/simpledialogfragment/color/ColorWheelView;->d:Leltos/simpledialogfragment/color/ColorWheelView$d;

    invoke-virtual {v3, v0}, Leltos/simpledialogfragment/color/ColorWheelView$d;->c(Landroid/graphics/PointF;)F

    move-result v0

    invoke-virtual {v1, v0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->l(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v0

    invoke-direct {p0, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->setColorInternal(Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-virtual {v1, v0}, Leltos/simpledialogfragment/color/ColorWheelView$f;->c(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v1, Leltos/simpledialogfragment/color/ColorWheelView$e;->b:Leltos/simpledialogfragment/color/ColorWheelView$e;

    iput-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->h:Leltos/simpledialogfragment/color/ColorWheelView$e;

    .line 8
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-virtual {v1, v0}, Leltos/simpledialogfragment/color/ColorWheelView$f;->a(Landroid/graphics/PointF;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v0

    invoke-direct {p0, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->setColorInternal(Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-virtual {v1, v0}, Leltos/simpledialogfragment/color/ColorWheelView$g;->n(Landroid/graphics/PointF;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 10
    sget-object v0, Leltos/simpledialogfragment/color/ColorWheelView$e;->c:Leltos/simpledialogfragment/color/ColorWheelView$e;

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView;->h:Leltos/simpledialogfragment/color/ColorWheelView$e;

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 12
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->h:Leltos/simpledialogfragment/color/ColorWheelView$e;

    sget-object v3, Leltos/simpledialogfragment/color/ColorWheelView$e;->d:Leltos/simpledialogfragment/color/ColorWheelView$e;

    if-ne v1, v3, :cond_4

    .line 13
    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v3, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v1, p0, v3}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    iget-object v3, p0, Leltos/simpledialogfragment/color/ColorWheelView;->d:Leltos/simpledialogfragment/color/ColorWheelView$d;

    invoke-virtual {v3, v0}, Leltos/simpledialogfragment/color/ColorWheelView$d;->c(Landroid/graphics/PointF;)F

    move-result v0

    invoke-virtual {v1, v0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->l(F)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v0

    invoke-direct {p0, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->setColorInternal(Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    goto :goto_0

    .line 14
    :cond_4
    sget-object v3, Leltos/simpledialogfragment/color/ColorWheelView$e;->b:Leltos/simpledialogfragment/color/ColorWheelView$e;

    if-ne v1, v3, :cond_5

    .line 15
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-virtual {v1, v0}, Leltos/simpledialogfragment/color/ColorWheelView$f;->a(Landroid/graphics/PointF;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v0

    invoke-direct {p0, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->setColorInternal(Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    goto :goto_0

    .line 16
    :cond_5
    sget-object v3, Leltos/simpledialogfragment/color/ColorWheelView$e;->c:Leltos/simpledialogfragment/color/ColorWheelView$e;

    if-ne v1, v3, :cond_8

    .line 17
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-virtual {v1, v0}, Leltos/simpledialogfragment/color/ColorWheelView$g;->n(Landroid/graphics/PointF;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18
    sget-object v0, Leltos/simpledialogfragment/color/ColorWheelView$e;->a:Leltos/simpledialogfragment/color/ColorWheelView$e;

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView;->h:Leltos/simpledialogfragment/color/ColorWheelView$e;

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 20
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->h:Leltos/simpledialogfragment/color/ColorWheelView$e;

    sget-object v3, Leltos/simpledialogfragment/color/ColorWheelView$e;->c:Leltos/simpledialogfragment/color/ColorWheelView$e;

    if-ne v1, v3, :cond_7

    .line 21
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-virtual {v1, v0}, Leltos/simpledialogfragment/color/ColorWheelView$g;->n(Landroid/graphics/PointF;)Leltos/simpledialogfragment/color/ColorWheelView$b;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 22
    invoke-direct {p0, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->setColorInternal(Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    .line 23
    :cond_7
    sget-object v0, Leltos/simpledialogfragment/color/ColorWheelView$e;->a:Leltos/simpledialogfragment/color/ColorWheelView$e;

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView;->h:Leltos/simpledialogfragment/color/ColorWheelView$e;

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_a

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_9

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return v2

    .line 26
    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public g(IZ)V
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v0, p0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;I)V

    invoke-direct {p0, v0, p2}, Leltos/simpledialogfragment/color/ColorWheelView;->h(Leltos/simpledialogfragment/color/ColorWheelView$b;Z)V

    return-void
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-virtual {v0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->p()I

    move-result v0

    return v0
.end method

.method public i(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->j(IZ)V

    return-void
.end method

.method public j(IZ)V
    .locals 2

    .line 1
    new-instance v0, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-direct {v0, p0, v1}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;Leltos/simpledialogfragment/color/ColorWheelView$b;)V

    .line 2
    invoke-virtual {v0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$b;->d(I)V

    .line 3
    invoke-direct {p0, v0, p2}, Leltos/simpledialogfragment/color/ColorWheelView;->h(Leltos/simpledialogfragment/color/ColorWheelView$b;Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-virtual {v0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$g;->b(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView;->d:Leltos/simpledialogfragment/color/ColorWheelView$d;

    invoke-virtual {v0, p1}, Leltos/simpledialogfragment/color/ColorWheelView$d;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/16 v0, 0x32

    .line 3
    invoke-direct {p0, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->e(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 7
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_2

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 9
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 10
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-eq p2, v3, :cond_4

    .line 11
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-ne p2, v2, :cond_5

    .line 12
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 13
    :cond_5
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7

    .line 1
    instance-of v0, p1, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    new-instance v0, Leltos/simpledialogfragment/color/ColorWheelView$b;

    iget v3, p1, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;->saveAlpha:I

    iget-object p1, p1, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;->saveColor:[F

    const/4 v1, 0x0

    aget v1, p1, v1

    float-to-int v1, v1

    int-to-float v4, v1

    const/4 v1, 0x1

    aget v5, p1, v1

    const/4 v1, 0x2

    aget v6, p1, v1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Leltos/simpledialogfragment/color/ColorWheelView$b;-><init>(Leltos/simpledialogfragment/color/ColorWheelView;IFFF)V

    iput-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;

    invoke-direct {v1, v0}, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-static {v0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->a(Leltos/simpledialogfragment/color/ColorWheelView$b;)[F

    move-result-object v0

    iput-object v0, v1, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;->saveColor:[F

    .line 4
    iget-object v0, p0, Leltos/simpledialogfragment/color/ColorWheelView;->g:Leltos/simpledialogfragment/color/ColorWheelView$b;

    invoke-static {v0}, Leltos/simpledialogfragment/color/ColorWheelView$b;->b(Leltos/simpledialogfragment/color/ColorWheelView$b;)I

    move-result v0

    iput v0, v1, Leltos/simpledialogfragment/color/ColorWheelView$SavedState;->saveAlpha:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    const/16 p3, 0xa

    .line 1
    invoke-direct {p0, p3}, Leltos/simpledialogfragment/color/ColorWheelView;->e(I)F

    move-result p4

    const/16 v0, 0x23

    invoke-direct {p0, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->e(I)F

    move-result v0

    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->e(I)F

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(FF)F

    move-result p4

    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->e(I)F

    move-result v0

    invoke-direct {p0, p3}, Leltos/simpledialogfragment/color/ColorWheelView;->e(I)F

    move-result p3

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->e(I)F

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    div-float/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    div-int/lit8 v1, p1, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float/2addr p1, p4

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 5
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->d:Leltos/simpledialogfragment/color/ColorWheelView$d;

    invoke-virtual {v1, v0, p1, p4}, Leltos/simpledialogfragment/color/ColorWheelView$d;->e(Landroid/graphics/PointF;FF)V

    .line 6
    iget-object v1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    div-float/2addr p4, p2

    sub-float p2, p1, p4

    invoke-virtual {v1, v0, p2, p3}, Leltos/simpledialogfragment/color/ColorWheelView$f;->f(Landroid/graphics/PointF;FF)V

    .line 7
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView;->c:Leltos/simpledialogfragment/color/ColorWheelView$g;

    invoke-virtual {p2}, Leltos/simpledialogfragment/color/ColorWheelView$f;->d()V

    .line 8
    iget-object p2, p0, Leltos/simpledialogfragment/color/ColorWheelView;->e:Landroid/graphics/RectF;

    iget p3, v0, Landroid/graphics/PointF;->x:F

    sub-float p4, p3, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v1, v0, p1

    add-float/2addr p3, p1

    add-float/2addr v0, p1

    invoke-virtual {p2, p4, v1, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    iget-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->f:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->g(IZ)V

    return-void
.end method

.method public setOnColorChangeListener(Leltos/simpledialogfragment/color/ColorWheelView$c;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/color/ColorWheelView;->a:Leltos/simpledialogfragment/color/ColorWheelView$c;

    return-void
.end method
