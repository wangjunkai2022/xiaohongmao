.class Lcom/google/common/graph/r0$a;
.super Lcom/google/common/graph/g0;
.source "UndirectedMultiNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/r0;->l(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/g0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/google/common/graph/r0;


# direct methods
.method constructor <init>(Lcom/google/common/graph/r0;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/graph/r0$a;->d:Lcom/google/common/graph/r0;

    iput-object p4, p0, Lcom/google/common/graph/r0$a;->c:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/g0;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/graph/r0$a;->d:Lcom/google/common/graph/r0;

    invoke-static {v0}, Lcom/google/common/graph/r0;->m(Lcom/google/common/graph/r0;)Lcom/google/common/collect/k3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/r0$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/collect/k3;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
