.class public Lcom/facebook/imagepipeline/producers/m0;
.super Ljava/lang/Object;
.source "PartialDiskCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/q0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/m0$c;
    }
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
.field public static final f:Ljava/lang/String; = "PartialDiskCacheProducer"

.field public static final g:Ljava/lang/String; = "cached_value_found"

.field public static final h:Ljava/lang/String; = "encodedImageSize"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/f;

.field private final b:Lcom/facebook/imagepipeline/cache/g;

.field private final c:Lcom/facebook/common/memory/g;

.field private final d:Lcom/facebook/common/memory/a;

.field private final e:Lcom/facebook/imagepipeline/producers/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/producers/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultBufferedDiskCache",
            "cacheKeyFactory",
            "pooledByteBufferFactory",
            "byteArrayPool",
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/f;",
            "Lcom/facebook/imagepipeline/cache/g;",
            "Lcom/facebook/common/memory/g;",
            "Lcom/facebook/common/memory/a;",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/m0;->a:Lcom/facebook/imagepipeline/cache/f;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/m0;->b:Lcom/facebook/imagepipeline/cache/g;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/m0;->c:Lcom/facebook/common/memory/g;

    .line 5
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/m0;->d:Lcom/facebook/common/memory/a;

    .line 6
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/m0;->e:Lcom/facebook/imagepipeline/producers/q0;

    return-void
.end method

.method static synthetic c(Lbolts/h;)Z
    .locals 0

    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/m0;->g(Lbolts/h;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/m0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/m0;->i(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    return-void
.end method

.method private static e(Lcom/facebook/imagepipeline/request/ImageRequest;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageRequest"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "fresco_partial"

    const-string v1, "true"

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static f(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;ZI)Ljava/util/Map;
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

    const-string v0, "PartialDiskCacheProducer"

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

.method private static g(Lbolts/h;)Z
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

.method private h(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/cache/common/c;)Lbolts/g;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "consumer",
            "producerContext",
            "partialImageCacheKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lbolts/g<",
            "Lcom/facebook/imagepipeline/image/e;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v2

    .line 2
    new-instance v6, Lcom/facebook/imagepipeline/producers/m0$a;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/producers/m0$a;-><init>(Lcom/facebook/imagepipeline/producers/m0;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/cache/common/c;)V

    return-object v6
.end method

.method private i(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
    .locals 10
    .param p4    # Lcom/facebook/imagepipeline/image/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "consumerOfPartialDiskCacheProducer",
            "producerContext",
            "partialImageCacheKey",
            "partialResultFromCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/e;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/facebook/imagepipeline/producers/m0$c;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/m0;->a:Lcom/facebook/imagepipeline/cache/f;

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/m0;->c:Lcom/facebook/common/memory/g;

    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/m0;->d:Lcom/facebook/common/memory/a;

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    const/16 v1, 0x20

    .line 3
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->z(I)Z

    move-result v7

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/producers/m0$c;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/cache/common/c;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/image/e;ZLcom/facebook/imagepipeline/producers/m0$a;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/m0;->e:Lcom/facebook/imagepipeline/producers/q0;

    invoke-interface {p1, v9, p2}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method

.method private j(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/s0;)V
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

    new-instance v0, Lcom/facebook/imagepipeline/producers/m0$b;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/m0$b;-><init>(Lcom/facebook/imagepipeline/producers/m0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/s0;->f(Lcom/facebook/imagepipeline/producers/t0;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 7
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

    .line 4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v2

    const-string v3, "PartialDiskCacheProducer"

    .line 5
    invoke-interface {v2, p2, v3}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/m0;->e(Lcom/facebook/imagepipeline/request/ImageRequest;)Landroid/net/Uri;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/facebook/imagepipeline/producers/m0;->b:Lcom/facebook/imagepipeline/cache/g;

    .line 8
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->d()Ljava/lang/Object;

    move-result-object v6

    .line 9
    invoke-interface {v5, v0, v4, v6}, Lcom/facebook/imagepipeline/cache/g;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/net/Uri;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 10
    invoke-static {v2, p2, v4, v4}, Lcom/facebook/imagepipeline/producers/m0;->f(Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/imagepipeline/producers/s0;ZI)Ljava/util/Map;

    move-result-object v1

    .line 11
    invoke-interface {v2, p2, v3, v1}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/imagepipeline/producers/m0;->i(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    return-void

    .line 13
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/m0;->a:Lcom/facebook/imagepipeline/cache/f;

    .line 15
    invoke-virtual {v2, v0, v1}, Lcom/facebook/imagepipeline/cache/f;->q(Lcom/facebook/cache/common/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;

    move-result-object v2

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/producers/m0;->h(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;Lcom/facebook/cache/common/c;)Lbolts/g;

    move-result-object p1

    .line 17
    invoke-virtual {v2, p1}, Lbolts/h;->q(Lbolts/g;)Lbolts/h;

    .line 18
    invoke-direct {p0, v1, p2}, Lcom/facebook/imagepipeline/producers/m0;->j(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method
