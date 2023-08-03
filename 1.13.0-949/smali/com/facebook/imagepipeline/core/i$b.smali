.class public Lcom/facebook/imagepipeline/core/i$b;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private A:Lcom/facebook/imagepipeline/decoder/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private B:I

.field private final C:Lcom/facebook/imagepipeline/core/k$b;

.field private D:Z

.field private E:Ll0/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private F:Lm1/a;

.field private G:Lcom/facebook/imagepipeline/cache/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private H:Lcom/facebook/imagepipeline/cache/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private I:Lcom/facebook/common/executors/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private J:Lcom/facebook/imagepipeline/cache/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private a:Landroid/graphics/Bitmap$Config;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private b:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:Lcom/facebook/imagepipeline/cache/j$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "Lcom/facebook/cache/common/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private d:Lcom/facebook/imagepipeline/cache/u$a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/cache/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final f:Landroid/content/Context;

.field private g:Z

.field private h:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private i:Lcom/facebook/imagepipeline/core/f;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private j:Lcom/facebook/imagepipeline/cache/q;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private l:Ls1/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private m:Ljava/lang/Integer;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private n:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private o:Lcom/facebook/cache/disk/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private p:Lcom/facebook/common/memory/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private q:Ljava/lang/Integer;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private r:Lcom/facebook/imagepipeline/producers/l0;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private s:Lcom/facebook/imagepipeline/bitmaps/f;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private t:Lcom/facebook/imagepipeline/memory/e0;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private u:Lcom/facebook/imagepipeline/decoder/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lq1/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lq1/e;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private x:Z

