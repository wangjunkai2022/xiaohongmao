.class Lcom/google/common/collect/ImmutableRangeSet$b$b;
.super Lcom/google/common/collect/c;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableRangeSet$b;->descendingIterator()Lcom/google/common/collect/k5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/google/common/collect/ImmutableRangeSet$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeSet$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$b$b;->e:Lcom/google/common/collect/ImmutableRangeSet$b;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/ImmutableRangeSet$b;->j:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableRangeSet;->a(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/k5;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$b$b;->c:Ljava/util/Iterator;

    .line 3
    invoke-static {}, Lcom/google/common/collect/x2;->u()Lcom/google/common/collect/k5;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$b$b;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$b$b;->d()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$b$b;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$b$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$b$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$b$b;->e:Lcom/google/common/collect/ImmutableRangeSet$b;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableRangeSet$b;->C(Lcom/google/common/collect/ImmutableRangeSet$b;)Lcom/google/common/collect/p0;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/p0;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->descendingIterator()Lcom/google/common/collect/k5;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$b$b;->d:Ljava/util/Iterator;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$b$b;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method
