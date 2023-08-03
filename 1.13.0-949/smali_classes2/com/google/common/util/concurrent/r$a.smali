.class abstract Lcom/google/common/util/concurrent/r$a;
.super Lcom/google/common/util/concurrent/k$a;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/k<",
        "TV;TC;>.a;"
    }
.end annotation


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/base/Optional<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic j:Lcom/google/common/util/concurrent/r;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/r;Lcom/google/common/collect/ImmutableCollection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/q0<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/r$a;->j:Lcom/google/common/util/concurrent/r;

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/util/concurrent/k$a;-><init>(Lcom/google/common/util/concurrent/k;Lcom/google/common/collect/ImmutableCollection;ZZ)V

    .line 3
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/b3;->u(I)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/common/util/concurrent/r$a;->i:Ljava/util/List;

    const/4 p1, 0x0

    .line 6
    :goto_1
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 7
    iget-object p3, p0, Lcom/google/common/util/concurrent/r$a;->i:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method final l(ZILjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/r$a;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p3}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/google/common/util/concurrent/r$a;->j:Lcom/google/common/util/concurrent/r;

    .line 4
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/d$j;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string p2, "Future was done before all dependencies completed"

    .line 5
    invoke-static {p1, p2}, Lcom/google/common/base/a0;->h0(ZLjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/r$a;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/r$a;->j:Lcom/google/common/util/concurrent/r;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/r$a;->u(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/d;->M(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/r$a;->j:Lcom/google/common/util/concurrent/r;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/d$j;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    :goto_0
    return-void
.end method

.method t()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/util/concurrent/k$a;->t()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/util/concurrent/r$a;->i:Ljava/util/List;

    return-void
.end method

.method abstract u(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/base/Optional<",
            "TV;>;>;)TC;"
        }
    .end annotation
.end method
