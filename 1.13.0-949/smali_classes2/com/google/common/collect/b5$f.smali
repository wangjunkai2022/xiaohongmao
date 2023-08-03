.class Lcom/google/common/collect/b5$f;
.super Lcom/google/common/collect/f3$r0;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/b5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/b5$f$b;,
        Lcom/google/common/collect/b5$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$r0<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/b5;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/b5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-direct {p0}, Lcom/google/common/collect/f3$r0;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/b5;Lcom/google/common/collect/b5$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/b5$f;-><init>(Lcom/google/common/collect/b5;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b5$f$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b5$f$a;-><init>(Lcom/google/common/collect/b5$f;)V

    return-object v0
.end method

.method c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b5$f$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/b5$f$b;-><init>(Lcom/google/common/collect/b5$f;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b5;->containsColumn(Ljava/lang/Object;)Z

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
            "TR;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b5;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b5;->column(Ljava/lang/Object;)Ljava/util/Map;

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
            "TR;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b5;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-static {v0, p1}, Lcom/google/common/collect/b5;->i(Lcom/google/common/collect/b5;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/b5$f;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/b5$f;->d:Lcom/google/common/collect/b5;

    invoke-virtual {v0}, Lcom/google/common/collect/b5;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/b5$f;->e(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
