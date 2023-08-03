.class Lcom/google/common/collect/f3$v$b;
.super Lcom/google/common/collect/f3$b0;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f3$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$b0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/f3$v;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f3$v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/f3$v$b;->b:Lcom/google/common/collect/f3$v;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/f3$b0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f3$v$b;->b:Lcom/google/common/collect/f3$v;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f3$n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f3$v$b;->b:Lcom/google/common/collect/f3$v;

    iget-object v0, v0, Lcom/google/common/collect/f3$n;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$v$b;->b:Lcom/google/common/collect/f3$v;

    iget-object v1, v0, Lcom/google/common/collect/f3$n;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/f3$n;->e:Lcom/google/common/base/b0;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/f3$v;->e(Ljava/util/Map;Lcom/google/common/base/b0;Ljava/util/Collection;)Z

    move-result p1

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

    iget-object v0, p0, Lcom/google/common/collect/f3$v$b;->b:Lcom/google/common/collect/f3$v;

    iget-object v1, v0, Lcom/google/common/collect/f3$n;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/f3$n;->e:Lcom/google/common/base/b0;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/f3$v;->f(Ljava/util/Map;Lcom/google/common/base/b0;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f3$b0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/b3;->s(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/f3$b0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/b3;->s(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
