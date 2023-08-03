.class public Lcom/facebook/imagepipeline/producers/h;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheProducer.java"

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
        "Lcom/facebook/common/references/a<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "BitmapMemoryCacheProducer"

.field public static final e:Ljava/lang/String; = "cached_value_found"

.field private static final f:Ljava/lang/String; = "pipe_bg"


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/cache/g;

.field private final c:Lcom/facebook/imagepipeline/producers/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/u;Lcom/facebook/imagepipeline/cache/g;Lcom/facebook/imagepipeline/producers/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "memoryCache",
            "cacheKeyFactory",
            "inputProducer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/u<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/g;",
            "Lcom/facebook/imagepipeline/producers/q0<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/h;->a:Lcom/facebook/imagepipeline/cache/u;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/h;->b:Lcom/facebook/imagepipeline/cache/g;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/h;->c:Lcom/facebook/imagepipeline/producers/q0;

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/h;)Lcom/facebook/imagepipeline/cache/u;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/h;->a:Lcom/facebook/imagepipeline/cache/u;

    return-object p0
.end method

.method private static f(Lcom/facebook/imagepipeline/image/f;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageWithMeta",
            "producerContext"
        }
    .end annotation

    invoke-interface {p0}, Lcom/facebook/imagepipeline/image/f;->getExtras()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/facebook/imagepipeline/producers/s0;->p(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 10
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
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BitmapMemoryCacheProducer#produceResults"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    .line 5
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 6
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->d()Ljava/lang/Object;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/h;->b:Lcom/facebook/imagepipeline/cache/g;

    invoke-interface {v3, v1, v2}, Lcom/facebook/imagepipeline/cache/g;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v1

    .line 8
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->z(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/h;->a:Lcom/facebook/imagepipeline/cache/u;

    .line 11
    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/cache/u;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    const-string v5, "memory_bitmap"

    const-string v6, "cached_value_found"

    if-eqz v2, :cond_5

    .line 12
    :try_start_1
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/imagepipeline/image/f;

    invoke-static {v7, p2}, Lcom/facebook/imagepipeline/producers/h;->f(Lcom/facebook/imagepipeline/image/f;Lcom/facebook/imagepipeline/producers/s0;)V

    .line 13
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->q()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/imagepipeline/image/c;

    invoke-virtual {v7}, Lcom/facebook/imagepipeline/image/c;->a()Lcom/facebook/imagepipeline/image/j;

    move-result-object v7

    invoke-interface {v7}, Lcom/facebook/imagepipeline/image/j;->a()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->e()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->e()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, p2, v9}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "true"

    .line 16
    invoke-static {v6, v9}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v4

    .line 17
    :goto_1
    invoke-interface {v0, p2, v8, v9}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->e()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, p2, v8, v3}, Lcom/facebook/imagepipeline/producers/u0;->b(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Z)V

    .line 19
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->d()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v5, v8}, Lcom/facebook/imagepipeline/producers/s0;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 20
    invoke-interface {p1, v8}, Lcom/facebook/imagepipeline/producers/l;->d(F)V

    .line 21
    :cond_3
    invoke-static {v7}, Lcom/facebook/imagepipeline/producers/b;->m(Z)I

    move-result v8

    invoke-interface {p1, v2, v8}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    .line 22
    invoke-virtual {v2}, Lcom/facebook/common/references/a;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_5

    .line 23
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_4
    return-void

    .line 25
    :cond_5
    :try_start_2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->s()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v2

    sget-object v7, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->BITMAP_MEMORY_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 26
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "false"

    if-lt v2, v7, :cond_8

    .line 27
    :try_start_3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->e()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 29
    invoke-static {v6, v8}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v4

    .line 30
    :goto_2
    invoke-interface {v0, p2, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 31
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p2, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->b(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Z)V

    .line 32
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v5, v0}, Lcom/facebook/imagepipeline/producers/s0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1, v4, v3}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 35
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_7
    return-void

    .line 36
    :cond_8
    :try_start_4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    const/4 v3, 0x2

    .line 37
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/request/ImageRequest;->z(I)Z

    move-result v2

    .line 38
    invoke-virtual {p0, p1, v1, v2}, Lcom/facebook/imagepipeline/producers/h;->g(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/cache/common/c;Z)Lcom/facebook/imagepipeline/producers/l;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->e()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 41
    invoke-static {v6, v8}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 42
    :cond_9
    invoke-interface {v0, p2, v1, v4}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "mInputProducer.produceResult"

    .line 44
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 45
    :cond_a
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/h;->c:Lcom/facebook/imagepipeline/producers/q0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    .line 46
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 47
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    :cond_b
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 49
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_c
    return-void

    :catchall_0
    move-exception p1

    .line 50
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 51
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 52
    :cond_d
    throw p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "pipe_bg"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "BitmapMemoryCacheProducer"

    return-object v0
.end method

.method protected g(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/cache/common/c;Z)Lcom/facebook/imagepipeline/producers/l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "consumer",
            "cacheKey",
            "isBitmapCacheEnabledForWrite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;",
            "Lcom/facebook/cache/common/c;",
            "Z)",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/producers/h$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/h$a;-><init>(Lcom/facebook/imagepipeline/producers/h;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/cache/common/c;Z)V

    return-object v0
.end method
