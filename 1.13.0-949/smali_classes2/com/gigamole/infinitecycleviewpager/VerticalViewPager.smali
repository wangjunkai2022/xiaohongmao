.class public Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;
.super Landroid/view/ViewGroup;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$i;,
        Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;,
        Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;,
        Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$f;,
        Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;,
        Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$d;,
        Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$g;,
        Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;
    }
.end annotation


# static fields
.field private static final E2:I = 0x258

.field private static final F2:I = 0x19

.field private static final G2:I = 0x10

.field private static final H2:I = 0x190

.field private static final I2:[I

.field private static final J2:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final K2:Landroid/view/animation/Interpolator;

.field private static final L2:I = -0x1

.field private static final M2:I = 0x2

.field private static final N2:I = 0x0

.field private static final O2:I = 0x1

.field private static final P2:I = 0x2

.field private static final Q2:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$i;

.field public static final R2:I = 0x0

.field public static final S2:I = 0x1

.field public static final T2:I = 0x2

.field private static final g2:Ljava/lang/String; = "VerticalViewPager"

.field private static final p2:Z = false

.field private static final x2:Z = false

.field private static final y2:I = 0x1


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:I

.field private I:Landroid/view/VelocityTracker;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:J

.field private P:Landroidx/core/widget/EdgeEffectCompat;

.field private Q:Landroidx/core/widget/EdgeEffectCompat;

.field private R:Z

.field private S:Z

.field private T:Z

.field private T1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private U:I

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final V1:Ljava/lang/Runnable;

.field private W:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private a:I

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;",
            ">;"
        }
    .end annotation
.end field

.field private b1:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private b2:I

.field private final c:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

.field private final d:Landroid/graphics/Rect;

.field private e:Landroidx/viewpager/widget/PagerAdapter;

.field private f:I

.field private g:I

.field private g1:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$g;

.field private h:Landroid/os/Parcelable;

.field private i:Ljava/lang/ClassLoader;

.field private j:Landroid/widget/Scroller;

.field private k:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:I

.field private p:F

.field private p1:Landroidx/viewpager/widget/ViewPager$PageTransformer;

.field private q:F

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private x1:Ljava/lang/reflect/Method;

.field private y:Z

