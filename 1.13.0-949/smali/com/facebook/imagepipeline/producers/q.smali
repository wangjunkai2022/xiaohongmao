.class public Lcom/facebook/imagepipeline/producers/q;
.super Ljava/lang/Object;
.source "DiskCacheReadProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/q0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/q0<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String; = "DiskCacheProducer"

.field public static final f:Ljava/lang/String; = "cached_value_found"

.field public static final g:Ljava/lang/String; = "encodedImageSize"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/f;

.field private final b:Lcom/facebook/imagepipeline/cache/f;

.field private final c:Lcom/facebook/imagepipeline/cache/g;

.field private final d:Lcom/facebook/imagepipeline/producers/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultBufferedDiskCache",
            "smallImageBufferedDiskCache",
            "cacheKeyFactory",
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/g;",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/q;->a:Lcom/facebook/imagepipeline/cache/f;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/q;->b:Lcom/facebook/imagepipeline/cache/f;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/q;->c:Lcom/facebook/imagepipeline/cache/g;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/q;->d:Lcom/facebook/imagepipeline/producers/q0;

    return-void
.end method

.method static synthetic c(Lbolts/h;)Z
    .locals 0

    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/q;->f(Lbolts/h;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/q;)Lcom/facebook/imagepipeline/producers/q0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/q;->d:Lcom/facebook/imagepipeline/producers/q0;

    return-object p0
.end method

.method static e(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;ZI)Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "listener",
            "producerContext",
            "valueFound",
            "sizeInBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/u0;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "ZI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const-string v0, "DiskCacheProducer"

    .line 1
    invoke-interface {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "cached_value_found"

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "encodedImageSize"

    .line 4
    invoke-static {p0, p1, p3, p2}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static f(Lbolts/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/h<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lbolts/h;->H()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lbolts/h;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbolts/h;->E()Ljava/lang/Exception;

    move-result-object p0

    instance-of p0, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private g(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "consumer",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->s()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string v0, "disk"

    const-string v1, "nil-result_read"

    .line 3
    invoke-interface {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/s0;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q;->d:Lcom/facebook/imagepipeline/producers/q0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method

.method private h(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lbolts/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "consumer",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")",
            "Lbolts/g<",
            "Lcom/facebook/imagepipeline/image/e;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/facebook/imagepipeline/producers/q$a;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/facebook/imagepipeline/producers/q$a;-><init>(Lcom/facebook/imagepipeline/producers/q;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/l;)V

    return-object v1
.end method

.method private i(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "isCancelled",
            "producerContext"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/q$b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/q$b;-><init>(Lcom/facebook/imagepipeline/producers/q;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/s0;->f(Lcom/facebook/imagepipeline/producers/t0;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "consumer",
            "producerContext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    const/16 v2, 0x10

    .line 3
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->z(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/q;->g(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void

    .line 5
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v1

    const-string v2, "DiskCacheProducer"

    invoke-interface {v1, p2, v2}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/q;->c:Lcom/facebook/imagepipeline/cache/g;

    .line 7
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/imagepipeline/cache/g;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->f()Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    move-result-object v0

    sget-object v2, Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q;->b:Lcom/facebook/imagepipeline/cache/f;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/q;->a:Lcom/facebook/imagepipeline/cache/f;

    .line 10
    :goto_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/f;->q(Lcom/facebook/cache/common/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;

    move-result-object v0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/q;->h(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)Lbolts/g;

    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lbolts/h;->q(Lbolts/g;)Lbolts/h;

    .line 14
    invoke-direct {p0, v2, p2}, Lcom/facebook/imagepipeline/producers/q;->i(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method
