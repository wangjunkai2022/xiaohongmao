.class Lcom/google/common/collect/b5$c$d;
.super Lcom/google/common/collect/f3$q0;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b5$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$q0<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/b5$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/b5$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b5$c$d;->b:Lcom/google/common/collect/b5$c;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/f3$q0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/b5$c$d;->b:Lcom/google/common/collect/b5$c;

    invoke-static {p1}, Lcom/google/common/base/c0;->m(Ljava/lang/Object;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f3;->Q0(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b5$c;->d(Lcom/google/common/base/b0;)Z

    move-result p1

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

    iget-object v0, p0, Lcom/google/common/collect/b5$c$d;->b:Lcom/google/common/collect/b5$c;

    invoke-static {p1}, Lcom/google/common/base/c0;->n(Ljava/util/Collection;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f3;->Q0(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b5$c;->d(Lcom/google/common/base/b0;)Z

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

    iget-object v0, p0, Lcom/google/common/collect/b5$c$d;->b:Lcom/google/common/collect/b5$c;

    invoke-static {p1}, Lcom/google/common/base/c0;->n(Ljava/util/Collection;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/c0;->q(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/f3;->Q0(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b5$c;->d(Lcom/google/common/base/b0;)Z

    move-result p1

    return p1
.end method
