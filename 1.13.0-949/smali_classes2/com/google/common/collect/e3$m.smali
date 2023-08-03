.class final Lcom/google/common/collect/e3$m;
.super Lcom/google/common/collect/e3$n;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e3$n<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/e3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/e3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/e3$m;->a:Lcom/google/common/collect/e3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/e3$n;-><init>(Lcom/google/common/collect/e3$a;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e3$m;->a:Lcom/google/common/collect/e3;

    invoke-virtual {v0}, Lcom/google/common/collect/e3;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e3$m;->a:Lcom/google/common/collect/e3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e3;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e3$m;->a:Lcom/google/common/collect/e3;

    invoke-virtual {v0}, Lcom/google/common/collect/e3;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e3$l;

    iget-object v1, p0, Lcom/google/common/collect/e3$m;->a:Lcom/google/common/collect/e3;

    invoke-direct {v0, v1}, Lcom/google/common/collect/e3$l;-><init>(Lcom/google/common/collect/e3;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e3$m;->a:Lcom/google/common/collect/e3;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e3;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e3$m;->a:Lcom/google/common/collect/e3;

    invoke-virtual {v0}, Lcom/google/common/collect/e3;->size()I

    move-result v0

    return v0
.end method
