.class public Lcom/airbnb/lottie/h;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/h$q;,
        Lcom/airbnb/lottie/h$s;,
        Lcom/airbnb/lottie/h$r;
    }
.end annotation


# static fields
.field private static final u:Ljava/lang/String;

.field public static final v:I = 0x1

.field public static final w:I = 0x2

.field public static final x:I = -0x1


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private b:Lcom/airbnb/lottie/f;

.field private final c:Lcom/airbnb/lottie/utils/e;

.field private d:F

.field private e:Z

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/h$q;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/h$r;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private i:Lcom/airbnb/lottie/manager/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/airbnb/lottie/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/airbnb/lottie/manager/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field m:Lcom/airbnb/lottie/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field n:Lcom/airbnb/lottie/t;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Z

.field private p:Lcom/airbnb/lottie/model/layer/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/airbnb/lottie/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/h;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/h;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Lcom/airbnb/lottie/utils/e;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/e;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/airbnb/lottie/h;->d:F

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/airbnb/lottie/h;->e:Z

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/h;->f:Ljava/util/Set;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Lcom/airbnb/lottie/h$h;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/h$h;-><init>(Lcom/airbnb/lottie/h;)V

    iput-object v1, p0, Lcom/airbnb/lottie/h;->h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v2, 0xff

    .line 9
    iput v2, p0, Lcom/airbnb/lottie/h;->q:I

    const/4 v2, 0x0

    .line 10
    iput-boolean v2, p0, Lcom/airbnb/lottie/h;->t:Z

    .line 11
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/utils/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/model/layer/b;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    return-object p0
.end method

.method static synthetic b(Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/utils/e;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/layer/b;

    iget-object v1, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    .line 2
    invoke-static {v1}, Lcom/airbnb/lottie/parser/s;->a(Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v2}, Lcom/airbnb/lottie/f;->j()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/airbnb/lottie/model/layer/b;-><init>(Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/f;)V

    iput-object v0, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    return-void
.end method

.method private n()Landroid/content/Context;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private o()Lcom/airbnb/lottie/manager/a;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/h;->l:Lcom/airbnb/lottie/manager/a;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/airbnb/lottie/manager/a;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/h;->m:Lcom/airbnb/lottie/c;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/manager/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/airbnb/lottie/c;)V

    iput-object v0, p0, Lcom/airbnb/lottie/h;->l:Lcom/airbnb/lottie/manager/a;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->l:Lcom/airbnb/lottie/manager/a;

    return-object v0
.end method

.method private r()Lcom/airbnb/lottie/manager/b;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/h;->i:Lcom/airbnb/lottie/manager/b;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/h;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/manager/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput-object v1, p0, Lcom/airbnb/lottie/h;->i:Lcom/airbnb/lottie/manager/b;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->i:Lcom/airbnb/lottie/manager/b;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcom/airbnb/lottie/manager/b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/h;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/h;->k:Lcom/airbnb/lottie/d;

    iget-object v4, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    .line 6
    invoke-virtual {v4}, Lcom/airbnb/lottie/f;->i()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/lottie/manager/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/d;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/h;->i:Lcom/airbnb/lottie/manager/b;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->i:Lcom/airbnb/lottie/manager/b;

    return-object v0
.end method

.method private s0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->A()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    .line 4
    invoke-virtual {v2}, Lcom/airbnb/lottie/f;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private u(Landroid/graphics/Canvas;)F
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method


# virtual methods
.method public A()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/h;->d:F

    return v0
.end method

.method public B()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->m()F

    move-result v0

    return v0
.end method

.method public C()Lcom/airbnb/lottie/t;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/h;->n:Lcom/airbnb/lottie/t;

    return-object v0
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/h;->o()Lcom/airbnb/lottie/manager/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/manager/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/b;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/b;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public G()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->isRunning()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/h;->s:Z

    return v0
.end method

.method public I()Z
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/h;->o:Z

    return v0
.end method

