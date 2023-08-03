.class Lcom/google/common/collect/e5$d$a;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/e5$d;->e()Lcom/google/common/base/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "Lcom/google/common/collect/d5$a<",
        "TR;TC;TV1;>;",
        "Lcom/google/common/collect/d5$a<",
        "TR;TC;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/e5$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/e5$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/e5$d$a;->a:Lcom/google/common/collect/e5$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/d5$a;)Lcom/google/common/collect/d5$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV1;>;)",
            "Lcom/google/common/collect/d5$a<",
            "TR;TC;TV2;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/collect/d5$a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/d5$a;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/e5$d$a;->a:Lcom/google/common/collect/e5$d;

    iget-object v2, v2, Lcom/google/common/collect/e5$d;->d:Lcom/google/common/base/q;

    invoke-interface {p1}, Lcom/google/common/collect/d5$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/google/common/base/q;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/common/collect/e5;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d5$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/d5$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e5$d$a;->a(Lcom/google/common/collect/d5$a;)Lcom/google/common/collect/d5$a;

    move-result-object p1

    return-object p1
.end method
