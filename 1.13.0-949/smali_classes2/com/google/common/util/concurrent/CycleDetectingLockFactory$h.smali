.class Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;
.super Ljava/lang/Object;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/collect/d3;

    invoke-direct {v0}, Lcom/google/common/collect/d3;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/d3;->l()Lcom/google/common/collect/d3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/d3;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->a:Ljava/util/Map;

    .line 4
    new-instance v0, Lcom/google/common/collect/d3;

    invoke-direct {v0}, Lcom/google/common/collect/d3;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcom/google/common/collect/d3;->l()Lcom/google/common/collect/d3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/d3;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->b:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->c:Ljava/lang/String;

    return-void
.end method

.method private c(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;",
            "Ljava/util/Set<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;",
            ">;)",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    .line 5
    invoke-direct {v3, p1, p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->c(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    new-instance p1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    invoke-direct {p1, v3, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;)V

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/IllegalStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 8
    invoke-virtual {p1, v4}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object p1

    :cond_3
    return-object v1
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;)V
    .locals 3

    if-eq p0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attempted to acquire multiple locks with the same rank %s"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/common/base/a0;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    new-instance v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    .line 6
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->getConflictingStackTrace()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    move-result-object v0

    invoke-direct {v2, p2, p0, v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    .line 7
    invoke-interface {p1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lcom/google/common/collect/o4;->z()Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-direct {p2, p0, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->c(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    move-result-object v0

    if-nez v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->a:Ljava/util/Map;

    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    invoke-direct {v0, p2, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_3
    new-instance v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    invoke-direct {v2, p2, p0, v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    .line 12
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->b:Ljava/util/Map;

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V

    :goto_1
    return-void
.end method

.method b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;

    invoke-virtual {p0, p1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$i;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$h;->c:Ljava/lang/String;

    return-object v0
.end method