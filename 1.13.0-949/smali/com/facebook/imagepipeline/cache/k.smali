.class public Lcom/facebook/imagepipeline/cache/k;
.super Ljava/lang/Object;
.source "CountingMemoryCacheInspector.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/k$a;,
        Lcom/facebook/imagepipeline/cache/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/j<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countingBitmapCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/j<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/k;->a:Lcom/facebook/imagepipeline/cache/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/cache/k$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/k;->a:Lcom/facebook/imagepipeline/cache/j;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/cache/k$a;

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/k;->a:Lcom/facebook/imagepipeline/cache/j;

    .line 3
    invoke-interface {v2}, Lcom/facebook/imagepipeline/cache/u;->b()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/k;->a:Lcom/facebook/imagepipeline/cache/j;

    .line 4
    invoke-interface {v3}, Lcom/facebook/imagepipeline/cache/j;->f()I

    move-result v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/k;->a:Lcom/facebook/imagepipeline/cache/j;

    .line 5
    invoke-interface {v4}, Lcom/facebook/imagepipeline/cache/j;->h()Lcom/facebook/imagepipeline/cache/v;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/imagepipeline/cache/k$a;-><init>(IILcom/facebook/imagepipeline/cache/v;)V

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/k;->a:Lcom/facebook/imagepipeline/cache/j;

    .line 7
    invoke-interface {v2}, Lcom/facebook/imagepipeline/cache/j;->e()Lcom/facebook/imagepipeline/cache/i;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/cache/i;->g(Lcom/facebook/common/internal/k;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/cache/j$a;

    .line 10
    new-instance v4, Lcom/facebook/imagepipeline/cache/k$b;

    iget-object v5, v3, Lcom/facebook/imagepipeline/cache/j$a;->a:Ljava/lang/Object;

    iget-object v6, v3, Lcom/facebook/imagepipeline/cache/j$a;->b:Lcom/facebook/common/references/a;

    invoke-direct {v4, v5, v6}, Lcom/facebook/imagepipeline/cache/k$b;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/a;)V

    .line 11
    iget v3, v3, Lcom/facebook/imagepipeline/cache/j$a;->c:I

    if-lez v3, :cond_0

    .line 12
    iget-object v3, v1, Lcom/facebook/imagepipeline/cache/k$a;->g:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    iget-object v3, v1, Lcom/facebook/imagepipeline/cache/k$a;->f:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/k;->a:Lcom/facebook/imagepipeline/cache/j;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/cache/j;->g()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2

    .line 15
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 16
    iget-object v4, v1, Lcom/facebook/imagepipeline/cache/k$a;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
