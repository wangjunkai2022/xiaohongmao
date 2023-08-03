.class final Lcom/google/common/util/concurrent/s$d;
.super Lcom/google/common/util/concurrent/k$a;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/k<",
        "Ljava/lang/Object;",
        "TV;>.a;"
    }
.end annotation


# instance fields
.field private i:Lcom/google/common/util/concurrent/s$c;

.field final synthetic j:Lcom/google/common/util/concurrent/s;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/s;Lcom/google/common/collect/ImmutableCollection;ZLcom/google/common/util/concurrent/s$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/q0<",
            "*>;>;Z",
            "Lcom/google/common/util/concurrent/s$c;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/s$d;->j:Lcom/google/common/util/concurrent/s;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/util/concurrent/k$a;-><init>(Lcom/google/common/util/concurrent/k;Lcom/google/common/collect/ImmutableCollection;ZZ)V

    .line 3
    iput-object p4, p0, Lcom/google/common/util/concurrent/s$d;->i:Lcom/google/common/util/concurrent/s$c;

    return-void
.end method


# virtual methods
.method l(ZILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    return-void
.end method

.method n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/s$d;->i:Lcom/google/common/util/concurrent/s$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/s$c;->h()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/s$d;->j:Lcom/google/common/util/concurrent/s;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/d$j;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/a0;->g0(Z)V

    :goto_0
    return-void
.end method

.method r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/s$d;->i:Lcom/google/common/util/concurrent/s$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/o0;->b()V

    :cond_0
    return-void
.end method

.method t()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/common/util/concurrent/k$a;->t()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/util/concurrent/s$d;->i:Lcom/google/common/util/concurrent/s$c;

    return-void
.end method
