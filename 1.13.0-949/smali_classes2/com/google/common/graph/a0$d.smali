.class Lcom/google/common/graph/a0$d;
.super Lcom/google/common/graph/v;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/v<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/t0<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/t0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/t0<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/v;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/graph/a0$d;->a:Lcom/google/common/graph/t0;

    return-void
.end method

.method static synthetic R(Lcom/google/common/graph/a0$d;)Lcom/google/common/graph/t0;
    .locals 0

    iget-object p0, p0, Lcom/google/common/graph/a0$d;->a:Lcom/google/common/graph/t0;

    return-object p0
.end method


# virtual methods
.method protected Q()Lcom/google/common/graph/t0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/t0<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/a0$d;->a:Lcom/google/common/graph/t0;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a0$d;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/graph/a0$d;->Q()Lcom/google/common/graph/t0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/t0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a0$d;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/graph/a0$d;->Q()Lcom/google/common/graph/t0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/t0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$d;->Q()Lcom/google/common/graph/t0;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/t0;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/google/common/graph/r;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$d;->Q()Lcom/google/common/graph/t0;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/a0;->q(Lcom/google/common/graph/r;)Lcom/google/common/graph/r;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/graph/t0;->f(Lcom/google/common/graph/r;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$d;->Q()Lcom/google/common/graph/t0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/t0;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$d;->Q()Lcom/google/common/graph/t0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/t0;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public t(Lcom/google/common/graph/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$d;->Q()Lcom/google/common/graph/t0;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/a0;->q(Lcom/google/common/graph/r;)Lcom/google/common/graph/r;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/t0;->t(Lcom/google/common/graph/r;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$d;->Q()Lcom/google/common/graph/t0;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, Lcom/google/common/graph/t0;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
