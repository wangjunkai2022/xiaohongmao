.class public final Lcom/google/common/collect/EvictingQueue;
.super Lcom/google/common/collect/w1;
.source "EvictingQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/w1<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field private static final c:J


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation
.end field

.field final b:I
    .annotation build Lh3/d;
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/w1;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxSize (%s) must >= 0"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/common/base/a0;->k(ZLjava/lang/String;I)V

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/EvictingQueue;->a:Ljava/util/Queue;

    .line 4
    iput p1, p0, Lcom/google/common/collect/EvictingQueue;->b:I

    return-void
.end method

.method public static create(I)Lcom/google/common/collect/EvictingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/EvictingQueue<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/EvictingQueue;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EvictingQueue;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/EvictingQueue;->Y()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/EvictingQueue;->Y()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method protected Y()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/EvictingQueue;->a:Ljava/util/Queue;

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/common/collect/EvictingQueue;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/e1;->size()I

    move-result v0

    iget v2, p0, Lcom/google/common/collect/EvictingQueue;->b:I

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/EvictingQueue;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/EvictingQueue;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/common/collect/EvictingQueue;->b:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/e1;->clear()V

    .line 4
    iget v1, p0, Lcom/google/common/collect/EvictingQueue;->b:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/google/common/collect/w2;->N(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/w2;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e1;->N(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/EvictingQueue;->Y()Ljava/util/Queue;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/EvictingQueue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remainingCapacity()I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/EvictingQueue;->b:I

    invoke-virtual {p0}, Lcom/google/common/collect/e1;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/EvictingQueue;->Y()Ljava/util/Queue;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
