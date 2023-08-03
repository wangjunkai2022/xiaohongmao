.class Lcom/google/common/graph/a0$b;
.super Lcom/google/common/graph/t;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/t<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/graph/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/w<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/w<",
            "TN;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/graph/t;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/graph/a0$b;->a:Lcom/google/common/graph/w;

    return-void
.end method

.method static synthetic Q(Lcom/google/common/graph/a0$b;)Lcom/google/common/graph/w;
    .locals 0

    iget-object p0, p0, Lcom/google/common/graph/a0$b;->a:Lcom/google/common/graph/w;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic P()Lcom/google/common/graph/h;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/graph/a0$b;->R()Lcom/google/common/graph/w;

    move-result-object v0

    return-object v0
.end method

.method protected R()Lcom/google/common/graph/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/w<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/a0$b;->a:Lcom/google/common/graph/w;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a0$b;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, Lcom/google/common/graph/a0$b;->R()Lcom/google/common/graph/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/w;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a0$b;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, Lcom/google/common/graph/a0$b;->R()Lcom/google/common/graph/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/w;->a(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, Lcom/google/common/graph/a0$b;->R()Lcom/google/common/graph/w;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/w;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/a0$b;->R()Lcom/google/common/graph/w;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/a0;->q(Lcom/google/common/graph/r;)Lcom/google/common/graph/r;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/graph/w;->f(Lcom/google/common/graph/r;)Z

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

    invoke-virtual {p0}, Lcom/google/common/graph/a0$b;->R()Lcom/google/common/graph/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/w;->n(Ljava/lang/Object;)I

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

    invoke-virtual {p0}, Lcom/google/common/graph/a0$b;->R()Lcom/google/common/graph/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/w;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
