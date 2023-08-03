.class public final Lcom/google/common/graph/l0;
.super Lcom/google/common/graph/d;
.source "NetworkBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/d<",
        "TN;>;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# instance fields
.field e:Z

.field f:Lcom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/ElementOrder<",
            "-TE;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/graph/d;-><init>(Z)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/common/graph/l0;->e:Z

    .line 3
    invoke-static {}, Lcom/google/common/graph/ElementOrder;->d()Lcom/google/common/graph/ElementOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/l0;->f:Lcom/google/common/graph/ElementOrder;

    .line 4
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/l0;->g:Lcom/google/common/base/Optional;

    return-void
.end method

.method private d()Lcom/google/common/graph/l0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lcom/google/common/graph/l0<",
            "TN1;TE1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public static e()Lcom/google/common/graph/l0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/l0<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/l0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/graph/l0;-><init>(Z)V

    return-object v0
.end method

.method public static i(Lcom/google/common/graph/k0;)Lcom/google/common/graph/l0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)",
            "Lcom/google/common/graph/l0<",
            "TN;TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/graph/l0;

    invoke-interface {p0}, Lcom/google/common/graph/k0;->e()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/graph/l0;-><init>(Z)V

    .line 2
    invoke-interface {p0}, Lcom/google/common/graph/k0;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/l0;->a(Z)Lcom/google/common/graph/l0;

    move-result-object v0

    .line 3
    invoke-interface {p0}, Lcom/google/common/graph/k0;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/l0;->b(Z)Lcom/google/common/graph/l0;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lcom/google/common/graph/k0;->h()Lcom/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/l0;->j(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/l0;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/google/common/graph/k0;->G()Lcom/google/common/graph/ElementOrder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/graph/l0;->f(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/l0;

    move-result-object p0

    return-object p0
.end method

.method public static k()Lcom/google/common/graph/l0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/l0<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/l0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/graph/l0;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/google/common/graph/l0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/l0<",
            "TN;TE;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/common/graph/l0;->e:Z

    return-object p0
.end method

.method public b(Z)Lcom/google/common/graph/l0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/graph/l0<",
            "TN;TE;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/common/graph/d;->b:Z

    return-object p0
.end method

.method public c()Lcom/google/common/graph/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lcom/google/common/graph/i0<",
            "TN1;TE1;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/j;

    invoke-direct {v0, p0}, Lcom/google/common/graph/j;-><init>(Lcom/google/common/graph/l0;)V

    return-object v0
.end method

.method public f(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:TE;>(",
            "Lcom/google/common/graph/ElementOrder<",
            "TE1;>;)",
            "Lcom/google/common/graph/l0<",
            "TN;TE1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/l0;->d()Lcom/google/common/graph/l0;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/ElementOrder;

    iput-object p1, v0, Lcom/google/common/graph/l0;->f:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public g(I)Lcom/google/common/graph/l0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/l0<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/graph/a0;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/l0;->g:Lcom/google/common/base/Optional;

    return-object p0
.end method

.method public h(I)Lcom/google/common/graph/l0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/graph/l0<",
            "TN;TE;>;"
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

.method public j(Lcom/google/common/graph/ElementOrder;)Lcom/google/common/graph/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lcom/google/common/graph/l0<",
            "TN1;TE;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/l0;->d()Lcom/google/common/graph/l0;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/ElementOrder;

    iput-object p1, v0, Lcom/google/common/graph/d;->c:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method
