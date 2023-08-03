.class Lcom/google/common/collect/f3$w$a;
.super Lcom/google/common/collect/f3$e0;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f3$w;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$e0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/f3$w;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f3$w;Ljava/util/NavigableMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/f3$w$a;->b:Lcom/google/common/collect/f3$w;

    invoke-direct {p0, p2}, Lcom/google/common/collect/f3$e0;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$w$a;->b:Lcom/google/common/collect/f3$w;

    invoke-static {v0}, Lcom/google/common/collect/f3$w;->d(Lcom/google/common/collect/f3$w;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/f3$w$a;->b:Lcom/google/common/collect/f3$w;

    invoke-static {v1}, Lcom/google/common/collect/f3$w;->c(Lcom/google/common/collect/f3$w;)Lcom/google/common/base/b0;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/f3$v;->e(Ljava/util/Map;Lcom/google/common/base/b0;Ljava/util/Collection;)Z

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

    iget-object v0, p0, Lcom/google/common/collect/f3$w$a;->b:Lcom/google/common/collect/f3$w;

    invoke-static {v0}, Lcom/google/common/collect/f3$w;->d(Lcom/google/common/collect/f3$w;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/f3$w$a;->b:Lcom/google/common/collect/f3$w;

    invoke-static {v1}, Lcom/google/common/collect/f3$w;->c(Lcom/google/common/collect/f3$w;)Lcom/google/common/base/b0;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/f3$v;->f(Ljava/util/Map;Lcom/google/common/base/b0;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
