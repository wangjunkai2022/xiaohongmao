.class final Lcom/google/common/graph/i;
.super Lcom/google/common/graph/t;
.source "ConfigurableMutableGraph.java"

# interfaces
.implements Lcom/google/common/graph/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/t<",
        "TN;>;",
        "Lcom/google/common/graph/h0<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/j0<",
            "TN;",
            "Lcom/google/common/graph/z$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/d<",
            "-TN;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/t;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/graph/k;

    invoke-direct {v0, p1}, Lcom/google/common/graph/k;-><init>(Lcom/google/common/graph/d;)V

    iput-object v0, p0, Lcom/google/common/graph/i;->a:Lcom/google/common/graph/j0;

    return-void
.end method


# virtual methods
.method public A(Lcom/google/common/graph/r;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a;->O(Lcom/google/common/graph/r;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/r;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/graph/i;->F(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public F(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/i;->a:Lcom/google/common/graph/j0;

    sget-object v1, Lcom/google/common/graph/z$a;->a:Lcom/google/common/graph/z$a;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/common/graph/j0;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected P()Lcom/google/common/graph/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/h<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/i;->a:Lcom/google/common/graph/j0;

    return-object v0
.end method

.method public o(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/i;->a:Lcom/google/common/graph/j0;

    invoke-interface {v0, p1}, Lcom/google/common/graph/j0;->o(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/i;->a:Lcom/google/common/graph/j0;

    invoke-interface {v0, p1}, Lcom/google/common/graph/j0;->p(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public q(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/i;->a:Lcom/google/common/graph/j0;

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/j0;->q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public r(Lcom/google/common/graph/r;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a;->O(Lcom/google/common/graph/r;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/r;->e()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/graph/i;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
