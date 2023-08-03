.class Lcom/google/common/graph/a0$c;
.super Lcom/google/common/graph/u;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/u<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/k0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/u;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/graph/a0$c;->a:Lcom/google/common/graph/k0;

    return-void
.end method

.method static synthetic R(Lcom/google/common/graph/a0$c;)Lcom/google/common/graph/k0;
    .locals 0

    iget-object p0, p0, Lcom/google/common/graph/a0$c;->a:Lcom/google/common/graph/k0;

    return-object p0
.end method


# virtual methods
.method public C(Lcom/google/common/graph/r;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/a0;->q(Lcom/google/common/graph/r;)Lcom/google/common/graph/r;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->C(Lcom/google/common/graph/r;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public D(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/k0;->D(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/lang/Object;)Lcom/google/common/graph/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/r<",
            "TN;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->E(Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/a0$c;->a:Lcom/google/common/graph/k0;

    invoke-virtual {p1}, Lcom/google/common/graph/r;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/graph/r;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/graph/r;->g(Lcom/google/common/graph/k0;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/r;

    move-result-object p1

    return-object p1
.end method

.method public H(Lcom/google/common/graph/r;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/a0;->q(Lcom/google/common/graph/r;)Lcom/google/common/graph/r;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->H(Lcom/google/common/graph/r;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public J(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->u(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected Q()Lcom/google/common/graph/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/k0<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/a0$c;->a:Lcom/google/common/graph/k0;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a0$c;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a0$c;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/k0;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/google/common/graph/r;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/r<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/a0;->q(Lcom/google/common/graph/r;)Lcom/google/common/graph/r;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->f(Lcom/google/common/graph/r;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public u(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/k0;->J(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/graph/a0$c;->Q()Lcom/google/common/graph/k0;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/k0;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
