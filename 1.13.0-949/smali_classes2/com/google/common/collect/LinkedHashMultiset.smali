.class public final Lcom/google/common/collect/LinkedHashMultiset;
.super Lcom/google/common/collect/f;
.source "LinkedHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/f<",
        "TE;>;"
    }
.end annotation

.annotation build Lh3/b;
    emulated = true
    serializable = true
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/f;-><init>(I)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultiset;->create(I)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/LinkedHashMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultiset;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lcom/google/common/collect/l3;->l(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultiset;->create(I)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 4
    invoke-static {v0, p0}, Lcom/google/common/collect/w2;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/i;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method h(I)V
    .locals 1

    new-instance v0, Lcom/google/common/collect/r3;

    invoke-direct {v0, p1}, Lcom/google/common/collect/r3;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/f;->c:Lcom/google/common/collect/q3;

    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i;->isEmpty()Z

    move-result v0

    return v0
.end method
