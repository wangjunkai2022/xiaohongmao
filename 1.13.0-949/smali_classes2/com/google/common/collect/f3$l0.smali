.class Lcom/google/common/collect/f3$l0;
.super Lcom/google/common/collect/p1;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/u;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/p1<",
        "TK;TV;>;",
        "Lcom/google/common/collect/u<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final e:J


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u<",
            "+TK;+TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/common/collect/u;
    .annotation build Lcom/google/j2objc/annotations/RetainedWith;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V
    .locals 1
    .param p2    # Lcom/google/common/collect/u;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u<",
            "+TK;+TV;>;",
            "Lcom/google/common/collect/u<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/p1;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/f3$l0;->a:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/f3$l0;->b:Lcom/google/common/collect/u;

    .line 4
    iput-object p2, p0, Lcom/google/common/collect/f3$l0;->c:Lcom/google/common/collect/u;

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/f3$l0;->M()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected M()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f3$l0;->a:Ljava/util/Map;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public inverse()Lcom/google/common/collect/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f3$l0;->c:Lcom/google/common/collect/u;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/f3$l0;

    iget-object v1, p0, Lcom/google/common/collect/f3$l0;->b:Lcom/google/common/collect/u;

    .line 3
    invoke-interface {v1}, Lcom/google/common/collect/u;->inverse()Lcom/google/common/collect/u;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/f3$l0;-><init>(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V

    iput-object v0, p0, Lcom/google/common/collect/f3$l0;->c:Lcom/google/common/collect/u;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f3$l0;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f3$l0;->d:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/f3$l0;->b:Lcom/google/common/collect/u;

    invoke-interface {v0}, Lcom/google/common/collect/u;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/f3$l0;->d:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
