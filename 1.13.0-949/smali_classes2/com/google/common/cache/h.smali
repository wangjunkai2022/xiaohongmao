.class public abstract Lcom/google/common/cache/h;
.super Lcom/google/common/cache/g;
.source "ForwardingLoadingCache.java"

# interfaces
.implements Lcom/google/common/cache/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/g<",
        "TK;TV;>;",
        "Lcom/google/common/cache/i<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/cache/g;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->N()Lcom/google/common/cache/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/i;->D(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/h;->N()Lcom/google/common/cache/i;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Lcom/google/common/cache/c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/h;->N()Lcom/google/common/cache/i;

    move-result-object v0

    return-object v0
.end method

.method protected abstract N()Lcom/google/common/cache/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/i<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->N()Lcom/google/common/cache/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->N()Lcom/google/common/cache/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->N()Lcom/google/common/cache/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->N()Lcom/google/common/cache/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/i;->h(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method
