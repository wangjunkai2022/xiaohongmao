.class Lcom/google/common/collect/d4$a$a;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d4$a;->n()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/collect/d4$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d4$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d4$a$a;->c:Lcom/google/common/collect/d4$a;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d4$a$a;->o(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public o(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d4$a$a;->c:Lcom/google/common/collect/d4$a;

    invoke-static {v0}, Lcom/google/common/collect/d4$a;->q(Lcom/google/common/collect/d4$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/a0;->C(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/d4$a$a;->c:Lcom/google/common/collect/d4$a;

    invoke-static {v0}, Lcom/google/common/collect/d4$a;->r(Lcom/google/common/collect/d4$a;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lcom/google/common/collect/d4$a$a;->c:Lcom/google/common/collect/d4$a;

    invoke-static {v1}, Lcom/google/common/collect/d4$a;->s(Lcom/google/common/collect/d4$a;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/d4$a$a;->c:Lcom/google/common/collect/d4$a;

    invoke-static {v1}, Lcom/google/common/collect/d4$a;->r(Lcom/google/common/collect/d4$a;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/d4$a$a;->c:Lcom/google/common/collect/d4$a;

    invoke-static {v2}, Lcom/google/common/collect/d4$a;->s(Lcom/google/common/collect/d4$a;)I

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    aget-object p1, v1, p1

    .line 4
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/d4$a$a;->c:Lcom/google/common/collect/d4$a;

    invoke-static {v0}, Lcom/google/common/collect/d4$a;->q(Lcom/google/common/collect/d4$a;)I

    move-result v0

    return v0
.end method