.field private y1:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I2:[I

    .line 2
    new-instance v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$a;

    invoke-direct {v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$a;-><init>()V

    sput-object v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->J2:Ljava/util/Comparator;

    .line 3
    new-instance v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$b;

    invoke-direct {v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$b;-><init>()V

    sput-object v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->K2:Landroid/view/animation/Interpolator;

    .line 4
    new-instance v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$i;

    invoke-direct {v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$i;-><init>()V

    sput-object v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q2:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    invoke-direct {p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;-><init>()V

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->c:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->d:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->g:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->h:Landroid/os/Parcelable;

    .line 7
    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->i:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 8
    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 9
    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->q:F

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->w:I

    .line 11
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    .line 12
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->R:Z

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->S:Z

    .line 14
    new-instance v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$c;

    invoke-direct {v0, p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$c;-><init>(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;)V

    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V1:Ljava/lang/Runnable;

    .line 15
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b2:I

    .line 16
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    .line 19
    new-instance p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    invoke-direct {p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;-><init>()V

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->c:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 20
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->d:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->g:I

    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->h:Landroid/os/Parcelable;

    .line 23
    iput-object p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->i:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 24
    iput p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 25
    iput p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->q:F

    const/4 p2, 0x1

    .line 26
    iput p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->w:I

    .line 27
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    .line 28
    iput-boolean p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->R:Z

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->S:Z

    .line 30
    new-instance p2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$c;

    invoke-direct {p2, p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$c;-><init>(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;)V

    iput-object p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V1:Ljava/lang/Runnable;

    .line 31
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b2:I

    .line 32
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y()V

    return-void
.end method

.method private A(FF)Z
    .locals 3

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->B:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->B:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private C(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 3
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    .line 5
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    .line 6
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private E(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iput-boolean v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T:Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v2, p1, v2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->B(IFI)V

    .line 4
    iget-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T:Z

    if-eqz p1, :cond_0

    return v2

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->w()Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result v3

    .line 8
    iget v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 9
    iget v6, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 10
    iget v3, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 11
    iput-boolean v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T:Z

    .line 12
    invoke-virtual {p0, v6, p1, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->B(IFI)V

    .line 13
    iget-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private G(F)Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    sub-float/2addr v0, p1

    .line 2
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 4
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result v0

    int-to-float v0, v0

    .line 5
    iget v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p:F

    mul-float v1, v1, v0

    .line 6
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->q:F

    mul-float v2, v2, v0

    .line 7
    iget-object v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 8
    iget-object v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 9
    iget v6, v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-eqz v6, :cond_0

    .line 10
    iget v1, v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    mul-float v1, v1, v0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 11
    :goto_0
    iget v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget-object v8, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 12
    iget v2, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    mul-float v2, v2, v0

    const/4 v7, 0x0

    :cond_1
    cmpg-float v5, p1, v1

    if-gez v5, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    .line 13
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P:Landroidx/core/widget/EdgeEffectCompat;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v4

    :cond_2
    move p1, v1

    goto :goto_1

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v7, :cond_4

    sub-float/2addr p1, v2

    .line 14
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q:Landroidx/core/widget/EdgeEffectCompat;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    move-result p1

    move v4, p1

    :cond_4
    move p1, v2

    .line 15
    :cond_5
    :goto_1
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->D:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->D:F

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 17
    invoke-direct {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E(I)Z

    return v4
.end method

.method private J(IIII)V
    .locals 6

    if-lez p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p2, v0

    mul-float p3, p3, p2

    float-to-int v2, p3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 6
    iget-object p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->getDuration()I

    move-result p2

    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->timePassed()I

    move-result p3

    sub-int v5, p2, p3

    .line 8
    iget p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    invoke-virtual {p0, p2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x(I)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget p2, p2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1

    .line 10
    :cond_0
    iget p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    invoke-virtual {p0, p2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x(I)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 11
    iget p2, p2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    iget p3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->q:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x0

    .line 14
    invoke-direct {p0, p2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method private K()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    .line 4
    iget-boolean v1, v1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->a:Z

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private M(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private N(IZIZ)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x(I)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result v2

    int-to-float v2, v2

    .line 3
    iget v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p:F

    iget v0, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    iget v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->q:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0, v1, v0, p3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T(III)V

    if-eqz p4, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->n(I)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 6
    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->n(I)V

    .line 7
    :cond_2
    invoke-direct {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j(Z)V

    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 9
    invoke-direct {p0, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private U()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y1:I

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T1:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T1:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T1:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T1:Ljava/util/ArrayList;

    sget-object v1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q2:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic b(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;)I
    .locals 0

    iget p0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    return p0
.end method

.method static synthetic d()[I
    .locals 1

    sget-object v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I2:[I

    return-object v0
.end method

.method private g(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;ILcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 4
    iget v3, p3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    .line 5
    iget v4, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-ge v3, v4, :cond_3

    .line 6
    iget v4, p3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    iget p3, p3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    const/4 p3, 0x0

    .line 7
    :goto_1
    iget v5, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    .line 8
    iget-object v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 9
    :goto_2
    iget v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 10
    iget-object v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    goto :goto_2

    .line 11
    :cond_1
    :goto_3
    iget v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-ge v3, v6, :cond_2

    .line 12
    iget-object v6, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 13
    :cond_2
    iput v4, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    .line 14
    iget v5, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v4, :cond_6

    .line 15
    iget-object v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 16
    iget p3, p3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    add-int/lit8 v3, v3, -0x1

    .line 17
    :goto_4
    iget v5, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    .line 18
    iget-object v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 19
    :goto_5
    iget v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 20
    iget-object v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    goto :goto_5

    .line 21
    :cond_4
    :goto_6
    iget v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-le v3, v6, :cond_5

    .line 22
    iget-object v6, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 23
    :cond_5
    iget v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 24
    iput p3, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 25
    :cond_6
    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 26
    iget v3, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    .line 27
    iget v4, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    add-int/lit8 v5, v4, -0x1

    if-nez v4, :cond_7

    move v6, v3

    goto :goto_7

    :cond_7
    const v6, -0x800001

    .line 28
    :goto_7
    iput v6, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p:F

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v4, v0, :cond_8

    .line 29
    iget v4, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v4, v3

    sub-float/2addr v4, v6

    goto :goto_8

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->q:F

    add-int/lit8 v4, p2, -0x1

    :goto_9
    if-ltz v4, :cond_b

    .line 30
    iget-object v7, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 31
    :goto_a
    iget v8, v7, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-le v5, v8, :cond_9

    .line 32
    iget-object v8, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v8, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v3, v5

    move v5, v9

    goto :goto_a

    .line 33
    :cond_9
    iget v9, v7, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v9, v2

    sub-float/2addr v3, v9

    .line 34
    iput v3, v7, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    if-nez v8, :cond_a

    .line 35
    iput v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p:F

    :cond_a
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 36
    :cond_b
    iget v3, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    iget v4, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 37
    iget p1, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 38
    iget-object v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 39
    :goto_c
    iget v5, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-ge p1, v5, :cond_c

    .line 40
    iget-object v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_c

    :cond_c
    if-ne v5, v0, :cond_d

    .line 41
    iget v5, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->q:F

    .line 42
    :cond_d
    iput v3, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    .line 43
    iget v4, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 44
    :cond_e
    iput-boolean v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->S:Z

    return-void
.end method

.method private getClientHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private j(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b2:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0, v2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 3
    iget-object v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    .line 6
    iget-object v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 7
    iget-object v6, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 9
    :cond_2
    iput-boolean v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v:Z

    const/4 v3, 0x0

    .line 10
    :goto_1
    iget-object v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 11
    iget-object v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 12
    iget-boolean v5, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->c:Z

    if-eqz v5, :cond_3

    .line 13
    iput-boolean v2, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->c:Z

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V1:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V1:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private l(IFII)I
    .locals 1

    .line 1
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->L:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->J:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2
    :cond_1
    iget p3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    int-to-float p1, p1

    add-float/2addr p1, p2

    add-float/2addr p1, p3

    float-to-int p1, p1

    .line 3
    :goto_1
    iget-object p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 4
    iget-object p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 5
    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 6
    iget p2, p2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget p3, p3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private m(IFI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->W:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b1:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_3
    return-void
.end method

.method private n(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->W:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b1:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method

.method private o(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->W:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b1:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_3
    return-void
.end method

.method private q(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroidx/core/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    .line 2
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y:Z

    .line 3
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b2:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b2:I

    .line 3
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p1:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-direct {p0, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->q(Z)V

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->o(I)V

    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->u:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->u:Z

    :cond_0
    return-void
.end method

.method private t(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 8
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 9
    check-cast p2, Landroid/view/ViewGroup;

    .line 10
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 11
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 12
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 13
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 14
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private w()Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 3
    iget v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 4
    :goto_2
    iget-object v10, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 5
    iget-object v10, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    if-nez v9, :cond_2

    .line 6
    iget v11, v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 7
    iget-object v10, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->c:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    .line 8
    iput v1, v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    .line 9
    iput v7, v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    .line 10
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v7}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-int/lit8 v8, v8, -0x1

    .line 11
    :cond_2
    iget v1, v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    .line 12
    iget v5, v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v5, v1

    add-float/2addr v5, v3

    if-nez v9, :cond_4

    cmpl-float v7, v2, v1

    if-ltz v7, :cond_3

    goto :goto_3

    :cond_3
    return-object v0

    :cond_4
    :goto_3
    cmpg-float v0, v2, v5

    if-ltz v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v8, v0, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    iget v7, v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    .line 15
    iget v5, v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-int/lit8 v8, v8, 0x1

    move-object v0, v10

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v0
.end method


# virtual methods
.method protected B(IFI)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->U:I

    const/4 v1, 0x0

    if-lez v0, :cond_5

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    .line 7
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 8
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    .line 9
    iget-boolean v9, v8, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->a:Z

    if-nez v9, :cond_0

    goto :goto_3

    .line 10
    :cond_0
    iget v8, v8, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->b:I

    and-int/lit8 v8, v8, 0x70

    const/16 v9, 0x10

    if-eq v8, v9, :cond_3

    const/16 v9, 0x30

    if-eq v8, v9, :cond_2

    const/16 v9, 0x50

    if-eq v8, v9, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    sub-int v8, v4, v3

    .line 11
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 12
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v3, v9

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v2

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_1
    move v10, v8

    move v8, v2

    move v2, v10

    :goto_2
    add-int/2addr v2, v0

    .line 15
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v2, v9

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_4
    move v2, v8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 17
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->m(IFI)V

    .line 18
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p1:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_7

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 22
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    .line 23
    iget-boolean v0, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->a:Z

    if-eqz v0, :cond_6

    goto :goto_5

    .line 24
    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 25
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p1:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    invoke-interface {v2, p3, v0}, Landroidx/viewpager/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T:Z

    return-void
.end method

.method D()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->O(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method F()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->O(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method H()V
    .locals 1

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    invoke-virtual {p0, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I(I)V

    return-void
.end method

.method I(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-eq v2, v1, :cond_1

    if-ge v2, v1, :cond_0

    const/16 v4, 0x82

    goto :goto_0

    :cond_0
    const/16 v4, 0x21

    .line 2
    :goto_0
    invoke-virtual {v0, v2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x(I)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v2

    .line 3
    iput v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 4
    :goto_1
    iget-object v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v1, :cond_2

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->U()V

    return-void

    .line 6
    :cond_2
    iget-boolean v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v:Z

    if-eqz v1, :cond_3

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->U()V

    return-void

    .line 8
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 9
    :cond_4
    iget-object v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 10
    iget v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->w:I

    .line 11
    iget v5, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    sub-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 12
    iget-object v7, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v7}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    .line 13
    iget v9, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 14
    iget v8, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->a:I

    if-ne v7, v8, :cond_21

    const/4 v8, 0x0

    .line 15
    :goto_2
    iget-object v9, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 16
    iget-object v9, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 17
    iget v10, v9, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget v11, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-lt v10, v11, :cond_5

    if-ne v10, v11, :cond_6

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_3
    if-nez v9, :cond_7

    if-lez v7, :cond_7

    .line 18
    iget v9, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    invoke-virtual {v0, v9, v8}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e(II)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v9

    :cond_7
    if-eqz v9, :cond_18

    add-int/lit8 v11, v8, -0x1

    if-ltz v11, :cond_8

    .line 19
    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    .line 20
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-gtz v13, :cond_9

    const/4 v15, 0x0

    goto :goto_5

    .line 21
    :cond_9
    iget v15, v9, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    sub-float v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    int-to-float v6, v13

    div-float/2addr v3, v6

    add-float/2addr v15, v3

    .line 22
    :goto_5
    iget v3, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x0

    :goto_6
    if-ltz v3, :cond_f

    cmpl-float v16, v6, v15

    if-ltz v16, :cond_b

    if-ge v3, v5, :cond_b

    if-nez v12, :cond_a

    goto :goto_8

    .line 23
    :cond_a
    iget v10, v12, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-ne v3, v10, :cond_e

    iget-boolean v10, v12, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->c:Z

    if-nez v10, :cond_e

    .line 24
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 25
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v12, v12, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v10, v0, v3, v12}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v8, v8, -0x1

    if-ltz v11, :cond_d

    .line 26
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    goto :goto_7

    :cond_b
    if-eqz v12, :cond_c

    .line 27
    iget v10, v12, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-ne v3, v10, :cond_c

    .line 28
    iget v10, v12, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v6, v10

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_d

    .line 29
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    goto :goto_7

    :cond_c
    add-int/lit8 v10, v11, 0x1

    .line 30
    invoke-virtual {v0, v3, v10}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e(II)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v10

    .line 31
    iget v10, v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    if-ltz v11, :cond_d

    .line 32
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    goto :goto_7

    :cond_d
    const/4 v10, 0x0

    :goto_7
    move-object v12, v10

    :cond_e
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 33
    :cond_f
    :goto_8
    iget v3, v9, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-int/lit8 v5, v8, 0x1

    cmpg-float v6, v3, v14

    if-gez v6, :cond_17

    .line 34
    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    :goto_9
    if-gtz v13, :cond_11

    const/4 v10, 0x0

    goto :goto_a

    .line 35
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v13

    div-float/2addr v10, v11

    add-float/2addr v10, v14

    .line 36
    :goto_a
    iget v11, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    :goto_b
    add-int/lit8 v11, v11, 0x1

    if-ge v11, v7, :cond_17

    cmpl-float v12, v3, v10

    if-ltz v12, :cond_14

    if-le v11, v1, :cond_14

    if-nez v6, :cond_12

    goto :goto_d

    .line 37
    :cond_12
    iget v12, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-ne v11, v12, :cond_16

    iget-boolean v12, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->c:Z

    if-nez v12, :cond_16

    .line 38
    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 39
    iget-object v12, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v6, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v12, v0, v11, v6}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 40
    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    goto :goto_c

    :cond_13
    const/4 v6, 0x0

    goto :goto_c

    :cond_14
    if-eqz v6, :cond_15

    .line 41
    iget v12, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-ne v11, v12, :cond_15

    .line 42
    iget v6, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    .line 43
    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    goto :goto_c

    .line 44
    :cond_15
    invoke-virtual {v0, v11, v5}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e(II)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 45
    iget v6, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float/2addr v3, v6

    .line 46
    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_13

    iget-object v6, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    :cond_16
    :goto_c
    goto :goto_b

    .line 47
    :cond_17
    :goto_d
    invoke-direct {v0, v9, v8, v2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->g(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;ILcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;)V

    .line 48
    :cond_18
    iget-object v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    iget v2, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-eqz v9, :cond_19

    iget-object v3, v9, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->a:Ljava/lang/Object;

    goto :goto_e

    :cond_19
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v1, v0, v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 49
    iget-object v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1c

    .line 51
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    .line 53
    iput v2, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->f:I

    .line 54
    iget-boolean v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->a:Z

    if-nez v6, :cond_1a

    iget v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->c:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1b

    .line 55
    invoke-virtual {v0, v3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v(Landroid/view/View;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 56
    iget v6, v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    iput v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->c:F

    .line 57
    iget v3, v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iput v3, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->e:I

    goto :goto_10

    :cond_1a
    const/4 v7, 0x0

    :cond_1b
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 58
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->U()V

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 61
    invoke-virtual {v0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->u(Landroid/view/View;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v3

    goto :goto_11

    :cond_1d
    const/4 v3, 0x0

    :goto_11
    if-eqz v3, :cond_1e

    .line 62
    iget v1, v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget v2, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-eq v1, v2, :cond_20

    :cond_1e
    const/4 v6, 0x0

    .line 63
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_20

    .line 64
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v(Landroid/view/View;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 66
    iget v2, v2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget v3, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-ne v2, v3, :cond_1f

    .line 67
    invoke-virtual {v1, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_13

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_20
    :goto_13
    return-void

    .line 68
    :cond_21
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    .line 69
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    :goto_14
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public L(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public O(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v:Z

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P(IZZ)V

    return-void
.end method

.method P(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q(IZZI)V

    return-void
.end method

.method Q(IZZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    .line 2
    iget p3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    invoke-direct {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 6
    :cond_3
    :goto_0
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->w:I

    .line 7
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 9
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    iput-boolean p3, v2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_5
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-eq v0, p1, :cond_6

    const/4 v1, 0x1

    .line 11
    :cond_6
    iget-boolean p3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->R:Z

    if-eqz p3, :cond_8

    .line 12
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-eqz v1, :cond_7

    .line 13
    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->n(I)V

    .line 14
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 15
    :cond_8
    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I(I)V

    .line 16
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->N(IZIZ)V

    :goto_2
    return-void

    .line 17
    :cond_9
    :goto_3
    invoke-direct {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method R(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b1:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 2
    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b1:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method S(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T(III)V

    return-void
.end method

.method T(III)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    sub-int v5, p1, v3

    sub-int v6, p2, v4

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    .line 5
    invoke-direct {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H()V

    .line 7
    invoke-direct {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollState(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollState(I)V

    .line 10
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result p1

    .line 11
    div-int/lit8 p2, p1, 0x2

    .line 12
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 13
    invoke-virtual {p0, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p(F)F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    .line 14
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 15
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 16
    :cond_2
    iget-object p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    iget p3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p2

    mul-float p1, p1, p2

    .line 17
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    :goto_0
    const/16 p2, 0x258

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 19
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 20
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-virtual {p0, v3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v(Landroid/view/View;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    iget v4, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-ne v4, v5, :cond_0

    .line 8
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 12
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v(Landroid/view/View;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget v2, v2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-ne v2, v3, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    .line 4
    iget-boolean v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->a:Z

    instance-of v2, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$d;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->a:Z

    .line 5
    iget-boolean v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->t:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->d:Z

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public beginFakeDrag()Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->N:Z

    .line 3
    invoke-direct {p0, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollState(I)V

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    iput v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->G:F

    .line 5
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    .line 9
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 11
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 12
    iput-wide v10, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->O:J

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 6
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 7
    invoke-direct {p0, v3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 10
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->s(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v(Landroid/view/View;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    iget v4, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 5
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    goto/16 :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p:F

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    iget-object v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 12
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    .line 18
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v3

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->q:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float v5, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 20
    iget-object v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 21
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 23
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method e(II)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;
    .locals 2

    .line 1
    new-instance v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    invoke-direct {v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;-><init>()V

    .line 2
    iput p1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    .line 3
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->a:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    if-ltz p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public endFakeDrag()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->N:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 3
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->K:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 4
    iget v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v:Z

    .line 6
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result v2

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    .line 8
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->w()Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v4

    .line 9
    iget v5, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 10
    iget v2, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    sub-float/2addr v3, v2

    iget v2, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    div-float/2addr v3, v2

    .line 11
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    iget v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->G:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 12
    invoke-direct {p0, v5, v3, v0, v2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l(IFII)I

    move-result v2

    .line 13
    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q(IZZI)V

    .line 14
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->r()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->N:Z

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_4

    :cond_0
    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    .line 3
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "VerticalViewPager"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_4
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x82

    const/16 v5, 0x21

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_8

    if-ne p1, v5, :cond_6

    .line 11
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->t(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 12
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->t(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_5

    if-lt v1, v2, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->F()Z

    move-result v0

    goto :goto_5

    .line 14
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_5
    move v2, v0

    goto :goto_7

    :cond_6
    if-ne p1, v4, :cond_c

    .line 15
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->t(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 16
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->d:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->t(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_7

    if-gt v1, v2, :cond_7

    .line 17
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->D()Z

    move-result v0

    goto :goto_5

    .line 18
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_5

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_6

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 19
    :cond_a
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->D()Z

    move-result v2

    goto :goto_7

    .line 20
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->F()Z

    move-result v2

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 21
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public fakeDragBy(F)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->N:Z

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 4
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result p1

    int-to-float p1, p1

    .line 5
    iget v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p:F

    mul-float v1, v1, p1

    .line 6
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->q:F

    mul-float v2, v2, p1

    .line 7
    iget-object v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 8
    iget-object v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 9
    iget v5, v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-eqz v5, :cond_0

    .line 10
    iget v1, v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    mul-float v1, v1, p1

    .line 11
    :cond_0
    iget v3, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget-object v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_1

    .line 12
    iget v2, v4, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    mul-float v2, v2, p1

    :cond_1
    cmpg-float p1, v0, v1

    if-gez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    cmpl-float p1, v0, v2

    if-lez p1, :cond_3

    move v0, v2

    .line 13
    :cond_3
    :goto_0
    iget p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 15
    invoke-direct {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E(I)Z

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 17
    iget-wide v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->O:J

    const/4 v6, 0x2

    const/4 v7, 0x0

    iget v8, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->T1:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    iget p1, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->f:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->w:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l:I

    return v0
.end method

.method protected h(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 6
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p5, v4

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v8, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v11, v6, v8

    move-object v6, p0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->h(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 8
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->N:Z

    return v0
.end method

.method k()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 2
    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->a:I

    .line 3
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->w:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5
    :goto_1
    iget-object v7, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 6
    iget-object v7, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 7
    iget-object v8, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v9, v7, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 8
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_2

    .line 9
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v6, 0x1

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    iget v8, v7, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget-object v9, v7, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 11
    iget v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    iget v7, v7, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-ne v1, v7, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_3
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    .line 13
    :cond_4
    iget v9, v7, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-eq v9, v8, :cond_6

    .line 14
    iget v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-ne v9, v1, :cond_5

    move v2, v8

    .line 15
    :cond_5
    iput v8, v7, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v5, v3

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    .line 16
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 17
    :cond_8
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    sget-object v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->J2:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_b

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_a

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    .line 21
    iget-boolean v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->a:Z

    if-nez v6, :cond_9

    const/4 v6, 0x0

    .line 22
    iput v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->c:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 23
    :cond_a
    invoke-virtual {p0, v2, v4, v3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P(IZZ)V

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_b
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->R:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->V1:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 5
    iget v3, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 6
    iget-object v5, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 7
    iget v7, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    .line 8
    iget-object v8, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 9
    iget v9, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    .line 10
    iget-object v10, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    iget v10, v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    :goto_0
    if-ge v9, v10, :cond_4

    .line 11
    :goto_1
    iget v11, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 12
    iget-object v5, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    goto :goto_1

    :cond_0
    if-ne v9, v11, :cond_1

    .line 13
    iget v7, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    iget v11, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v7, v11

    add-float/2addr v7, v3

    goto :goto_2

    .line 14
    :cond_1
    iget-object v11, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v11, v9}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float v12, v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    .line 15
    :goto_2
    iget v11, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l:I

    int-to-float v13, v11

    add-float/2addr v13, v12

    int-to-float v14, v1

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    .line 16
    iget-object v13, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->m:Landroid/graphics/drawable/Drawable;

    iget v14, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->n:I

    float-to-int v15, v12

    move/from16 v16, v3

    iget v3, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->o:I

    int-to-float v11, v11

    add-float/2addr v11, v12

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v11, v11, v17

    float-to-int v11, v11

    invoke-virtual {v13, v14, v15, v3, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    iget-object v3, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->m:Landroid/graphics/drawable/Drawable;

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v11, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v12, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-boolean v2, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    if-eqz v2, :cond_1

    return v9

    .line 3
    :cond_1
    iget-boolean v2, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y:Z

    if-eqz v2, :cond_2

    return v8

    :cond_2
    const/4 v2, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 4
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->C(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 5
    :cond_4
    iget v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    if-ne v0, v1, :cond_5

    goto/16 :goto_2

    .line 6
    :cond_5
    invoke-static {v7, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 7
    invoke-static {v7, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 8
    iget v1, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    sub-float v1, v10, v1

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 10
    invoke-static {v7, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    .line 11
    iget v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->F:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_6

    .line 12
    iget v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    invoke-direct {p0, v0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->A(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v12

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->h(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    iput v12, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->D:F

    .line 14
    iput v10, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    .line 15
    iput-boolean v9, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y:Z

    return v8

    .line 16
    :cond_6
    iget v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->C:I

    int-to-float v1, v0

    cmpl-float v1, v11, v1

    if-lez v1, :cond_8

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v11, v11, v1

    cmpl-float v1, v11, v13

    if-lez v1, :cond_8

    .line 17
    iput-boolean v9, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    .line 18
    invoke-direct {p0, v9}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->M(Z)V

    .line 19
    invoke-direct {p0, v9}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollState(I)V

    .line 20
    iget v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->G:F

    iget v1, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->C:I

    int-to-float v1, v1

    if-lez v14, :cond_7

    add-float/2addr v0, v1

    goto :goto_0

    :cond_7
    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    .line 21
    iput v12, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->D:F

    .line 22
    invoke-direct {p0, v9}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    :cond_8
    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_9

    .line 23
    iput-boolean v9, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y:Z

    .line 24
    :cond_9
    :goto_1
    iget-boolean v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    if-eqz v0, :cond_c

    .line 25
    invoke-direct {p0, v10}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->G(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 27
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->F:F

    iput v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->D:F

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->G:F

    iput v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    .line 29
    invoke-static {v7, v8}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    .line 30
    iput-boolean v8, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y:Z

    .line 31
    iget-object v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 32
    iget v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b2:I

    if-ne v0, v2, :cond_b

    iget-object v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    iget-object v1, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->M:I

    if-le v0, v1, :cond_b

    .line 33
    iget-object v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 34
    iput-boolean v8, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v:Z

    .line 35
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H()V

    .line 36
    iput-boolean v9, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    .line 37
    invoke-direct {p0, v9}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->M(Z)V

    .line 38
    invoke-direct {p0, v9}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollState(I)V

    goto :goto_2

    .line 39
    :cond_b
    invoke-direct {p0, v8}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j(Z)V

    .line 40
    iput-boolean v8, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    .line 41
    :cond_c
    :goto_2
    iget-object v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    .line 42
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    .line 43
    :cond_d
    iget-object v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 44
    iget-boolean v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    return v0

    .line 45
    :cond_e
    :goto_3
    iput-boolean v8, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    .line 46
    iput-boolean v8, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y:Z

    .line 47
    iput v1, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    .line 48
    iget-object v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 49
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    :cond_f
    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v10, v1, :cond_7

    .line 7
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 8
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 9
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    .line 10
    iget-boolean v14, v12, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->a:Z

    if-eqz v14, :cond_6

    .line 11
    iget v12, v12, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->b:I

    and-int/lit8 v14, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v4

    goto :goto_2

    :cond_0
    sub-int v14, v2, v6

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 13
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_2
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v5

    goto :goto_4

    :cond_3
    sub-int v12, v3, v7

    .line 16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 17
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_4

    .line 19
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_3
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_4
    add-int/2addr v5, v8

    .line 20
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v3, v5

    sub-int/2addr v3, v7

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v1, :cond_a

    .line 21
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 22
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v12, :cond_9

    .line 23
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    .line 24
    iget-boolean v10, v9, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->a:Z

    if-nez v10, :cond_9

    invoke-virtual {v0, v8}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v(Landroid/view/View;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v10

    if-eqz v10, :cond_9

    int-to-float v13, v3

    .line 25
    iget v10, v10, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    mul-float v10, v10, v13

    float-to-int v10, v10

    add-int/2addr v10, v5

    .line 26
    iget-boolean v14, v9, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->d:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 27
    iput-boolean v14, v9, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->d:Z

    sub-int v14, v2, v4

    sub-int/2addr v14, v6

    const/high16 v15, 0x40000000    # 2.0f

    .line 28
    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 29
    iget v9, v9, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->c:F

    mul-float v13, v13, v9

    float-to-int v9, v13

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 30
    invoke-virtual {v8, v14, v9}, Landroid/view/View;->measure(II)V

    .line 31
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v8, v4, v10, v9, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 32
    :cond_a
    iput v4, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->n:I

    sub-int/2addr v2, v6

    .line 33
    iput v2, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->o:I

    .line 34
    iput v11, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->U:I

    .line 35
    iget-boolean v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->R:Z

    if-eqz v1, :cond_b

    .line 36
    iget v1, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->N(IZIZ)V

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 37
    :goto_6
    iput-boolean v2, v0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->R:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 3
    div-int/lit8 p2, p1, 0xa

    .line 4
    iget v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->A:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->B:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p1, v1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v3, :cond_b

    .line 10
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    if-eqz v3, :cond_b

    .line 11
    iget-boolean v7, v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->a:Z

    if-eqz v7, :cond_b

    .line 12
    iget v7, v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x1

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_5

    :cond_5
    :goto_4
    const/high16 v9, -0x80000000

    .line 13
    :goto_5
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_6

    :cond_6
    move v10, p2

    :goto_6
    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_7

    :cond_7
    move v10, p2

    .line 14
    :goto_7
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v12, :cond_9

    if-eq v3, v11, :cond_8

    goto :goto_8

    :cond_8
    move v3, p1

    goto :goto_8

    :cond_9
    move v3, p1

    move v5, v9

    .line 15
    :goto_8
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 16
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 17
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    .line 18
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p1, v3

    goto :goto_9

    :cond_a
    if-eqz v4, :cond_b

    .line 19
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p2, v3

    :cond_b
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_c
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->r:I

    .line 21
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->s:I

    .line 22
    iput-boolean v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->t:Z

    .line 23
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H()V

    .line 24
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->t:Z

    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_a
    if-ge v0, p2, :cond_f

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_e

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;

    if-eqz v2, :cond_d

    .line 29
    iget-boolean v4, v2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->a:Z

    if-nez v4, :cond_e

    :cond_d
    int-to-float v4, p1

    .line 30
    iget v2, v2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$LayoutParams;->c:F

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 31
    iget v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->r:I

    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    :goto_0
    if-eq v0, v3, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 4
    invoke-virtual {p0, v5}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v(Landroid/view/View;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5
    iget v6, v6, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget v7, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    if-ne v6, v7, :cond_1

    .line 6
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 7
    iget p1, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P(IZZ)V

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;->position:I

    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->g:I

    .line 9
    iget-object v0, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->h:Landroid/os/Parcelable;

    .line 10
    iget-object p1, p1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->i:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    iput v0, v1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;->position:I

    .line 4
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    .line 2
    iget p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l:I

    invoke-direct {p0, p2, p4, p1, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->J(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->N:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_b

    const/4 v3, -0x1

    if-eq v0, v1, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_2

    .line 8
    :cond_4
    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->C(Landroid/view/MotionEvent;)V

    .line 9
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    goto/16 :goto_2

    .line 10
    :cond_5
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 11
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 12
    iput v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    .line 13
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    goto/16 :goto_2

    .line 14
    :cond_6
    iget-boolean p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    if-eqz p1, :cond_c

    .line 15
    iget p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->N(IZIZ)V

    .line 16
    iput v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    .line 17
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->r()V

    .line 18
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    goto/16 :goto_1

    .line 19
    :cond_7
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    if-nez v0, :cond_9

    .line 20
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 21
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 22
    iget v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 23
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 24
    iget v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->D:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 25
    iget v6, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->C:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_9

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 26
    iput-boolean v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    .line 27
    invoke-direct {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->M(Z)V

    .line 28
    iget v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->G:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_8

    iget v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->C:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->C:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    .line 29
    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->D:F

    .line 30
    invoke-direct {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollState(I)V

    .line 31
    invoke-direct {p0, v1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setScrollingCacheEnabled(Z)V

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 33
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 34
    :cond_9
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    if-eqz v0, :cond_c

    .line 35
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 36
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 37
    invoke-direct {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->G(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_2

    .line 38
    :cond_a
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x:Z

    if-eqz v0, :cond_c

    .line 39
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->I:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 40
    iget v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->K:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 41
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    invoke-static {v0, v2}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 42
    iput-boolean v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v:Z

    .line 43
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result v2

    .line 44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    .line 45
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->w()Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object v5

    .line 46
    iget v6, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    .line 47
    iget v2, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->e:F

    sub-float/2addr v4, v2

    iget v2, v5, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->d:F

    div-float/2addr v4, v2

    .line 48
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 49
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 50
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->G:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 51
    invoke-direct {p0, v6, v4, v0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l(IFII)I

    move-result p1

    .line 52
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q(IZZI)V

    .line 53
    iput v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    .line 54
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->r()V

    .line 55
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    :goto_1
    or-int v2, p1, v0

    goto :goto_2

    .line 56
    :cond_b
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 57
    iput-boolean v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v:Z

    .line 58
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H()V

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->F:F

    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->D:F

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->G:F

    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->E:F

    .line 61
    invoke-static {p1, v2}, Landroidx/core/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H:I

    :cond_c
    :goto_2
    if-eqz v2, :cond_d

    .line 62
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_d
    return v1

    :cond_e
    :goto_3
    return v2
.end method

.method p(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->t:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public s(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroidx/core/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Landroidx/core/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p0, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x42

    .line 7
    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    .line 8
    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->k:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 6
    iget-object v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    iget v4, v2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    iget-object v2, v2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 8
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->K()V

    .line 10
    iput v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->f:I

    .line 11
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    .line 13
    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    .line 14
    iput v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->a:I

    if-eqz p1, :cond_5

    .line 15
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->k:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 16
    new-instance v2, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;

    invoke-direct {v2, p0, v3}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;-><init>(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$a;)V

    iput-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->k:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;

    .line 17
    :cond_2
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->k:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$h;

    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 18
    iput-boolean v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v:Z

    .line 19
    iget-boolean v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->R:Z

    const/4 v4, 0x1

    .line 20
    iput-boolean v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->R:Z

    .line 21
    iget-object v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->a:I

    .line 22
    iget v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->g:I

    if-ltz v5, :cond_3

    .line 23
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v5, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->h:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->i:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 24
    iget v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->g:I

    invoke-virtual {p0, v2, v1, v4}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P(IZZ)V

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->g:I

    .line 26
    iput-object v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->h:Landroid/os/Parcelable;

    .line 27
    iput-object v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->i:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 28
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H()V

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 30
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->g1:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$g;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    .line 31
    invoke-interface {v1, v0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$g;->a(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    :cond_6
    return-void
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x1:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const-string v2, "VerticalViewPager"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v4, "setChildrenDrawingOrderEnabled"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x1:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Can\'t find setChildrenDrawingOrderEnabled"

    .line 3
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->x1:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Error changing children drawing order"

    .line 5
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v:Z

    .line 2
    iget-boolean v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->R:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P(IZZ)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VerticalViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 2
    :cond_0
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->w:I

    if-eq p1, v0, :cond_1

    .line 3
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->w:I

    .line 4
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H()V

    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$g;)V
    .locals 0

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->g1:Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$g;

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->W:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l:I

    .line 2
    iput p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->l:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 4
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->J(IIII)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p1:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 2
    :goto_2
    iput-object p2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p1:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    .line 3
    invoke-virtual {p0, v2}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    .line 4
    :cond_3
    iput v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y1:I

    goto :goto_3

    .line 5
    :cond_4
    iput v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->y1:I

    :goto_3
    if-eqz v3, :cond_5

    .line 6
    invoke-virtual {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->H()V

    :cond_5
    return-void
.end method

.method u(Landroid/view/View;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 2
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->v(Landroid/view/View;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    move-result-object p1

    return-object p1
.end method

.method v(Landroid/view/View;)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 3
    iget-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, v1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->m:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method x(I)Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;

    .line 3
    iget v2, v1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$e;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method y()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->K2:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->j:Landroid/widget/Scroller;

    .line 6
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 8
    invoke-static {v2}, Landroidx/core/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v4

    iput v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->C:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 9
    iput v4, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->J:I

    .line 10
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->K:I

    .line 11
    new-instance v2, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->P:Landroidx/core/widget/EdgeEffectCompat;

    .line 12
    new-instance v2, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->Q:Landroidx/core/widget/EdgeEffectCompat;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 13
    iput v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->L:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 14
    iput v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->M:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    .line 15
    iput v1, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->A:I

    .line 16
    new-instance v1, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$f;

    invoke-direct {v1, p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager$f;-><init>(Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 17
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 18
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public z(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->e:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->getClientHeight()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 4
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->p:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    .line 5
    iget v0, p0, Lcom/gigamole/infinitecycleviewpager/VerticalViewPager;->q:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
