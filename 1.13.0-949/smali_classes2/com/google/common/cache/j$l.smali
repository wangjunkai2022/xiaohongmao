.class final Lcom/google/common/cache/j$l;
.super Lcom/google/common/cache/j$p;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/cache/i;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/j$p<",
        "TK;TV;>;",
        "Lcom/google/common/cache/i<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final p:J = 0x1L


# instance fields
.field transient o:Lcom/google/common/cache/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/i<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/j<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/cache/j$p;-><init>(Lcom/google/common/cache/j;)V

    return-void
.end method

.method private N(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/j$p;->P()Lcom/google/common/cache/d;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/common/cache/j$p;->l:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p1, v0}, Lcom/google/common/cache/d;->b(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/i;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/j$l;->o:Lcom/google/common/cache/i;

    return-void
.end method

.method private O()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/j$l;->o:Lcom/google/common/cache/i;

    return-object v0
.end method


# virtual methods
.method public D(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$l;->o:Lcom/google/common/cache/i;

    invoke-interface {v0, p1}, Lcom/google/common/cache/i;->D(Ljava/lang/Object;)V

    return-void
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/j$l;->o:Lcom/google/common/cache/i;

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

    iget-object v0, p0, Lcom/google/common/cache/j$l;->o:Lcom/google/common/cache/i;

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

    iget-object v0, p0, Lcom/google/common/cache/j$l;->o:Lcom/google/common/cache/i;

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

    iget-object v0, p0, Lcom/google/common/cache/j$l;->o:Lcom/google/common/cache/i;

    invoke-interface {v0, p1}, Lcom/google/common/cache/i;->h(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method
