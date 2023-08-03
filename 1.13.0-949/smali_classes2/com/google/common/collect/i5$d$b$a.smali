.class Lcom/google/common/collect/i5$d$b$a;
.super Lcom/google/common/collect/f3$b0;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i5$d$b;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$b0<",
        "Lcom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/i5$d$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i5$d$b;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i5$d$b$a;->b:Lcom/google/common/collect/i5$d$b;

    invoke-direct {p0, p2}, Lcom/google/common/collect/f3$b0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/i5$d$b$a;->b:Lcom/google/common/collect/i5$d$b;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/i5$d$b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/i5$d$b$a;->b:Lcom/google/common/collect/i5$d$b;

    invoke-static {p1}, Lcom/google/common/base/c0;->n(Ljava/util/Collection;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/c0;->q(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/f3;->R()Lcom/google/common/base/q;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/c0;->h(Lcom/google/common/base/b0;Lcom/google/common/base/q;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/i5$d$b;->a(Lcom/google/common/collect/i5$d$b;Lcom/google/common/base/b0;)Z

    move-result p1

    return p1
.end method
