.class Lcom/google/common/collect/c5$x$b;
.super Ljava/lang/Object;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c5$x;->columnMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "Ljava/util/Map<",
        "TR;TV;>;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/c5$x;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c5$x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/c5$x$b;->a:Lcom/google/common/collect/c5$x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TR;TV;>;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/c5$x$b;->a:Lcom/google/common/collect/c5$x;

    iget-object v0, v0, Lcom/google/common/collect/c5$p;->b:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/common/collect/c5;->l(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/c5$x$b;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
