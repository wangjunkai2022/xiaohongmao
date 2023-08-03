.class final Lcom/google/common/collect/e5$e$a;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e5$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q<",
        "Lcom/google/common/collect/d5$a<",
        "***>;",
        "Lcom/google/common/collect/d5$a<",
        "***>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/d5$a;)Lcom/google/common/collect/d5$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d5$a<",
            "***>;)",
            "Lcom/google/common/collect/d5$a<",
            "***>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/d5$a;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/d5$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/d5$a;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/e5;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d5$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/d5$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/e5$e$a;->a(Lcom/google/common/collect/d5$a;)Lcom/google/common/collect/d5$a;

    move-result-object p1

    return-object p1
.end method
