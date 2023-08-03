.class Lcom/google/common/cache/j$n;
.super Lcom/google/common/cache/j$o;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/cache/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/j$o<",
        "TK;TV;>;",
        "Lcom/google/common/cache/i<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final c:J = 0x1L


# direct methods
.method constructor <init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/d<",
            "-TK;-TV;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/j;

    invoke-static {p2}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/cache/CacheLoader;

    invoke-direct {v0, p1, p2}, Lcom/google/common/cache/j;-><init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/common/cache/j$o;-><init>(Lcom/google/common/cache/j;Lcom/google/common/cache/j$a;)V

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

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/j;->N(Ljava/lang/Object;)V

    return-void
.end method

.method a()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/cache/j$l;

    iget-object v1, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-direct {v0, v1}, Lcom/google/common/cache/j$l;-><init>(Lcom/google/common/cache/j;)V

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/cache/j$n;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/j$n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
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

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/j;->t(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/common/cache/j$o;->a:Lcom/google/common/cache/j;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/j;->n(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method
