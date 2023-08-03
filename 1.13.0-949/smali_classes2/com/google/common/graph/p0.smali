.class public abstract Lcom/google/common/graph/p0;
.super Ljava/lang/Object;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/p0$c;,
        Lcom/google/common/graph/p0$d;,
        Lcom/google/common/graph/p0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/p0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/p0;-><init>()V

    return-void
.end method

.method public static g(Lcom/google/common/graph/o0;)Lcom/google/common/graph/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/o0<",
            "TN;>;)",
            "Lcom/google/common/graph/p0<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/graph/p0$b;

    invoke-direct {v0, p0}, Lcom/google/common/graph/p0$b;-><init>(Lcom/google/common/graph/o0;)V

    return-object v0
.end method

.method public static h(Lcom/google/common/graph/o0;)Lcom/google/common/graph/p0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/o0<",
            "TN;>;)",
            "Lcom/google/common/graph/p0<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lcom/google/common/graph/h;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/h;

    invoke-interface {v0}, Lcom/google/common/graph/h;->e()Z

    move-result v0

    const-string v1, "Undirected graphs can never be trees."

    invoke-static {v0, v1}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/k0;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/k0;

    invoke-interface {v0}, Lcom/google/common/graph/k0;->e()Z

    move-result v0

    const-string v1, "Undirected networks can never be trees."

    invoke-static {v0, v1}, Lcom/google/common/base/a0;->e(ZLjava/lang/Object;)V

    .line 6
    :cond_1
    new-instance v0, Lcom/google/common/graph/p0$d;

    invoke-direct {v0, p0}, Lcom/google/common/graph/p0$d;-><init>(Lcom/google/common/graph/o0;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation
.end method
