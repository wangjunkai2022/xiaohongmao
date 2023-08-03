.class Lcom/google/common/collect/i3$k$e;
.super Lcom/google/common/collect/i3$m;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i3$k;->k(Ljava/util/Comparator;)Lcom/google/common/collect/i3$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/i3$m<",
        "TK0;TV0;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/util/Comparator;

.field final synthetic c:Lcom/google/common/collect/i3$k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/i3$k;Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/i3$k$e;->c:Lcom/google/common/collect/i3$k;

    iput-object p2, p0, Lcom/google/common/collect/i3$k$e;->b:Ljava/util/Comparator;

    invoke-direct {p0}, Lcom/google/common/collect/i3$m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/h3;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i3$k$e;->l()Lcom/google/common/collect/y4;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Lcom/google/common/collect/n4;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i3$k$e;->l()Lcom/google/common/collect/y4;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/common/collect/y4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/y4<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/i3$k$e;->c:Lcom/google/common/collect/i3$k;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/i3$k;->c()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/i3$n;

    iget-object v2, p0, Lcom/google/common/collect/i3$k$e;->b:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Lcom/google/common/collect/i3$n;-><init>(Ljava/util/Comparator;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/j3;->x(Ljava/util/Map;Lcom/google/common/base/i0;)Lcom/google/common/collect/y4;

    move-result-object v0

    return-object v0
.end method
