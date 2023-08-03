.class public Lcom/facebook/imagepipeline/memory/d0$b;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/facebook/imagepipeline/memory/f0;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private b:Lcom/facebook/imagepipeline/memory/g0;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private c:Lcom/facebook/imagepipeline/memory/f0;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private d:Lcom/facebook/common/memory/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/memory/f0;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private f:Lcom/facebook/imagepipeline/memory/g0;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private g:Lcom/facebook/imagepipeline/memory/f0;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private h:Lcom/facebook/imagepipeline/memory/g0;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Z

.field public m:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/memory/d0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/d0$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/memory/d0$b;)Lcom/facebook/imagepipeline/memory/f0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->a:Lcom/facebook/imagepipeline/memory/f0;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/memory/d0$b;)Lcom/facebook/imagepipeline/memory/g0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->b:Lcom/facebook/imagepipeline/memory/g0;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/memory/d0$b;)I
    .locals 0

    iget p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->k:I

    return p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/memory/d0$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->l:Z

    return p0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/memory/d0$b;)Lcom/facebook/imagepipeline/memory/f0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->c:Lcom/facebook/imagepipeline/memory/f0;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/memory/d0$b;)Lcom/facebook/common/memory/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->d:Lcom/facebook/common/memory/c;

    return-object p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/memory/d0$b;)Lcom/facebook/imagepipeline/memory/f0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->e:Lcom/facebook/imagepipeline/memory/f0;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/memory/d0$b;)Lcom/facebook/imagepipeline/memory/g0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->f:Lcom/facebook/imagepipeline/memory/g0;

    return-object p0
.end method

.method static synthetic i(Lcom/facebook/imagepipeline/memory/d0$b;)Lcom/facebook/imagepipeline/memory/f0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->g:Lcom/facebook/imagepipeline/memory/f0;

    return-object p0
.end method

.method static synthetic j(Lcom/facebook/imagepipeline/memory/d0$b;)Lcom/facebook/imagepipeline/memory/g0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->h:Lcom/facebook/imagepipeline/memory/g0;

    return-object p0
.end method

.method static synthetic k(Lcom/facebook/imagepipeline/memory/d0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/facebook/imagepipeline/memory/d0$b;)I
    .locals 0

    iget p0, p0, Lcom/facebook/imagepipeline/memory/d0$b;->j:I

    return p0
.end method


# virtual methods
.method public m()Lcom/facebook/imagepipeline/memory/d0;
    .locals 2

    new-instance v0, Lcom/facebook/imagepipeline/memory/d0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/memory/d0;-><init>(Lcom/facebook/imagepipeline/memory/d0$b;Lcom/facebook/imagepipeline/memory/d0$a;)V

    return-object v0
.end method

.method public n(I)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapPoolMaxBitmapSize"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->k:I

    return-object p0
.end method

.method public o(I)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapPoolMaxPoolSize"
        }
    .end annotation

    iput p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->j:I

    return-object p0
.end method

.method public p(Lcom/facebook/imagepipeline/memory/f0;)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapPoolParams"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/f0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->a:Lcom/facebook/imagepipeline/memory/f0;

    return-object p0
.end method

.method public q(Lcom/facebook/imagepipeline/memory/g0;)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapPoolStatsTracker"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/g0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->b:Lcom/facebook/imagepipeline/memory/g0;

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapPoolType"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public s(Lcom/facebook/imagepipeline/memory/f0;)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flexByteArrayPoolParams"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->c:Lcom/facebook/imagepipeline/memory/f0;

    return-object p0
.end method

.method public t(Z)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreBitmapPoolHardCap"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->m:Z

    return-object p0
.end method

.method public u(Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryTrimmableRegistry"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->d:Lcom/facebook/common/memory/c;

    return-object p0
.end method

.method public v(Lcom/facebook/imagepipeline/memory/f0;)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryChunkPoolParams"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/f0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->e:Lcom/facebook/imagepipeline/memory/f0;

    return-object p0
.end method

.method public w(Lcom/facebook/imagepipeline/memory/g0;)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryChunkPoolStatsTracker"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/g0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->f:Lcom/facebook/imagepipeline/memory/g0;

    return-object p0
.end method

.method public x(Z)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registerLruBitmapPoolAsMemoryTrimmable"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->l:Z

    return-object p0
.end method

.method public y(Lcom/facebook/imagepipeline/memory/f0;)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commonByteArrayPoolParams"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/f0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->g:Lcom/facebook/imagepipeline/memory/f0;

    return-object p0
.end method

.method public z(Lcom/facebook/imagepipeline/memory/g0;)Lcom/facebook/imagepipeline/memory/d0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "smallByteArrayPoolStatsTracker"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/imagepipeline/memory/g0;

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/d0$b;->h:Lcom/facebook/imagepipeline/memory/g0;

    return-object p0
.end method
