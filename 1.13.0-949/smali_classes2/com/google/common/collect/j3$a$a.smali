.class Lcom/google/common/collect/j3$a$a;
.super Lcom/google/common/collect/f3$s;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j3$a;
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
.field final synthetic a:Lcom/google/common/collect/j3$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j3$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/j3$a$a;->a:Lcom/google/common/collect/j3$a;

    invoke-direct {p0}, Lcom/google/common/collect/f3$s;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/google/common/collect/j3$a$a;->a:Lcom/google/common/collect/j3$a;

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

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/j3$a$a;->a:Lcom/google/common/collect/j3$a;

    .line 2
    invoke-static {v0}, Lcom/google/common/collect/j3$a;->d(Lcom/google/common/collect/j3$a;)Lcom/google/common/collect/h3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/h3;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/j3$a$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/j3$a$a$a;-><init>(Lcom/google/common/collect/j3$a$a;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/f3;->m(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/f3$s;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/j3$a$a;->a:Lcom/google/common/collect/j3$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j3$a;->g(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
