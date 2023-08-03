.class Lcom/google/common/collect/i$a;
.super Lcom/google/common/collect/l3$h;
.source "AbstractMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l3$h<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/i;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i$a;->a:Lcom/google/common/collect/i;

    invoke-direct {p0}, Lcom/google/common/collect/l3$h;-><init>()V

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

    iget-object v0, p0, Lcom/google/common/collect/i$a;->a:Lcom/google/common/collect/i;

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

    iget-object v0, p0, Lcom/google/common/collect/i$a;->a:Lcom/google/common/collect/i;

    invoke-virtual {v0}, Lcom/google/common/collect/i;->c()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
