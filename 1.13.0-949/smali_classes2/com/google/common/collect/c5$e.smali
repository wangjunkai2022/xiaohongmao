.class Lcom/google/common/collect/c5$e;
.super Lcom/google/common/collect/c5$k;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/u;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c5$k<",
        "TK;TV;>;",
        "Lcom/google/common/collect/u<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/d;
.end annotation


# static fields
.field private static final j:J


# instance fields
.field private transient h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient i:Lcom/google/common/collect/u;
    .annotation build Lcom/google/j2objc/annotations/RetainedWith;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/u;Ljava/lang/Object;Lcom/google/common/collect/u;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/u;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/u<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/c5$k;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 3
    iput-object p3, p0, Lcom/google/common/collect/c5$e;->i:Lcom/google/common/collect/u;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/u;Ljava/lang/Object;Lcom/google/common/collect/u;Lcom/google/common/collect/c5$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/c5$e;-><init>(Lcom/google/common/collect/u;Ljava/lang/Object;Lcom/google/common/collect/u;)V

    return-void
.end method


# virtual methods
.method bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/c5$e;->e()Lcom/google/common/collect/u;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic d()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/c5$e;->e()Lcom/google/common/collect/u;

    move-result-object v0

    return-object v0
.end method

.method e()Lcom/google/common/collect/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/c5$k;->d()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/c5$e;->e()Lcom/google/common/collect/u;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/u;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public inverse()Lcom/google/common/collect/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/c5$e;->i:Lcom/google/common/collect/u;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/common/collect/c5$e;

    invoke-virtual {p0}, Lcom/google/common/collect/c5$e;->e()Lcom/google/common/collect/u;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/u;->inverse()Lcom/google/common/collect/u;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/c5$p;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p0}, Lcom/google/common/collect/c5$e;-><init>(Lcom/google/common/collect/u;Ljava/lang/Object;Lcom/google/common/collect/u;)V

    iput-object v1, p0, Lcom/google/common/collect/c5$e;->i:Lcom/google/common/collect/u;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/c5$e;->i:Lcom/google/common/collect/u;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/c5$e;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/c5$e;->h:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/c5$e;->e()Lcom/google/common/collect/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/u;->values()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/c5$p;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/c5;->u(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/c5$e;->h:Ljava/util/Set;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/c5$e;->h:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
