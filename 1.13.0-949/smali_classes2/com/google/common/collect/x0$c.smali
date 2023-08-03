.class Lcom/google/common/collect/x0$c;
.super Lcom/google/common/collect/e1;
.source "FilteredKeyMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e1<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/x0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/x0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/x0$c;->a:Lcom/google/common/collect/x0;

    invoke-direct {p0}, Lcom/google/common/collect/e1;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/x0$c;->M()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected M()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/x0$c;->a:Lcom/google/common/collect/x0;

    iget-object v0, v0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    invoke-interface {v0}, Lcom/google/common/collect/h3;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/x0$c;->a:Lcom/google/common/collect/x0;

    invoke-virtual {v1}, Lcom/google/common/collect/x0;->v()Lcom/google/common/base/b0;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/z;->e(Ljava/util/Collection;Lcom/google/common/base/b0;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/x0$c;->a:Lcom/google/common/collect/x0;

    iget-object v0, v0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/h3;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/x0$c;->a:Lcom/google/common/collect/x0;

    iget-object v0, v0, Lcom/google/common/collect/x0;->g:Lcom/google/common/base/b0;

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/b0;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/x0$c;->a:Lcom/google/common/collect/x0;

    iget-object v0, v0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/h3;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/h3;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
