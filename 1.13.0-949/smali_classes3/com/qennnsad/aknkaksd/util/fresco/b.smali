.class public Lcom/qennnsad/aknkaksd/util/fresco/b;
.super Ljava/lang/Object;
.source "FrescoMemoryTrimmableRegistry.java"

# interfaces
.implements Lcom/facebook/common/memory/c;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/common/memory/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/util/fresco/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/common/memory/b;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/fresco/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/facebook/common/memory/b;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/fresco/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized c(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/fresco/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/memory/b;

    .line 2
    invoke-interface {v1, p1}, Lcom/facebook/common/memory/b;->m(Lcom/facebook/common/memory/MemoryTrimType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
