.class Lcom/google/common/collect/u0$a$a;
.super Lcom/google/common/collect/f3$s;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/u0$a;->a()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f3$s<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/u0$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/u0$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/u0$a$a;->a:Lcom/google/common/collect/u0$a;

    invoke-direct {p0}, Lcom/google/common/collect/f3$s;-><init>()V

    return-void
.end method


# virtual methods
.method e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u0$a$a;->a:Lcom/google/common/collect/u0$a;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/u0$a$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/u0$a$a$a;-><init>(Lcom/google/common/collect/u0$a$a;)V

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u0$a$a;->a:Lcom/google/common/collect/u0$a;

    iget-object v0, v0, Lcom/google/common/collect/u0$a;->d:Lcom/google/common/collect/u0;

    invoke-static {p1}, Lcom/google/common/base/c0;->n(Ljava/util/Collection;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u0;->m(Lcom/google/common/base/b0;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/u0$a$a;->a:Lcom/google/common/collect/u0$a;

    iget-object v0, v0, Lcom/google/common/collect/u0$a;->d:Lcom/google/common/collect/u0;

    invoke-static {p1}, Lcom/google/common/base/c0;->n(Ljava/util/Collection;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/c0;->q(Lcom/google/common/base/b0;)Lcom/google/common/base/b0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/u0;->m(Lcom/google/common/base/b0;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/u0$a$a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/x2;->Z(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
