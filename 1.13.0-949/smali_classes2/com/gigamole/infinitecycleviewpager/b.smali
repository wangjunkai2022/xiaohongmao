.class Lcom/gigamole/infinitecycleviewpager/b;
.super Ljava/lang/Object;
.source "InfiniteCycleManager.java"

# interfaces
.implements Lcom/gigamole/infinitecycleviewpager/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gigamole/infinitecycleviewpager/b$g;,
        Lcom/gigamole/infinitecycleviewpager/b$f;,
        Lcom/gigamole/infinitecycleviewpager/b$e;
    }
.end annotation


# static fields
.field private static final I:I = 0x3

.field private static final J:I = 0x1

.field protected static final K:I = 0x2

.field protected static final L:I = 0x0

.field protected static final M:Z = false

.field protected static final N:Z = true

.field private static final O:F = 0.55f

.field private static final P:F = 0.8f

.field private static final Q:I = 0x1e

.field private static final R:I = 0x32

.field private static final S:Z = true

.field private static final T:I = 0x1f4


# instance fields
.field private A:Z

.field private B:I

.field private C:Landroid/view/animation/Interpolator;

.field private D:Z

.field private E:Z

.field private final F:Landroid/os/Handler;

.field private final G:Ljava/lang/Runnable;

.field protected final H:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private a:Landroid/content/Context;

.field private b:Lcom/gigamole/infinitecycleviewpager/g;

.field private c:Landroid/view/View;

.field private d:Lcom/gigamole/infinitecycleviewpager/c;

.field private e:Lcom/gigamole/infinitecycleviewpager/b$f;

