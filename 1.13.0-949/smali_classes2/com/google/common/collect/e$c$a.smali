.class Lcom/google/common/collect/e$c$a;
.super Lcom/google/common/collect/f3$s;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$s<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/e$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/e$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/e$c$a;->a:Lcom/google/common/collect/e$c;

    invoke-direct {p0}, Lcom/google/common/collect/f3$s;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e$c$a;->a:Lcom/google/common/collect/e$c;

    iget-object v0, v0, Lcom/google/common/collect/e$c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/z;->k(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e$c$a;->a:Lcom/google/common/collect/e$c;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/e$c$b;

    iget-object v1, p0, Lcom/google/common/collect/e$c$a;->a:Lcom/google/common/collect/e$c;

    invoke-direct {v0, v1}, Lcom/google/common/collect/e$c$b;-><init>(Lcom/google/common/collect/e$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e$c$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/e$c$a;->a:Lcom/google/common/collect/e$c;

    iget-object v0, v0, Lcom/google/common/collect/e$c;->e:Lcom/google/common/collect/e;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/e;->q(Lcom/google/common/collect/e;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
