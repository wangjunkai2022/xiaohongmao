.class Lcom/google/common/collect/j5$d;
.super Lcom/google/common/collect/c1;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/j5;->a(Ljava/lang/Object;)Lcom/google/common/collect/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/google/common/collect/j5;


# direct methods
.method constructor <init>(Lcom/google/common/collect/j5;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/j5$d;->c:Lcom/google/common/collect/j5;

    iput-object p2, p0, Lcom/google/common/collect/j5$d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public P()Lcom/google/common/collect/k5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k5<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/j5$e;

    iget-object v1, p0, Lcom/google/common/collect/j5$d;->c:Lcom/google/common/collect/j5;

    iget-object v2, p0, Lcom/google/common/collect/j5$d;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/j5$e;-><init>(Lcom/google/common/collect/j5;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/j5$d;->P()Lcom/google/common/collect/k5;

    move-result-object v0

    return-object v0
.end method
