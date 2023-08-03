.class public abstract Lcom/google/common/collect/j5;
.super Ljava/lang/Object;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/j5$e;,
        Lcom/google/common/collect/j5$f;,
        Lcom/google/common/collect/j5$g;,
        Lcom/google/common/collect/j5$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/b;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Lcom/google/common/base/q;)Lcom/google/common/collect/j5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/q<",
            "TT;+",
            "Ljava/lang/Iterable<",
            "TT;>;>;)",
            "Lcom/google/common/collect/j5<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/j5$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/j5$a;-><init>(Lcom/google/common/base/q;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/c1<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/j5$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j5$d;-><init>(Lcom/google/common/collect/j5;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation
.end method

.method c(Ljava/lang/Object;)Lcom/google/common/collect/k5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/k5<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j5$f;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j5$f;-><init>(Lcom/google/common/collect/j5;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/c1<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/j5$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j5$c;-><init>(Lcom/google/common/collect/j5;Ljava/lang/Object;)V

    return-object v0
.end method

.method e(Ljava/lang/Object;)Lcom/google/common/collect/k5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/k5<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j5$h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j5$h;-><init>(Lcom/google/common/collect/j5;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/c1<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/j5$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j5$b;-><init>(Lcom/google/common/collect/j5;Ljava/lang/Object;)V

    return-object v0
.end method
