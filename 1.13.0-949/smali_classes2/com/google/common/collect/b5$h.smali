.class Lcom/google/common/collect/b5$h;
.super Lcom/google/common/collect/f3$r0;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/b5$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$r0<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/b5;


# direct methods
.method constructor <init>(Lcom/google/common/collect/b5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/b5$h;->d:Lcom/google/common/collect/b5;

    invoke-direct {p0}, Lcom/google/common/collect/f3$r0;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b5$h$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b5$h$a;-><init>(Lcom/google/common/collect/b5$h;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b5$h;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b5;->containsRow(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b5$h;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b5;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/b5$h;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b5;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public e(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/b5$h;->d:Lcom/google/common/collect/b5;

    iget-object v0, v0, Lcom/google/common/collect/b5;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/b5$h;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/b5$h;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method