.class Lcom/google/common/collect/i5$d$b$c;
.super Lcom/google/common/collect/c;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i5$d$b;->b()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/common/collect/Range<",
        "TK;>;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/collect/i5$d$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i5$d$b;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i5$d$b$c;->d:Lcom/google/common/collect/i5$d$b;

    iput-object p2, p0, Lcom/google/common/collect/i5$d$b$c;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i5$d$b$c;->d()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/i5$d$b$c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/i5$d$b$c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/i5$c;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/i5$c;->i()Lcom/google/common/collect/k0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/i5$d$b$c;->d:Lcom/google/common/collect/i5$d$b;

    iget-object v2, v2, Lcom/google/common/collect/i5$d$b;->a:Lcom/google/common/collect/i5$d;

    invoke-static {v2}, Lcom/google/common/collect/i5$d;->a(Lcom/google/common/collect/i5$d;)Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/k0;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/k0;->h(Lcom/google/common/collect/k0;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/i5$c;->j()Lcom/google/common/collect/k0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/i5$d$b$c;->d:Lcom/google/common/collect/i5$d$b;

    iget-object v2, v2, Lcom/google/common/collect/i5$d$b;->a:Lcom/google/common/collect/i5$d;

    invoke-static {v2}, Lcom/google/common/collect/i5$d;->a(Lcom/google/common/collect/i5$d;)Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/k0;->h(Lcom/google/common/collect/k0;)I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/i5$c;->h()Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/i5$d$b$c;->d:Lcom/google/common/collect/i5$d$b;

    iget-object v2, v2, Lcom/google/common/collect/i5$d$b;->a:Lcom/google/common/collect/i5$d;

    invoke-static {v2}, Lcom/google/common/collect/i5$d;->a(Lcom/google/common/collect/i5$d;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/i5$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/f3;->O(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
