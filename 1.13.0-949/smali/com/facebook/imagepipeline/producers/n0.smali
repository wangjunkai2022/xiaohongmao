.class public Lcom/facebook/imagepipeline/producers/n0;
.super Ljava/lang/Object;
.source "PostprocessedBitmapMemoryCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/q0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/n0$a;
    }
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
.field public static final d:Ljava/lang/String; = "PostprocessedBitmapMemoryCacheProducer"

.field static final e:Ljava/lang/String; = "cached_value_found"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


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
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/n0;->a:Lcom/facebook/imagepipeline/cache/u;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/n0;->b:Lcom/facebook/imagepipeline/cache/g;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/n0;->c:Lcom/facebook/imagepipeline/producers/q0;

    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V
    .locals 12
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
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    .line 3
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->d()Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->m()Lcom/facebook/imagepipeline/request/d;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 5
    invoke-interface {v3}, Lcom/facebook/imagepipeline/request/d;->a()Lcom/facebook/cache/common/c;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/n0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p2, v4}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    .line 7
    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/n0;->b:Lcom/facebook/imagepipeline/cache/g;

    .line 8
    invoke-interface {v4, v1, v2}, Lcom/facebook/imagepipeline/cache/g;->c(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object v7

    .line 9
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->z(I)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/n0;->a:Lcom/facebook/imagepipeline/cache/u;

    .line 12
    invoke-interface {v1, v7}, Lcom/facebook/imagepipeline/cache/u;->get(Ljava/lang/Object;)Lcom/facebook/common/references/a;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    const-string v11, "cached_value_found"

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/n0;->c()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/n0;->c()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p2, v5}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "true"

    .line 15
    invoke-static {v11, v4}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 16
    :cond_2
    invoke-interface {v0, p2, v3, v4}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    const-string v3, "PostprocessedBitmapMemoryCacheProducer"

    .line 17
    invoke-interface {v0, p2, v3, v2}, Lcom/facebook/imagepipeline/producers/u0;->b(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Z)V

    const-string v0, "memory_bitmap"

    const-string v3, "postprocessed"

    .line 18
    invoke-interface {p2, v0, v3}, Lcom/facebook/imagepipeline/producers/s0;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 19
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/l;->d(F)V

    .line 20
    invoke-interface {p1, v1, v2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    .line 21
    invoke-virtual {v1}, Lcom/facebook/common/references/a;->close()V

    goto :goto_1

    .line 22
    :cond_3
    instance-of v8, v3, Lcom/facebook/imagepipeline/request/e;

    .line 23
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    const/4 v2, 0x2

    .line 24
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->z(I)Z

    move-result v10

    .line 25
    new-instance v1, Lcom/facebook/imagepipeline/producers/n0$a;

    iget-object v9, p0, Lcom/facebook/imagepipeline/producers/n0;->a:Lcom/facebook/imagepipeline/cache/u;

    move-object v5, v1

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/facebook/imagepipeline/producers/n0$a;-><init>(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/cache/common/c;ZLcom/facebook/imagepipeline/cache/u;Z)V

    .line 26
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/n0;->c()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/n0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "false"

    .line 28
    invoke-static {v11, v2}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 29
    :cond_4
    invoke-interface {v0, p2, p1, v4}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/n0;->c:Lcom/facebook/imagepipeline/producers/q0;

    invoke-interface {p1, v1, p2}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    :goto_1
    return-void

    .line 31
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/n0;->c:Lcom/facebook/imagepipeline/producers/q0;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/q0;->b(Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;)V

    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "PostprocessedBitmapMemoryCacheProducer"

    return-object v0
.end method