.field private f:Lcom/gigamole/infinitecycleviewpager/b$f;

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private final o:Landroid/graphics/Rect;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Lcom/gigamole/infinitecycleviewpager/e;

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gigamole/infinitecycleviewpager/g;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/gigamole/infinitecycleviewpager/b$f;->a:Lcom/gigamole/infinitecycleviewpager/b$f;

    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->e:Lcom/gigamole/infinitecycleviewpager/b$f;

    .line 3
    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->f:Lcom/gigamole/infinitecycleviewpager/b$f;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->o:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->z:Z

    .line 6
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->F:Landroid/os/Handler;

    .line 7
    new-instance v1, Lcom/gigamole/infinitecycleviewpager/b$a;

    invoke-direct {v1, p0}, Lcom/gigamole/infinitecycleviewpager/b$a;-><init>(Lcom/gigamole/infinitecycleviewpager/b;)V

    iput-object v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->G:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lcom/gigamole/infinitecycleviewpager/b$c;

    invoke-direct {v1, p0}, Lcom/gigamole/infinitecycleviewpager/b$c;-><init>(Lcom/gigamole/infinitecycleviewpager/b;)V

    iput-object v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->H:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 9
    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->a:Landroid/content/Context;

    .line 10
    instance-of p1, p2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;

    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    .line 11
    iput-object p2, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    .line 12
    move-object p1, p2

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->c:Landroid/view/View;

    .line 13
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/b;->X()Lcom/gigamole/infinitecycleviewpager/b$e;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/gigamole/infinitecycleviewpager/g;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    .line 14
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {p1, v1}, Lcom/gigamole/infinitecycleviewpager/g;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 15
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {p1, v0}, Lcom/gigamole/infinitecycleviewpager/g;->setClipChildren(Z)V

    .line 16
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {p1, v0}, Lcom/gigamole/infinitecycleviewpager/g;->setDrawingCacheEnabled(Z)V

    .line 17
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/gigamole/infinitecycleviewpager/g;->setWillNotCacheDrawing(Z)V

    .line 18
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {p1, v0}, Lcom/gigamole/infinitecycleviewpager/g;->setPageMargin(I)V

    .line 19
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/gigamole/infinitecycleviewpager/g;->setOffscreenPageLimit(I)V

    .line 20
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {p1, p2}, Lcom/gigamole/infinitecycleviewpager/g;->setOverScrollMode(I)V

    .line 21
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/b;->s0()V

    .line 22
    invoke-virtual {p0, p3}, Lcom/gigamole/infinitecycleviewpager/b;->p0(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic A(Lcom/gigamole/infinitecycleviewpager/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->m:Z

    return p0
.end method

.method static synthetic B(Lcom/gigamole/infinitecycleviewpager/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->m:Z

    return p1
.end method

.method static synthetic C(Lcom/gigamole/infinitecycleviewpager/b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic D(Lcom/gigamole/infinitecycleviewpager/b;)I
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->s:I

    return p0
.end method

.method static synthetic E(Lcom/gigamole/infinitecycleviewpager/b;I)I
    .locals 0

    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->s:I

    return p1
.end method

.method static synthetic F(Lcom/gigamole/infinitecycleviewpager/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->p:Z

    return p0
.end method

.method static synthetic G(Lcom/gigamole/infinitecycleviewpager/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->p:Z

    return p1
.end method

.method static synthetic H(Lcom/gigamole/infinitecycleviewpager/b;)F
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->h:F

    return p0
.end method

.method static synthetic I(Lcom/gigamole/infinitecycleviewpager/b;F)F
    .locals 0

    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->h:F

    return p1
.end method

.method static synthetic J(Lcom/gigamole/infinitecycleviewpager/b;F)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->i0(F)Z

    move-result p0

    return p0
.end method

.method static synthetic K(Lcom/gigamole/infinitecycleviewpager/b;)I
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->B:I

    return p0
.end method

.method static synthetic L(Lcom/gigamole/infinitecycleviewpager/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/b;->T()V

    return-void
.end method

.method static synthetic M(Lcom/gigamole/infinitecycleviewpager/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->F:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic N(Lcom/gigamole/infinitecycleviewpager/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->r:Z

    return p0
.end method

.method static synthetic O(Lcom/gigamole/infinitecycleviewpager/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->r:Z

    return p1
.end method

.method static synthetic P(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/e;
    .locals 0

    iget-object p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->t:Lcom/gigamole/infinitecycleviewpager/e;

    return-object p0
.end method

.method static synthetic Q(Lcom/gigamole/infinitecycleviewpager/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->U(Landroid/view/View;)V

    return-void
.end method

.method static synthetic R(Lcom/gigamole/infinitecycleviewpager/b;)I
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->j:I

    return p0
.end method

.method private S(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->o:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/b;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/gigamole/infinitecycleviewpager/b;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->o:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/b;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private T()V
    .locals 0

    return-void
.end method

.method private U(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/gigamole/infinitecycleviewpager/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->D:Z

    return p0
.end method

.method static synthetic c(Lcom/gigamole/infinitecycleviewpager/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->E:Z

    return p0
.end method

.method static synthetic d(Lcom/gigamole/infinitecycleviewpager/b;)I
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->i:I

    return p0
.end method

.method static synthetic e(Lcom/gigamole/infinitecycleviewpager/b;I)I
    .locals 0

    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->i:I

    return p1
.end method

.method static synthetic f(Lcom/gigamole/infinitecycleviewpager/b;)I
    .locals 2

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->i:I

    return v0
.end method

.method static synthetic g(Lcom/gigamole/infinitecycleviewpager/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    return p0
.end method

.method static synthetic h(Lcom/gigamole/infinitecycleviewpager/b;)F
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->w:F

    return p0
.end method

.method static synthetic i(Lcom/gigamole/infinitecycleviewpager/b;)F
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->y:F

    return p0
.end method

.method private i0(F)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic j(Lcom/gigamole/infinitecycleviewpager/b;)F
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->x:F

    return p0
.end method

.method static synthetic k(Lcom/gigamole/infinitecycleviewpager/b;)F
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->u:F

    return p0
.end method

.method static synthetic l(Lcom/gigamole/infinitecycleviewpager/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->z:Z

    return p0
.end method

.method static synthetic m(Lcom/gigamole/infinitecycleviewpager/b;)F
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->v:F

    return p0
.end method

.method static synthetic n(Lcom/gigamole/infinitecycleviewpager/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->k:Z

    return p0
.end method

.method static synthetic o(Lcom/gigamole/infinitecycleviewpager/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->k:Z

    return p1
.end method

.method static synthetic p(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/b$f;
    .locals 0

    iget-object p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->f:Lcom/gigamole/infinitecycleviewpager/b$f;

    return-object p0
.end method

.method static synthetic q(Lcom/gigamole/infinitecycleviewpager/b;Lcom/gigamole/infinitecycleviewpager/b$f;)Lcom/gigamole/infinitecycleviewpager/b$f;
    .locals 0

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->f:Lcom/gigamole/infinitecycleviewpager/b$f;

    return-object p1
.end method

.method static synthetic r(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/g;
    .locals 0

    iget-object p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    return-object p0
.end method

.method private r0()V
    .locals 2

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->x:F

    iget v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->w:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->y:F

    return-void
.end method

.method static synthetic s(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/b$f;
    .locals 0

    iget-object p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->e:Lcom/gigamole/infinitecycleviewpager/b$f;

    return-object p0
.end method

.method private s0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;

    const-string v1, "j"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    new-instance v1, Lcom/gigamole/infinitecycleviewpager/d;

    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/gigamole/infinitecycleviewpager/b;->C:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v2, v3}, Lcom/gigamole/infinitecycleviewpager/d;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 5
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/b;->B:I

    invoke-virtual {v1, v2}, Lcom/gigamole/infinitecycleviewpager/d;->a(I)V

    .line 6
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic t(Lcom/gigamole/infinitecycleviewpager/b;Lcom/gigamole/infinitecycleviewpager/b$f;)Lcom/gigamole/infinitecycleviewpager/b$f;
    .locals 0

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->e:Lcom/gigamole/infinitecycleviewpager/b$f;

    return-object p1
.end method

.method static synthetic u(Lcom/gigamole/infinitecycleviewpager/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->l:Z

    return p0
.end method

.method static synthetic v(Lcom/gigamole/infinitecycleviewpager/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->l:Z

    return p1
.end method

.method static synthetic w(Lcom/gigamole/infinitecycleviewpager/b;)F
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->g:F

    return p0
.end method

.method static synthetic x(Lcom/gigamole/infinitecycleviewpager/b;F)F
    .locals 0

    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->g:F

    return p1
.end method

.method static synthetic y(Lcom/gigamole/infinitecycleviewpager/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/gigamole/infinitecycleviewpager/b;->n:Z

    return p0
.end method

.method static synthetic z(Lcom/gigamole/infinitecycleviewpager/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->n:Z

    return p1
.end method


# virtual methods
.method public A0(F)V
    .locals 0

    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->u:F

    return-void
.end method

.method public B0(Lcom/gigamole/infinitecycleviewpager/e;)V
    .locals 0

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->t:Lcom/gigamole/infinitecycleviewpager/e;

    return-void
.end method

.method public C0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->B:I

    .line 2
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/b;->s0()V

    return-void
.end method

.method public D0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->E:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->D:Z

    .line 3
    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->E:Z

    .line 4
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->F:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->G:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->F:Landroid/os/Handler;

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->G:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public E0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->D:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->D:Z

    .line 3
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->F:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public V()F
    .locals 1

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->v:F

    return v0
.end method

.method public W()Lcom/gigamole/infinitecycleviewpager/c;
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->d:Lcom/gigamole/infinitecycleviewpager/c;

    return-object v0
.end method

.method public X()Lcom/gigamole/infinitecycleviewpager/b$e;
    .locals 1

    new-instance v0, Lcom/gigamole/infinitecycleviewpager/b$e;

    invoke-direct {v0, p0}, Lcom/gigamole/infinitecycleviewpager/b$e;-><init>(Lcom/gigamole/infinitecycleviewpager/b;)V

    return-object v0
.end method

.method public Y()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->C:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public Z()F
    .locals 1

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->x:F

    return v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->r:Z

    return-void
.end method

.method public a0()F
    .locals 1

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->w:F

    return v0
.end method

.method public b0()F
    .locals 1

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->u:F

    return v0
.end method

.method public c0()Lcom/gigamole/infinitecycleviewpager/e;
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->t:Lcom/gigamole/infinitecycleviewpager/e;

    return-object v0
.end method

.method public d0()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->d:Lcom/gigamole/infinitecycleviewpager/c;

    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v1}, Lcom/gigamole/infinitecycleviewpager/g;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gigamole/infinitecycleviewpager/c;->b(I)I

    move-result v0

    return v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public e0()I
    .locals 1

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->B:I

    return v0
.end method

.method public f0()I
    .locals 1

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->s:I

    return v0
.end method

.method public g0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->beginFakeDrag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gigamole/infinitecycleviewpager/g;->fakeDragBy(F)V

    .line 4
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->endFakeDrag()V

    :cond_1
    :goto_0
    return-void
.end method

.method public h0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->z:Z

    return v0
.end method

.method public j0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    return v0
.end method

.method public k0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->d:Lcom/gigamole/infinitecycleviewpager/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->r:Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/c;->notifyDataSetChanged()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/b;->o0()V

    return-void
.end method

.method public l0(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->m0(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public m0(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->D:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->p:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->S(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public n0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/b;->g0()V

    :cond_0
    return-void
.end method

.method public o0()V
    .locals 2

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    new-instance v1, Lcom/gigamole/infinitecycleviewpager/b$b;

    invoke-direct {v1, p0}, Lcom/gigamole/infinitecycleviewpager/b$b;-><init>(Lcom/gigamole/infinitecycleviewpager/b;)V

    invoke-interface {v0, v1}, Lcom/gigamole/infinitecycleviewpager/g;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public p0(Landroid/util/AttributeSet;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/gigamole/infinitecycleviewpager/f$l;->R3:[I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/gigamole/infinitecycleviewpager/f$l;->N0:[I

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->X3:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->T0:I

    :goto_1
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gigamole/infinitecycleviewpager/b;->A0(F)V

    .line 3
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->S3:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->O0:I

    :goto_2
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gigamole/infinitecycleviewpager/b;->u0(F)V

    .line 4
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->W3:I

    goto :goto_3

    :cond_4
    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->S0:I

    :goto_3
    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gigamole/infinitecycleviewpager/b;->z0(F)V

    .line 5
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->U3:I

    goto :goto_4

    :cond_5
    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->Q0:I

    :goto_4
    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gigamole/infinitecycleviewpager/b;->x0(F)V

    .line 6
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    if-eqz v0, :cond_6

    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->V3:I

    goto :goto_5

    :cond_6
    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->R0:I

    :goto_5
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gigamole/infinitecycleviewpager/b;->y0(Z)V

    .line 7
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->Y3:I

    goto :goto_6

    :cond_7
    sget v0, Lcom/gigamole/infinitecycleviewpager/f$l;->U0:I

    :goto_6
    const/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gigamole/infinitecycleviewpager/b;->C0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 8
    :try_start_1
    iget-boolean v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->A:Z

    if-eqz v1, :cond_8

    sget v1, Lcom/gigamole/infinitecycleviewpager/f$l;->T3:I

    goto :goto_7

    :cond_8
    sget v1, Lcom/gigamole/infinitecycleviewpager/f$l;->P0:I

    :goto_7
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_8

    .line 9
    :cond_9
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/b;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_8
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/gigamole/infinitecycleviewpager/b;->w0(Landroid/view/animation/Interpolator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catchall_0
    move-exception v1

    goto :goto_a

    :catch_0
    move-exception v1

    .line 11
    :try_start_3
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 12
    :goto_9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 13
    :goto_a
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/gigamole/infinitecycleviewpager/b;->w0(Landroid/view/animation/Interpolator;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public q0()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->q:Z

    .line 2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gigamole/infinitecycleviewpager/g;->setCurrentItem(I)V

    .line 3
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/b;->o0()V

    return-void
.end method

.method public t0(Landroidx/viewpager/widget/PagerAdapter;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->j:I

    .line 3
    new-instance v0, Lcom/gigamole/infinitecycleviewpager/c;

    invoke-direct {v0, p1}, Lcom/gigamole/infinitecycleviewpager/c;-><init>(Landroidx/viewpager/widget/PagerAdapter;)V

    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->d:Lcom/gigamole/infinitecycleviewpager/c;

    .line 4
    invoke-virtual {v0, p0}, Lcom/gigamole/infinitecycleviewpager/c;->c(Lcom/gigamole/infinitecycleviewpager/c$a;)V

    .line 5
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->d:Lcom/gigamole/infinitecycleviewpager/c;

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->d:Lcom/gigamole/infinitecycleviewpager/c;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/gigamole/infinitecycleviewpager/c;->c(Lcom/gigamole/infinitecycleviewpager/c$a;)V

    .line 8
    iput-object v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->d:Lcom/gigamole/infinitecycleviewpager/c;

    :cond_1
    return-object p1
.end method

.method public u0(F)V
    .locals 0

    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->v:F

    return-void
.end method

.method public v0(I)I
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->p:Z

    .line 2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/g;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 4
    iget-boolean v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->q:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->q:Z

    .line 6
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->d:Lcom/gigamole/infinitecycleviewpager/c;

    invoke-virtual {p1}, Lcom/gigamole/infinitecycleviewpager/c;->getCount()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    div-int/2addr p1, v0

    mul-int p1, p1, v0

    return p1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/b;->b:Lcom/gigamole/infinitecycleviewpager/g;

    invoke-interface {v1}, Lcom/gigamole/infinitecycleviewpager/g;->getCurrentItem()I

    move-result v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/b;->d0()I

    move-result p1

    sub-int/2addr v1, p1

    return v1

    :cond_2
    :goto_0
    return p1
.end method

.method public w0(Landroid/view/animation/Interpolator;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/gigamole/infinitecycleviewpager/b$g;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/gigamole/infinitecycleviewpager/b$g;-><init>(Lcom/gigamole/infinitecycleviewpager/b;Lcom/gigamole/infinitecycleviewpager/b$a;)V

    :cond_0
    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->C:Landroid/view/animation/Interpolator;

    .line 2
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/b;->s0()V

    return-void
.end method

.method public x0(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->x:F

    .line 2
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/b;->r0()V

    return-void
.end method

.method public y0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->z:Z

    return-void
.end method

.method public z0(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/b;->w:F

    .line 2
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/b;->r0()V

    return-void
.end method
