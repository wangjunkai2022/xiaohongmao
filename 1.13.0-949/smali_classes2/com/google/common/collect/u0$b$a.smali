.class Lcom/google/common/collect/u0$b$a;
.super Lcom/google/common/collect/l3$i;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u0$b;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l3$i<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/u0$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/u0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/u0$b$a;->a:Lcom/google/common/collect/u0$b;

    invoke-direct {p0}, Lcom/google/common/collect/l3$i;-><init>()V

    return-void
.end method

.method private f(Lcom/google/common/base/b0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/b0<",
            "-",
            "Lcom/google/common/collect/k3$a<",
            "TK;>;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u0$b$a;->a:Lcom/google/common/collect/u0$b;

    iget-object v0, v0, Lcom/google/common/collect/u0$b;->d:Lcom/google/common/collect/u0;

    new-instance v1, Lcom/google/common/collect/u0$b$a$a;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/u0$b$a$a;-><init>(Lcom/google/common/collect/u0$b$a;Lcom/google/common/base/b0;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/u0;->m(Lcom/google/common/base/b0;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method e()Lcom/google/common/collect/k3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k3<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u0$b$a;->a:Lcom/google/common/collect/u0$b;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/k3$a<",
            "TK;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u0$b$a;->a:Lcom/google/common/collect/u0$b;

    invoke-virtual {v0}, Lcom/google/common/collect/j3$g;->d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/c0;->n(Ljava/util/Collection;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/u0$b$a;->f(Lcom/google/common/base/b0;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/c0;->n(Ljava/util/Collection;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/c0;->q(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/u0$b$a;->f(Lcom/google/common/base/b0;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/u0$b$a;->a:Lcom/google/common/collect/u0$b;

    iget-object v0, v0, Lcom/google/common/collect/u0$b;->d:Lcom/google/common/collect/u0;

    invoke-virtual {v0}, Lcom/google/common/collect/h;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
