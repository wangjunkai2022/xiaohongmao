.class Lcom/google/common/collect/u0$a$b;
.super Lcom/google/common/collect/f3$b0;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u0$a;->b()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$b0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/u0$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/u0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/u0$a$b;->b:Lcom/google/common/collect/u0$a;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/f3$b0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/u0$a$b;->b:Lcom/google/common/collect/u0$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u0$a;->e(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u0$a$b;->b:Lcom/google/common/collect/u0$a;

    iget-object v0, v0, Lcom/google/common/collect/u0$a;->d:Lcom/google/common/collect/u0;

    invoke-static {p1}, Lcom/google/common/base/c0;->n(Ljava/util/Collection;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f3;->U(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u0;->m(Lcom/google/common/base/b0;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u0$a$b;->b:Lcom/google/common/collect/u0$a;

    iget-object v0, v0, Lcom/google/common/collect/u0$a;->d:Lcom/google/common/collect/u0;

    invoke-static {p1}, Lcom/google/common/base/c0;->n(Ljava/util/Collection;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/c0;->q(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f3;->U(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u0;->m(Lcom/google/common/base/b0;)Z

    move-result p1

    return p1
.end method