.method public K(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->o()V

    return-void
.end method

.method public M()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$i;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/h$i;-><init>(Lcom/airbnb/lottie/h;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/h;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->y()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->p()V

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/airbnb/lottie/h;->e:Z

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->B()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->v()F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->t()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/h;->X(I)V

    :cond_4
    return-void
.end method

.method public N()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/a;->removeAllListeners()V

    return-void
.end method

.method public O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/a;->removeAllUpdateListeners()V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    iget-object v1, p0, Lcom/airbnb/lottie/h;->h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/utils/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public P(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/a;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public Q(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/a;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public R(Lcom/airbnb/lottie/model/d;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    if-nez v0, :cond_0

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    .line 2
    invoke-static {p1}, Lcom/airbnb/lottie/utils/d;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    new-instance v2, Lcom/airbnb/lottie/model/d;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/airbnb/lottie/model/d;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/airbnb/lottie/model/layer/a;->d(Lcom/airbnb/lottie/model/d;ILjava/util/List;Lcom/airbnb/lottie/model/d;)V

    return-object v0
.end method

.method public S()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$j;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/h$j;-><init>(Lcom/airbnb/lottie/h;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/h;->e:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->t()V

    :cond_1
    return-void
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->u()V

    return-void
.end method

.method public U(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/h;->s:Z

    return-void
.end method

.method public V(Lcom/airbnb/lottie/f;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/airbnb/lottie/h;->t:Z

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->i()V

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/h;->g()V

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/e;->v(Lcom/airbnb/lottie/f;)V

    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/h;->k0(F)V

    .line 8
    iget v0, p0, Lcom/airbnb/lottie/h;->d:F

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/h;->n0(F)V

    .line 9
    invoke-direct {p0}, Lcom/airbnb/lottie/h;->s0()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/h$r;

    .line 13
    invoke-interface {v1, p1}, Lcom/airbnb/lottie/h$r;->a(Lcom/airbnb/lottie/f;)V

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-boolean v0, p0, Lcom/airbnb/lottie/h;->r:Z

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/f;->x(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public W(Lcom/airbnb/lottie/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/h;->m:Lcom/airbnb/lottie/c;

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->l:Lcom/airbnb/lottie/manager/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/a;->d(Lcom/airbnb/lottie/c;)V

    :cond_0
    return-void
.end method

.method public X(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$d;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/h$d;-><init>(Lcom/airbnb/lottie/h;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/e;->w(F)V

    return-void
.end method

.method public Y(Lcom/airbnb/lottie/d;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/h;->k:Lcom/airbnb/lottie/d;

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->i:Lcom/airbnb/lottie/manager/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/b;->d(Lcom/airbnb/lottie/d;)V

    :cond_0
    return-void
.end method

.method public Z(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/airbnb/lottie/h;->j:Ljava/lang/String;

    return-void
.end method

.method public a0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$m;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/h$m;-><init>(Lcom/airbnb/lottie/h;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/e;->x(F)V

    return-void
.end method

.method public b0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$p;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/h$p;-><init>(Lcom/airbnb/lottie/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/f;->k(Ljava/lang/String;)Lcom/airbnb/lottie/model/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Lcom/airbnb/lottie/model/g;->b:F

    iget v0, v0, Lcom/airbnb/lottie/model/g;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/h;->a0(I)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/a;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public c0(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$n;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/h$n;-><init>(Lcom/airbnb/lottie/h;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->p()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->f()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/utils/g;->j(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/h;->a0(I)V

    return-void
.end method

.method public d(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public d0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/h$b;-><init>(Lcom/airbnb/lottie/h;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/utils/e;->y(FF)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/airbnb/lottie/h;->t:Z

    const-string v0, "Drawable#draw"

    .line 2
    invoke-static {v0}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/h;->d:F

    .line 5
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/h;->u(Landroid/graphics/Canvas;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v2

    if-lez v4, :cond_1

    .line 6
    iget v1, p0, Lcom/airbnb/lottie/h;->d:F

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    move v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v4, -0x1

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 8
    iget-object v3, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v3}, Lcom/airbnb/lottie/f;->b()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 9
    iget-object v6, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v6}, Lcom/airbnb/lottie/f;->b()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    mul-float v5, v3, v2

    mul-float v7, v6, v2

    .line 10
    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->A()F

    move-result v8

    mul-float v8, v8, v3

    sub-float/2addr v8, v5

    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->A()F

    move-result v3

    mul-float v3, v3, v6

    sub-float/2addr v3, v7

    .line 12
    invoke-virtual {p1, v8, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    invoke-virtual {p1, v1, v1, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/h;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 15
    iget-object v1, p0, Lcom/airbnb/lottie/h;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    iget-object v2, p0, Lcom/airbnb/lottie/h;->a:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/airbnb/lottie/h;->q:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/airbnb/lottie/model/layer/a;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 17
    invoke-static {v0}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)F

    if-lez v4, :cond_3

    .line 18
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public e(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/value/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/d;",
            "TT;",
            "Lcom/airbnb/lottie/value/j<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/h$f;-><init>(Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/value/j;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/d;->d()Lcom/airbnb/lottie/model/e;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/d;->d()Lcom/airbnb/lottie/model/e;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/airbnb/lottie/model/e;->c(Ljava/lang/Object;Lcom/airbnb/lottie/value/j;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/h;->R(Lcom/airbnb/lottie/model/d;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/d;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/d;->d()Lcom/airbnb/lottie/model/e;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/airbnb/lottie/model/e;->c(Ljava/lang/Object;Lcom/airbnb/lottie/value/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v1, p1

    :goto_1
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->invalidateSelf()V

    .line 10
    sget-object p1, Lcom/airbnb/lottie/m;->A:Ljava/lang/Float;

    if-ne p2, p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->x()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/h;->k0(F)V

    :cond_3
    return-void
.end method

.method public e0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$a;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/h$a;-><init>(Lcom/airbnb/lottie/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/f;->k(Ljava/lang/String;)Lcom/airbnb/lottie/model/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Lcom/airbnb/lottie/model/g;->b:F

    float-to-int p1, p1

    .line 5
    iget v0, v0, Lcom/airbnb/lottie/model/g;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/h;->d0(II)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/value/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/d;",
            "TT;",
            "Lcom/airbnb/lottie/value/l<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/h$g;

    invoke-direct {v0, p0, p3}, Lcom/airbnb/lottie/h$g;-><init>(Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/value/l;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/airbnb/lottie/h;->e(Lcom/airbnb/lottie/model/d;Ljava/lang/Object;Lcom/airbnb/lottie/value/j;)V

    return-void
.end method

.method public f0(FF)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/h$c;-><init>(Lcom/airbnb/lottie/h;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->p()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->f()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/utils/g;->j(FFF)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    .line 4
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->p()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->f()F

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/airbnb/lottie/utils/g;->j(FFF)F

    move-result p2

    float-to-int p2, p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/h;->d0(II)V

    return-void
.end method

.method public g0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$k;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/h$k;-><init>(Lcom/airbnb/lottie/h;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/e;->z(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/h;->q:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->A()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->A()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->cancel()V

    return-void
.end method

.method public h0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$o;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/h$o;-><init>(Lcom/airbnb/lottie/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/f;->k(Ljava/lang/String;)Lcom/airbnb/lottie/model/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Lcom/airbnb/lottie/model/g;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/h;->g0(I)V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find marker with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    .line 4
    iput-object v0, p0, Lcom/airbnb/lottie/h;->p:Lcom/airbnb/lottie/model/layer/b;

    .line 5
    iput-object v0, p0, Lcom/airbnb/lottie/h;->i:Lcom/airbnb/lottie/manager/b;

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->f()V

    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->invalidateSelf()V

    return-void
.end method

.method public i0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$l;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/h$l;-><init>(Lcom/airbnb/lottie/h;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->p()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->f()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/utils/g;->j(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/h;->g0(I)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/h;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/h;->t:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->G()Z

    move-result v0

    return v0
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/h;->o:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/h;->o:Z

    .line 3
    iget-object p1, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/h;->g()V

    :cond_1
    return-void
.end method

.method public j0(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/h;->r:Z

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/f;->x(Z)V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/h;->o:Z

    return v0
.end method

.method public k0(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h$e;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/h$e;-><init>(Lcom/airbnb/lottie/h;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    .line 3
    invoke-static {v0}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    iget-object v2, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v2}, Lcom/airbnb/lottie/f;->p()F

    move-result v2

    iget-object v3, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v3}, Lcom/airbnb/lottie/f;->f()F

    move-result v3

    invoke-static {v2, v3, p1}, Lcom/airbnb/lottie/utils/g;->j(FFF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/airbnb/lottie/utils/e;->w(F)V

    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/e;->b(Ljava/lang/String;)F

    return-void
.end method

.method public l()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->g()V

    return-void
.end method

.method public l0(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public m()Lcom/airbnb/lottie/f;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    return-object v0
.end method

.method public m0(I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/e;->setRepeatMode(I)V

    return-void
.end method

.method public n0(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/h;->d:F

    .line 2
    invoke-direct {p0}, Lcom/airbnb/lottie/h;->s0()V

    return-void
.end method

.method public o0(F)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/utils/e;->A(F)V

    return-void
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->i()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method p0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/h;->e:Z

    return-void
.end method

.method public q(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/h;->r()Lcom/airbnb/lottie/manager/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/manager/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public q0(Lcom/airbnb/lottie/t;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/h;->n:Lcom/airbnb/lottie/t;

    return-void
.end method

.method public r0(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/h;->r()Lcom/airbnb/lottie/manager/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context."

    .line 2
    invoke-static {p1}, Lcom/airbnb/lottie/utils/d;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/lottie/manager/b;->e(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->invalidateSelf()V

    return-object p1
.end method

.method public s()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/h;->q:I

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "Use addColorFilter instead."

    invoke-static {p1}, Lcom/airbnb/lottie/utils/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->M()V

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-virtual {p0}, Lcom/airbnb/lottie/h;->l()V

    return-void
.end method

.method public t()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->k()F

    move-result v0

    return v0
.end method

.method public t0()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->n:Lcom/airbnb/lottie/t;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->c()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public v()F
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->l()F

    move-result v0

    return v0
.end method

.method public w()Lcom/airbnb/lottie/q;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/h;->b:Lcom/airbnb/lottie/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->n()Lcom/airbnb/lottie/q;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public x()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/e;->h()F

    move-result v0

    return v0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->c:Lcom/airbnb/lottie/utils/e;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method
