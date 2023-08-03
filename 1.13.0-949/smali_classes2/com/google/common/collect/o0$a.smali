.class Lcom/google/common/collect/o0$a;
.super Lcom/google/common/collect/l3$i;
.source "DescendingMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/o0;->h0()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l3$i<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/o0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/o0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/o0$a;->a:Lcom/google/common/collect/o0;

    invoke-direct {p0}, Lcom/google/common/collect/l3$i;-><init>()V

    return-void
.end method


# virtual methods
.method e()Lcom/google/common/collect/k3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o0$a;->a:Lcom/google/common/collect/o0;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/k3$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o0$a;->a:Lcom/google/common/collect/o0;

    invoke-virtual {v0}, Lcom/google/common/collect/o0;->i0()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/o0$a;->a:Lcom/google/common/collect/o0;

    invoke-virtual {v0}, Lcom/google/common/collect/o0;->j0()Lcom/google/common/collect/v4;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/v4;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