.field private y:Lcom/facebook/cache/disk/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private z:Lcom/facebook/imagepipeline/core/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/i$b;->g:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i$b;->m:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i$b;->q:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/i$b;->x:Z

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/facebook/imagepipeline/core/i$b;->B:I

    .line 8
    new-instance v1, Lcom/facebook/imagepipeline/core/k$b;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/k$b;-><init>(Lcom/facebook/imagepipeline/core/i$b;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/i$b;->C:Lcom/facebook/imagepipeline/core/k$b;

    .line 9
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/i$b;->D:Z

    .line 10
    new-instance v0, Lm1/b;

    invoke-direct {v0}, Lm1/b;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i$b;->F:Lm1/a;

    .line 11
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->f:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/i$b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/u;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->H:Lcom/facebook/imagepipeline/cache/u;

    return-object p0
.end method

.method static synthetic B(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/executors/g;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->I:Lcom/facebook/common/executors/g;

    return-object p0
.end method

.method static synthetic C(Lcom/facebook/imagepipeline/core/i$b;)Ls1/d;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->l:Ls1/d;

    return-object p0
.end method

.method static synthetic D(Lcom/facebook/imagepipeline/core/i$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->q:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic E(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/u$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->d:Lcom/facebook/imagepipeline/cache/u$a;

    return-object p0
.end method

.method static synthetic F(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/j$b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->c:Lcom/facebook/imagepipeline/cache/j$b;

    return-object p0
.end method

.method static synthetic G(Lcom/facebook/imagepipeline/core/i$b;)Landroid/graphics/Bitmap$Config;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->a:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic H(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/g;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->e:Lcom/facebook/imagepipeline/cache/g;

    return-object p0
.end method

.method static synthetic I(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/core/g;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->z:Lcom/facebook/imagepipeline/core/g;

    return-object p0
.end method

.method static synthetic J(Lcom/facebook/imagepipeline/core/i$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/i$b;->g:Z

    return p0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/core/k$b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->C:Lcom/facebook/imagepipeline/core/k$b;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/internal/m;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->h:Lcom/facebook/common/internal/m;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/q;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->j:Lcom/facebook/imagepipeline/cache/q;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/decoder/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->k:Lcom/facebook/imagepipeline/decoder/b;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/core/i$b;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->m:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/internal/m;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->n:Lcom/facebook/common/internal/m;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/cache/disk/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->o:Lcom/facebook/cache/disk/c;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/memory/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->p:Lcom/facebook/common/memory/c;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/core/i$b;)I
    .locals 0

    iget p0, p0, Lcom/facebook/imagepipeline/core/i$b;->B:I

    return p0
.end method

.method static synthetic j(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/producers/l0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->r:Lcom/facebook/imagepipeline/producers/l0;

    return-object p0
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->s:Lcom/facebook/imagepipeline/bitmaps/f;

    return-object p0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/common/internal/m;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->b:Lcom/facebook/common/internal/m;

    return-object p0
.end method

.method static synthetic m(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/memory/e0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->t:Lcom/facebook/imagepipeline/memory/e0;

    return-object p0
.end method

.method static synthetic n(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/decoder/d;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->u:Lcom/facebook/imagepipeline/decoder/d;

    return-object p0
.end method

.method static synthetic o(Lcom/facebook/imagepipeline/core/i$b;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->v:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic p(Lcom/facebook/imagepipeline/core/i$b;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->w:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic q(Lcom/facebook/imagepipeline/core/i$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/i$b;->x:Z

    return p0
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/cache/disk/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->y:Lcom/facebook/cache/disk/c;

    return-object p0
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/decoder/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->A:Lcom/facebook/imagepipeline/decoder/c;

    return-object p0
.end method

.method static synthetic t(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/core/f;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->i:Lcom/facebook/imagepipeline/core/f;

    return-object p0
.end method

.method static synthetic u(Lcom/facebook/imagepipeline/core/i$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/i$b;->D:Z

    return p0
.end method

.method static synthetic v(Lcom/facebook/imagepipeline/core/i$b;)Ll0/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->E:Ll0/a;

    return-object p0
.end method

.method static synthetic w(Lcom/facebook/imagepipeline/core/i$b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic x(Lcom/facebook/imagepipeline/core/i$b;)Lm1/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->F:Lm1/a;

    return-object p0
.end method

.method static synthetic y(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/u;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->G:Lcom/facebook/imagepipeline/cache/u;

    return-object p0
.end method

.method static synthetic z(Lcom/facebook/imagepipeline/core/i$b;)Lcom/facebook/imagepipeline/cache/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/i$b;->J:Lcom/facebook/imagepipeline/cache/b;

    return-object p0
.end method


# virtual methods
.method public K()Lcom/facebook/imagepipeline/core/i;
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/core/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/i;-><init>(Lcom/facebook/imagepipeline/core/i$b;Lcom/facebook/imagepipeline/core/i$a;)V

    return-object v0
.end method

.method public L()Lcom/facebook/imagepipeline/core/k$b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i$b;->C:Lcom/facebook/imagepipeline/core/k$b;

    return-object v0
.end method

.method public M()Lcom/facebook/imagepipeline/cache/b;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i$b;->J:Lcom/facebook/imagepipeline/cache/b;

    return-object v0
.end method

.method public N()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i$b;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public O()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i$b;->q:Ljava/lang/Integer;

    return-object v0
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/i$b;->D:Z

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/i$b;->g:Z

    return v0
.end method

.method public R(Lcom/facebook/imagepipeline/cache/u;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/cache/u;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapMemoryCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/i$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->G:Lcom/facebook/imagepipeline/cache/u;

    return-object p0
.end method

.method public S(Lcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapMemoryCacheEntryStateObserver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "Lcom/facebook/cache/common/c;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/i$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->c:Lcom/facebook/imagepipeline/cache/j$b;

    return-object p0
.end method

.method public T(Lcom/facebook/imagepipeline/cache/b;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/cache/b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapMemoryCacheFactory"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->J:Lcom/facebook/imagepipeline/cache/b;

    return-object p0
.end method

.method public U(Lcom/facebook/common/internal/m;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapMemoryCacheParamsSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/i$b;"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/internal/m;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->b:Lcom/facebook/common/internal/m;

    return-object p0
.end method

.method public V(Lcom/facebook/imagepipeline/cache/u$a;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimStrategy"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->d:Lcom/facebook/imagepipeline/cache/u$a;

    return-object p0
.end method

.method public W(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->a:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public X(Lcom/facebook/imagepipeline/cache/g;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKeyFactory"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->e:Lcom/facebook/imagepipeline/cache/g;

    return-object p0
.end method

.method public Y(Ll0/a;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callerContextVerifier"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->E:Ll0/a;

    return-object p0
.end method

.method public Z(Lm1/a;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeableReferenceLeakTracker"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->F:Lm1/a;

    return-object p0
.end method

.method public a0(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diskCacheEnabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/i$b;->D:Z

    return-object p0
.end method

.method public b0(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downsampleEnabled"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/i$b;->g:Z

    return-object p0
.end method

.method public c0(Lcom/facebook/imagepipeline/cache/u;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/cache/u;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedMemoryCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/i$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->H:Lcom/facebook/imagepipeline/cache/u;

    return-object p0
.end method

.method public d0(Lcom/facebook/common/internal/m;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedMemoryCacheParamsSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/i$b;"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/internal/m;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->h:Lcom/facebook/common/internal/m;

    return-object p0
.end method

.method public e0(Lcom/facebook/common/executors/g;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .param p1    # Lcom/facebook/common/executors/g;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialExecutorService"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->I:Lcom/facebook/common/executors/g;

    return-object p0
.end method

.method public f0(Lcom/facebook/imagepipeline/core/f;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executorSupplier"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->i:Lcom/facebook/imagepipeline/core/f;

    return-object p0
.end method

.method public g0(Lcom/facebook/imagepipeline/core/g;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileCacheFactory"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->z:Lcom/facebook/imagepipeline/core/g;

    return-object p0
.end method

.method public h0(I)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "httpConnectionTimeoutMs"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/core/i$b;->B:I

    return-object p0
.end method

.method public i0(Lcom/facebook/imagepipeline/cache/q;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageCacheStatsTracker"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->j:Lcom/facebook/imagepipeline/cache/q;

    return-object p0
.end method

.method public j0(Lcom/facebook/imagepipeline/decoder/b;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageDecoder"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->k:Lcom/facebook/imagepipeline/decoder/b;

    return-object p0
.end method

.method public k0(Lcom/facebook/imagepipeline/decoder/c;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageDecoderConfig"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->A:Lcom/facebook/imagepipeline/decoder/c;

    return-object p0
.end method

.method public l0(Ls1/d;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageTranscoderFactory"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->l:Ls1/d;

    return-object p0
.end method

.method public m0(I)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageTranscoderType"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->m:Ljava/lang/Integer;

    return-object p0
.end method

.method public n0(Lcom/facebook/common/internal/m;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPrefetchEnabledSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/i$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->n:Lcom/facebook/common/internal/m;

    return-object p0
.end method

.method public o0(Lcom/facebook/cache/disk/c;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainDiskCacheConfig"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->o:Lcom/facebook/cache/disk/c;

    return-object p0
.end method

.method public p0(I)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryChunkType"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->q:Ljava/lang/Integer;

    return-object p0
.end method

.method public q0(Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryTrimmableRegistry"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->p:Lcom/facebook/common/memory/c;

    return-object p0
.end method

.method public r0(Lcom/facebook/imagepipeline/producers/l0;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkFetcher"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->r:Lcom/facebook/imagepipeline/producers/l0;

    return-object p0
.end method

.method public s0(Lcom/facebook/imagepipeline/bitmaps/f;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "platformBitmapFactory"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->s:Lcom/facebook/imagepipeline/bitmaps/f;

    return-object p0
.end method

.method public t0(Lcom/facebook/imagepipeline/memory/e0;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poolFactory"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->t:Lcom/facebook/imagepipeline/memory/e0;

    return-object p0
.end method

.method public u0(Lcom/facebook/imagepipeline/decoder/d;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressiveJpegConfig"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->u:Lcom/facebook/imagepipeline/decoder/d;

    return-object p0
.end method

.method public v0(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lq1/e;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/i$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->w:Ljava/util/Set;

    return-object p0
.end method

.method public w0(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lq1/f;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/i$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->v:Ljava/util/Set;

    return-object p0
.end method

.method public x0(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resizeAndRotateEnabledForNetwork"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/i$b;->x:Z

    return-object p0
.end method

.method public y0(Lcom/facebook/cache/disk/c;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "smallImageDiskCacheConfig"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/i$b;->y:Lcom/facebook/cache/disk/c;

    return-object p0
.end method
