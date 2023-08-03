.class Lcom/google/common/collect/z3$c;
.super Lcom/google/common/collect/i2;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/z3;->n()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/i2<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/z3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/z3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/z3$c;->c:Lcom/google/common/collect/z3;

    invoke-direct {p0}, Lcom/google/common/collect/i2;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/z3$c;->q(I)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic o()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/z3$c;->p()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method p()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/z3$c;->c:Lcom/google/common/collect/z3;

    return-object v0
.end method

.method public q(I)Ljava/lang/Comparable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TC;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/i2;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/a0;->C(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/z3$c;->c:Lcom/google/common/collect/z3;

    iget-object v1, v0, Lcom/google/common/collect/ContiguousSet;->h:Lcom/google/common/collect/p0;

    invoke-virtual {v0}, Lcom/google/common/collect/z3;->H()Ljava/lang/Comparable;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/common/collect/p0;->j(Ljava/lang/Comparable;J)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
