.class public final Lcom/google/common/graph/x;
.super Lcom/google/common/graph/d;
.source "GraphBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/d<",
        "TN;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/graph/d;-><init>(Z)V

    return-void
.end method

.method private c()Lcom/google/common/graph/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lcom/google/common/graph/x<",
            "TN1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public static d()Lcom/google/common/graph/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/x<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/x;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/graph/x;-><init>(Z)V

    return-object v0
.end method

.method public static f(Lcom/google/common/graph/w;)Lcom/google/common/graph/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/w<",
            "TN;>;)",
            "Lcom/google/common/graph/x<",
            "TN;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/x;

    invoke-interface {p0}, Lcom/google/common/graph/w;->e()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/x;-><init>(Z)V

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/w;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/x;->a(Z)Lcom/google/common/graph/x;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/w;->h()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/graph/x;->g(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/x;

    move-result-object p0

    return-object p0
.end method

.method public static h()Lcom/google/common/graph/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/x<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/graph/x;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/google/common/graph/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/x<",
            "TN;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/common/graph/d;->b:Z

    return-object p0
.end method

.method public b()Lcom/google/common/graph/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lcom/google/common/graph/h0<",
            "TN1;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/i;

    invoke-direct {v0, p0}, Lcom/google/common/graph/i;-><init>(Lcom/google/common/graph/d;)V

    return-object v0
.end method

.method public e(I)Lcom/google/common/graph/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/x<",
            "TN;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/graph/a0;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/d;->d:Lcom/google/common/base/Optional;

    return-object p0
.end method

.method public g(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lcom/google/common/graph/x<",
            "TN1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/x;->c()Lcom/google/common/graph/x;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/ElementOrder;

    iput-object p1, v0, Lcom/google/common/graph/d;->c:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method
