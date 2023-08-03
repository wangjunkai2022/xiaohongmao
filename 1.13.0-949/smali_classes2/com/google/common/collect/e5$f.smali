.class final Lcom/google/common/collect/e5$f;
.super Lcom/google/common/collect/e5$g;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/collect/l4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/e5$g<",
        "TR;TC;TV;>;",
        "Lcom/google/common/collect/l4<",
        "TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final c:J


# direct methods
.method public constructor <init>(Lcom/google/common/collect/l4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l4<",
            "TR;+TC;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/e5$g;-><init>(Lcom/google/common/collect/d5;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e5$f;->N()Lcom/google/common/collect/l4;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Lcom/google/common/collect/d5;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e5$f;->N()Lcom/google/common/collect/l4;

    move-result-object v0

    return-object v0
.end method

.method protected N()Lcom/google/common/collect/l4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/l4<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/e5$g;->M()Lcom/google/common/collect/d5;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/l4;

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e5$f;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/e5$f;->N()Lcom/google/common/collect/l4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/l4;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e5$f;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/common/collect/e5;->a()Lcom/google/common/base/q;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/e5$f;->N()Lcom/google/common/collect/l4;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/l4;->rowMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/f3;->D0(Ljava/util/SortedMap;Lcom/google/common/base/q;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
