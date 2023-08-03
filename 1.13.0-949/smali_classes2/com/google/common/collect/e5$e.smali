.class Lcom/google/common/collect/e5$e;
.super Lcom/google/common/collect/q;
.source "Tables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/q<",
        "TC;TR;TV;>;"
    }
.end annotation


# static fields
.field private static final d:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q<",
            "Lcom/google/common/collect/d5$a<",
            "***>;",
            "Lcom/google/common/collect/d5$a<",
            "***>;>;"
        }
    .end annotation
.end field


# instance fields
.field final c:Lcom/google/common/collect/d5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d5<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/e5$e$a;

    invoke-direct {v0}, Lcom/google/common/collect/e5$e$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/e5$e;->d:Lcom/google/common/base/q;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/d5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d5<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/d5;

    iput-object p1, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    return-void
.end method


# virtual methods
.method a()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/d5$a<",
            "TC;TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/e5$e;->d:Lcom/google/common/base/q;

    invoke-static {v0, v1}, Lcom/google/common/collect/x2;->c0(Ljava/util/Iterator;Lcom/google/common/base/q;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->clear()V

    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p1}, Lcom/google/common/collect/d5;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->rowMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/d5;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p1}, Lcom/google/common/collect/d5;->containsRow(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p1}, Lcom/google/common/collect/d5;->containsColumn(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p1}, Lcom/google/common/collect/d5;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/d5;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TR;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p2, p1, p3}, Lcom/google/common/collect/d5;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Lcom/google/common/collect/d5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/d5<",
            "+TC;+TR;+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-static {p1}, Lcom/google/common/collect/e5;->g(Lcom/google/common/collect/d5;)Lcom/google/common/collect/d5;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/d5;->putAll(Lcom/google/common/collect/d5;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/d5;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0, p1}, Lcom/google/common/collect/d5;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e5$e;->c:Lcom/google/common/collect/d5;

    invoke-interface {v0}, Lcom/google/common/collect/d5;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
