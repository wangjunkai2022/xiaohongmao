.class Lcom/google/common/collect/i5$d$a;
.super Lcom/google/common/collect/i5$d$b;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i5$d;->asDescendingMapOfRanges()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/i5<",
        "TK;TV;>.d.b;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/i5$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i5$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i5$d$a;->b:Lcom/google/common/collect/i5$d;

    invoke-direct {p0, p1}, Lcom/google/common/collect/i5$d$b;-><init>(Lcom/google/common/collect/i5$d;)V

    return-void
.end method


# virtual methods
.method b()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i5$d$a;->b:Lcom/google/common/collect/i5$d;

    invoke-static {v0}, Lcom/google/common/collect/i5$d;->a(Lcom/google/common/collect/i5$d;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/x2;->u()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/i5$d$a;->b:Lcom/google/common/collect/i5$d;

    iget-object v0, v0, Lcom/google/common/collect/i5$d;->b:Lcom/google/common/collect/i5;

    .line 4
    invoke-static {v0}, Lcom/google/common/collect/i5;->a(Lcom/google/common/collect/i5;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/i5$d$a;->b:Lcom/google/common/collect/i5$d;

    .line 5
    invoke-static {v1}, Lcom/google/common/collect/i5$d;->a(Lcom/google/common/collect/i5$d;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/k0;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/common/collect/i5$d$a$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/i5$d$a$a;-><init>(Lcom/google/common/collect/i5$d$a;Ljava/util/Iterator;)V

    return-object v1
.end method
