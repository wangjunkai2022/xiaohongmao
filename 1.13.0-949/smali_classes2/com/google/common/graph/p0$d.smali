.class final Lcom/google/common/graph/p0$d;
.super Lcom/google/common/graph/p0;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/p0$d$e;,
        Lcom/google/common/graph/p0$d$f;,
        Lcom/google/common/graph/p0$d$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/p0<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/o0<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/o0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/o0<",
            "TN;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/graph/p0;-><init>(Lcom/google/common/graph/p0$a;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/o0;

    iput-object p1, p0, Lcom/google/common/graph/p0$d;->a:Lcom/google/common/graph/o0;

    return-void
.end method

.method static synthetic i(Lcom/google/common/graph/p0$d;)Lcom/google/common/graph/o0;
    .locals 0

    iget-object p0, p0, Lcom/google/common/graph/p0$d;->a:Lcom/google/common/graph/o0;

    return-object p0
.end method

.method private j(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/p0$d;->a:Lcom/google/common/graph/o0;

    invoke-interface {v0, p1}, Lcom/google/common/graph/o0;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/w2;->C(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-direct {p0, v1}, Lcom/google/common/graph/p0$d;->j(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/common/graph/p0$d$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/p0$d$a;-><init>(Lcom/google/common/graph/p0$d;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/graph/p0$d;->a(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/w2;->C(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-direct {p0, v1}, Lcom/google/common/graph/p0$d;->j(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/common/graph/p0$d$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/p0$d$c;-><init>(Lcom/google/common/graph/p0$d;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/graph/p0$d;->c(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/w2;->C(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-direct {p0, v1}, Lcom/google/common/graph/p0$d;->j(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/common/graph/p0$d$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/p0$d$b;-><init>(Lcom/google/common/graph/p0$d;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/graph/p0$d;->e(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
