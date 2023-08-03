.class public Lcom/facebook/imagepipeline/core/k$b;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field public F:Z

.field private final a:Lcom/facebook/imagepipeline/core/i$b;

.field private b:Z

.field private c:Lt0/b$a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private d:Z

.field private e:Lt0/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field public j:Z

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Lcom/facebook/imagepipeline/core/k$d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public o:Lcom/facebook/common/internal/m;
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

.field public p:Z

.field public q:Z

.field public r:I

.field public s:Lcom/facebook/common/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:J

.field private v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/i$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configBuilder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->b:Z

    .line 3
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->d:Z

    .line 4
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->f:Z

    .line 5
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->g:Z

    .line 6
    iput v0, p0, Lcom/facebook/imagepipeline/core/k$b;->h:I

    .line 7
    iput v0, p0, Lcom/facebook/imagepipeline/core/k$b;->i:I

    .line 8
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->j:Z

    const/16 v1, 0x800

    .line 9
    iput v1, p0, Lcom/facebook/imagepipeline/core/k$b;->k:I

    .line 10
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->l:Z

    .line 11
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->m:Z

    .line 12
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/facebook/common/internal/n;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/m;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/k$b;->s:Lcom/facebook/common/internal/m;

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/facebook/imagepipeline/core/k$b;->u:J

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/k$b;->x:Z

    .line 15
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/k$b;->y:Z

    .line 16
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->z:Z

    .line 17
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->A:Z

    const/16 v1, 0x14

    .line 18
    iput v1, p0, Lcom/facebook/imagepipeline/core/k$b;->B:I

    .line 19
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->C:Z

    .line 20
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->D:Z

    .line 21
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->E:Z

    .line 22
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->F:Z

    .line 23
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/core/k$b;)Lt0/b$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/k$b;->c:Lt0/b$a;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->m:Z

    return p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/core/k$b;)Lcom/facebook/imagepipeline/core/k$d;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/k$b;->n:Lcom/facebook/imagepipeline/core/k$d;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->v:Z

    return p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->z:Z

    return p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->A:Z

    return p0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/core/k$b;)I
    .locals 0

    iget p0, p0, Lcom/facebook/imagepipeline/core/k$b;->B:I

    return p0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->C:Z

    return p0
.end method

.method static synthetic j(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->D:Z

    return p0
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->E:Z

    return p0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->d:Z

    return p0
.end method

.method static synthetic m(Lcom/facebook/imagepipeline/core/k$b;)Lt0/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/core/k$b;->e:Lt0/b;

    return-object p0
.end method

.method static synthetic n(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->f:Z

    return p0
.end method

.method static synthetic o(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->g:Z

    return p0
.end method

.method static synthetic p(Lcom/facebook/imagepipeline/core/k$b;)I
    .locals 0

    iget p0, p0, Lcom/facebook/imagepipeline/core/k$b;->h:I

    return p0
.end method

.method static synthetic q(Lcom/facebook/imagepipeline/core/k$b;)I
    .locals 0

    iget p0, p0, Lcom/facebook/imagepipeline/core/k$b;->i:I

    return p0
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/core/k$b;)I
    .locals 0

    iget p0, p0, Lcom/facebook/imagepipeline/core/k$b;->k:I

    return p0
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/core/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/k$b;->l:Z

    return p0
.end method


# virtual methods
.method public A(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedCacheEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->x:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public B(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ensureTranscoderLibraryLoaded"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->y:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public C(J)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "MemoryType"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/imagepipeline/core/k$b;->u:J

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public D(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "experimentalThreadHandoffQueueEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->t:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public E(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gingerbreadDecoderEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->p:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public F(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handOffOnUiThreadOnly"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->D:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public G(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldIgnoreCacheSizeMismatch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->F:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public H(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDiskCacheProbingEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->A:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public I(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEncodedMemoryCacheProbingEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->z:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public J(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keepCancelledFetchAsLowPriority"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->v:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public K(Lcom/facebook/common/internal/m;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lazyDataSource"
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

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->o:Lcom/facebook/common/internal/m;

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public L(I)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxBitmapSize"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/core/k$b;->k:I

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public M(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeCodeDisabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->l:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public N(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "partialImageCachingEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->m:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public O(Lcom/facebook/imagepipeline/core/k$d;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "producerFactoryMethod"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->n:Lcom/facebook/imagepipeline/core/k$d;

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public P(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downscaleFrameToDrawableDimensions"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->q:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public Q(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldStoreCacheEntrySize"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->E:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public R(Lcom/facebook/common/internal/m;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suppressBitmapPrefetchingSupplier"
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

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->s:Lcom/facebook/common/internal/m;

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public S(I)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackedKeysSize"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/core/k$b;->B:I

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public T(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useDownsamplingRatioForResizing"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->f:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public U(Lt0/b;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webpBitmapFactory"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->e:Lt0/b;

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public V(Lt0/b$a;)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webpErrorLogger"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->c:Lt0/b$a;

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public W(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webpSupportEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->b:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public t()Lcom/facebook/imagepipeline/core/k;
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/core/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/k;-><init>(Lcom/facebook/imagepipeline/core/k$b;Lcom/facebook/imagepipeline/core/k$a;)V

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/k$b;->m:Z

    return v0
.end method

.method public v(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowDelay"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->C:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public w(I)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapCloseableRefType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/core/k$b;->r:I

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public x(ZIIZ)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "useBitmapPrepareToDraw",
            "minBitmapSizeBytes",
            "maxBitmapSizeBytes",
            "preparePrefetch"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->g:Z

    .line 2
    iput p2, p0, Lcom/facebook/imagepipeline/core/k$b;->h:I

    .line 3
    iput p3, p0, Lcom/facebook/imagepipeline/core/k$b;->i:I

    .line 4
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/core/k$b;->j:Z

    .line 5
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public y(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodeCancellationEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->d:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method

.method public z(Z)Lcom/facebook/imagepipeline/core/i$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downsampleIfLargeBitmap"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/k$b;->w:Z

    .line 2
    iget-object p1, p0, Lcom/facebook/imagepipeline/core/k$b;->a:Lcom/facebook/imagepipeline/core/i$b;

    return-object p1
.end method
