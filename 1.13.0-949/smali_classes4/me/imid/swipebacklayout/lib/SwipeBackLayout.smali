.class public Lme/imid/swipebacklayout/lib/SwipeBackLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;,
        Lme/imid/swipebacklayout/lib/SwipeBackLayout$c;,
        Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;
    }
.end annotation


# static fields
.field public static final A:I = 0x1

.field public static final B:I = 0x2

.field private static final C:F = 0.3f

.field private static final D:I = 0xa

.field private static final E:[I

.field private static final s:I = 0x190

.field private static final t:I = -0x67000000

.field private static final u:I = 0xff

.field public static final v:I = 0x1

.field public static final w:I = 0x2

.field public static final x:I = 0x8

.field public static final y:I = 0xb

.field public static final z:I


# instance fields
.field private a:I

.field private b:F

.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Lme/imid/swipebacklayout/lib/d;

.field private g:F

.field private h:I

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:F

.field private o:I

.field private p:Z

.field private q:Landroid/graphics/Rect;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->E:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x8
        0xb
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lme/imid/swipebacklayout/lib/b$b;->a:I

    invoke-direct {p0, p1, p2, v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3e99999a    # 0.3f

    .line 4
    iput v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->b:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->d:Z

    const/high16 v1, -0x67000000

    .line 6
    iput v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->o:I

    .line 7
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->q:Landroid/graphics/Rect;

    .line 8
    new-instance v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;-><init>(Lme/imid/swipebacklayout/lib/SwipeBackLayout;Lme/imid/swipebacklayout/lib/SwipeBackLayout$a;)V

    invoke-static {p0, v1}, Lme/imid/swipebacklayout/lib/d;->q(Landroid/view/ViewGroup;Lme/imid/swipebacklayout/lib/d$c;)Lme/imid/swipebacklayout/lib/d;

    move-result-object v1

    iput-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    .line 9
    sget-object v1, Lme/imid/swipebacklayout/lib/b$l;->R5:[I

    sget v2, Lme/imid/swipebacklayout/lib/b$k;->A2:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    sget p2, Lme/imid/swipebacklayout/lib/b$l;->T5:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-lez p2, :cond_0

    .line 11
    invoke-virtual {p0, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEdgeSize(I)V

    .line 12
    :cond_0
    sget-object p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->E:[I

    sget p3, Lme/imid/swipebacklayout/lib/b$l;->S5:I

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    aget p2, p2, p3

    .line 13
    invoke-virtual {p0, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEdgeTrackingEnabled(I)V

    .line 14
    sget p2, Lme/imid/swipebacklayout/lib/b$l;->V5:I

    sget p3, Lme/imid/swipebacklayout/lib/b$f;->G0:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 15
    sget p3, Lme/imid/swipebacklayout/lib/b$l;->W5:I

    sget v1, Lme/imid/swipebacklayout/lib/b$f;->H0:I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 16
    sget v1, Lme/imid/swipebacklayout/lib/b$l;->U5:I

    sget v2, Lme/imid/swipebacklayout/lib/b$f;->F0:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 17
    invoke-virtual {p0, p2, v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->v(II)V

    const/4 p2, 0x2

    .line 18
    invoke-virtual {p0, p3, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->v(II)V

    const/16 p2, 0x8

    .line 19
    invoke-virtual {p0, v1, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->v(II)V

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43c80000    # 400.0f

    mul-float p1, p1, p2

    .line 22
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    invoke-virtual {p2, p1}, Lme/imid/swipebacklayout/lib/d;->T(F)V

    .line 23
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    const/high16 p3, 0x40000000    # 2.0f

    mul-float p1, p1, p3

    invoke-virtual {p2, p1}, Lme/imid/swipebacklayout/lib/d;->S(F)V

    return-void
.end method

.method static synthetic a(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I
    .locals 0

    iget p0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a:I

    return p0
.end method

.method static synthetic b(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)I
    .locals 0

    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h:I

    return p1
.end method

.method static synthetic c(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)I
    .locals 0

    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->i:I

    return p1
.end method

.method static synthetic d(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F
    .locals 0

    iget p0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->b:F

    return p0
.end method

.method static synthetic e(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/d;
    .locals 0

    iget-object p0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    return-object p0
.end method

.method static synthetic f(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I
    .locals 0

    iget p0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->r:I

    return p0
.end method

.method static synthetic g(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)I
    .locals 0

    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->r:I

    return p1
.end method

.method static synthetic h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F
    .locals 0

    iget p0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->g:F

    return p0
.end method

.method static synthetic j(Lme/imid/swipebacklayout/lib/SwipeBackLayout;F)F
    .locals 0

    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->g:F

    return p1
.end method

.method static synthetic k(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->k:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic m(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic n(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->m:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private q(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->o:I

    const/high16 v1, -0x1000000

    and-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    .line 2
    iget v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->n:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 3
    iget v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->r:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, p2, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1, p2, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method private r(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->q:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3
    iget p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a:I

    and-int/lit8 p2, p2, 0x1

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->k:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->k:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->n:F

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    :cond_0
    iget p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->l:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 9
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 10
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->l:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->n:F

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13
    :cond_1
    iget p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->m:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 15
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 16
    invoke-virtual {p2, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->m:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->n:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 18
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    iget v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->n:F

    .line 2
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/imid/swipebacklayout/lib/d;->o(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e:Landroid/view/View;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 3
    iget p4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->n:F

    const/4 v1, 0x0

    cmpl-float p4, p4, v1

    if-lez p4, :cond_1

    if-eqz v0, :cond_1

    iget-object p4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    .line 4
    invoke-virtual {p4}, Lme/imid/swipebacklayout/lib/d;->E()I

    move-result p4

    if-eqz p4, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->r(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->q(Landroid/graphics/Canvas;Landroid/view/View;)V

    :cond_1
    return p3
.end method

.method public o(Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->j:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/d;->W(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->p:Z

    .line 2
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    iget p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h:I

    iget p3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->i:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget p5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->i:I

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    .line 6
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->p:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->d:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/d;->K(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public p(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->c:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010054

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0, v2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setContentView(Landroid/view/View;)V

    .line 11
    new-instance v1, Lme/imid/swipebacklayout/lib/app/c;

    invoke-direct {v1, p1}, Lme/imid/swipebacklayout/lib/app/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->o(Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;)V

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->p:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public s(Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->j:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e:Landroid/view/View;

    return-void
.end method

.method public setEdgeSize(I)V
    .locals 1

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/d;->Q(I)V

    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 1

    .line 1
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a:I

    .line 2
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/d;->R(I)V

    return-void
.end method

.method public setEnableGesture(Z)V
    .locals 0

    iput-boolean p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->d:Z

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->o:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setScrollThresHold(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->b:F

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold value should be between 0 and 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSwipeListener(Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->o(Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;)V

    return-void
.end method

.method public t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 3
    iget v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 4
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->r:I

    :goto_0
    move v4, v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    neg-int v0, v0

    .line 6
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    const/4 v1, 0x2

    .line 7
    iput v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->r:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    neg-int v1, v1

    .line 8
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    .line 9
    iput v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->r:I

    .line 10
    :goto_1
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    iget-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v2, v4, v1}, Lme/imid/swipebacklayout/lib/d;->X(Landroid/view/View;II)Z

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public u(Landroid/content/Context;F)V
    .locals 1

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f:Lme/imid/swipebacklayout/lib/d;

    invoke-virtual {v0, p1, p2}, Lme/imid/swipebacklayout/lib/d;->U(Landroid/content/Context;F)V

    return-void
.end method

.method public v(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->w(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public w(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 1
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2

    .line 3
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
