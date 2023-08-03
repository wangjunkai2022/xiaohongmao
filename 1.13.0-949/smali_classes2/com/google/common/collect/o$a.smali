.class Lcom/google/common/collect/o$a;
.super Lcom/google/common/collect/o0;
.source "AbstractSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/o;->e()Lcom/google/common/collect/v4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/o0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/o;


# direct methods
.method constructor <init>(Lcom/google/common/collect/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/o$a;->d:Lcom/google/common/collect/o;

    invoke-direct {p0}, Lcom/google/common/collect/o0;-><init>()V

    return-void
.end method


# virtual methods
.method i0()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o$a;->d:Lcom/google/common/collect/o;

    invoke-virtual {v0}, Lcom/google/common/collect/o;->j()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o$a;->d:Lcom/google/common/collect/o;

    invoke-virtual {v0}, Lcom/google/common/collect/o;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method j0()Lcom/google/common/collect/v4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v4<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o$a;->d:Lcom/google/common/collect/o;

    return-object v0
.end method
