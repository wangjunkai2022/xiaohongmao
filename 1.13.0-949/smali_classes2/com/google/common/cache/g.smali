.class public abstract Lcom/google/common/cache/g;
.super Lcom/google/common/collect/v1;
.source "ForwardingCache.java"

# interfaces
.implements Lcom/google/common/cache/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/v1;",
        "Lcom/google/common/cache/c<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/v1;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/c;->G(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public J()Lcom/google/common/cache/f;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/c;->J()Lcom/google/common/cache/f;

    move-result-object v0

    return-object v0
.end method

.method public K()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/c;->K()V

    return-void
.end method

.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    return-object v0
.end method

.method protected abstract M()Lcom/google/common/cache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/c;->asMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/c;->c()V

    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable<",
            "+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/c;->e(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/c;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/c;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public q(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/c;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/c;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public u(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/g;->M()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/c;->u(Ljava/lang/Iterable;)V

    return-void
.end method
