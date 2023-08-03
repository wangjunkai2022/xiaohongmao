.class public Lcom/facebook/drawee/generic/b;
.super Ljava/lang/Object;
.source "GenericDraweeHierarchyBuilder.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final t:I = 0x12c

.field public static final u:Lcom/facebook/drawee/drawable/s$c;

.field public static final v:Lcom/facebook/drawee/drawable/s$c;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:I

.field private c:F

.field private d:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private e:Lcom/facebook/drawee/drawable/s$c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private g:Lcom/facebook/drawee/drawable/s$c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private h:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private i:Lcom/facebook/drawee/drawable/s$c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private j:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:Lcom/facebook/drawee/drawable/s$c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private l:Lcom/facebook/drawee/drawable/s$c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private m:Landroid/graphics/Matrix;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private n:Landroid/graphics/PointF;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private o:Landroid/graphics/ColorFilter;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private p:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private r:Landroid/graphics/drawable/Drawable;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private s:Lcom/facebook/drawee/generic/RoundingParams;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/drawee/drawable/s$c;->h:Lcom/facebook/drawee/drawable/s$c;

    sput-object v0, Lcom/facebook/drawee/generic/b;->u:Lcom/facebook/drawee/drawable/s$c;

    .line 2
    sget-object v0, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    sput-object v0, Lcom/facebook/drawee/generic/b;->v:Lcom/facebook/drawee/drawable/s$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    .line 3
    invoke-direct {p0}, Lcom/facebook/drawee/generic/b;->t()V

    return-void
.end method

.method private a0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

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

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-static {v1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    const/16 v0, 0x12c

    .line 1
    iput v0, p0, Lcom/facebook/drawee/generic/b;->b:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/facebook/drawee/generic/b;->c:F

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 4
    sget-object v1, Lcom/facebook/drawee/generic/b;->u:Lcom/facebook/drawee/drawable/s$c;

    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 5
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->g:Lcom/facebook/drawee/drawable/s$c;

    .line 7
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 9
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->k:Lcom/facebook/drawee/drawable/s$c;

    .line 11
    sget-object v1, Lcom/facebook/drawee/generic/b;->v:Lcom/facebook/drawee/drawable/s$c;

    iput-object v1, p0, Lcom/facebook/drawee/generic/b;->l:Lcom/facebook/drawee/drawable/s$c;

    .line 12
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->m:Landroid/graphics/Matrix;

    .line 13
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->n:Landroid/graphics/PointF;

    .line 14
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->o:Landroid/graphics/ColorFilter;

    .line 15
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->p:Landroid/graphics/drawable/Drawable;

    .line 16
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->s:Lcom/facebook/drawee/generic/RoundingParams;

    return-void
.end method

.method public static u(Landroid/content/res/Resources;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    new-instance v0, Lcom/facebook/drawee/generic/b;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/generic/b;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method


# virtual methods
.method public A(F)Lcom/facebook/drawee/generic/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desiredAspectRatio"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/drawee/generic/b;->c:F

    return-object p0
.end method

.method public B(I)Lcom/facebook/drawee/generic/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fadeDuration"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/drawee/generic/b;->b:I

    return-object p0
.end method

.method public C(I)Lcom/facebook/drawee/generic/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public D(ILcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "failureImageScaleType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->i:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public E(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failureDrawable"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public F(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "failureDrawable",
            "failureImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->i:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public G(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failureImageScaleType"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->i:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public H(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlay"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public I(Ljava/util/List;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/facebook/drawee/generic/b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    return-object p0
.end method

.method public J(I)Lcom/facebook/drawee/generic/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public K(ILcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "placeholderImageScaleType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->e:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public L(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholderDrawable"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public M(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "placeholderDrawable",
            "placeholderImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->e:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public N(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholderImageScaleType"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->e:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public O(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 4
    iput-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0
.end method

.method public P(I)Lcom/facebook/drawee/generic/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public Q(ILcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "progressBarImageScaleType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->k:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public R(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressBarDrawable"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public S(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progressBarDrawable",
            "progressBarImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->k:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public T(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressBarImageScaleType"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->k:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public U(I)Lcom/facebook/drawee/generic/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public V(ILcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 1
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "retryImageScaleType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->g:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public W(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retryDrawable"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public X(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p2    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "retryDrawable",
            "retryImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/generic/b;->g:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public Y(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retryImageScaleType"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->g:Lcom/facebook/drawee/drawable/s$c;

    return-object p0
.end method

.method public Z(Lcom/facebook/drawee/generic/RoundingParams;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roundingParams"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->s:Lcom/facebook/drawee/generic/RoundingParams;

    return-object p0
.end method

.method public a()Lcom/facebook/drawee/generic/a;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/generic/b;->a0()V

    .line 2
    new-instance v0, Lcom/facebook/drawee/generic/a;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/generic/a;-><init>(Lcom/facebook/drawee/generic/b;)V

    return-object v0
.end method

.method public b()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->o:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public c()Landroid/graphics/PointF;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->n:Landroid/graphics/PointF;

    return-object v0
.end method

.method public d()Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->l:Lcom/facebook/drawee/drawable/s$c;

    return-object v0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/facebook/drawee/generic/b;->c:F

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/facebook/drawee/generic/b;->b:I

    return v0
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public i()Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->i:Lcom/facebook/drawee/drawable/s$c;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->q:Ljava/util/List;

    return-object v0
.end method

.method public k()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public l()Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->e:Lcom/facebook/drawee/drawable/s$c;

    return-object v0
.end method

.method public m()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->r:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public n()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public o()Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->k:Lcom/facebook/drawee/drawable/s$c;

    return-object v0
.end method

.method public p()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->a:Landroid/content/res/Resources;

    return-object v0
.end method

.method public q()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public r()Lcom/facebook/drawee/drawable/s$c;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->g:Lcom/facebook/drawee/drawable/s$c;

    return-object v0
.end method

.method public s()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/drawee/generic/b;->s:Lcom/facebook/drawee/generic/RoundingParams;

    return-object v0
.end method

.method public v()Lcom/facebook/drawee/generic/b;
    .locals 0

    invoke-direct {p0}, Lcom/facebook/drawee/generic/b;->t()V

    return-object p0
.end method

.method public w(Landroid/graphics/ColorFilter;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->o:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public x(Landroid/graphics/PointF;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/PointF;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusPoint"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->n:Landroid/graphics/PointF;

    return-object p0
.end method

.method public y(Lcom/facebook/drawee/drawable/s$c;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Lcom/facebook/drawee/drawable/s$c;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actualImageScaleType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->l:Lcom/facebook/drawee/drawable/s$c;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->m:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public z(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/generic/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/drawee/generic/b;->p:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
