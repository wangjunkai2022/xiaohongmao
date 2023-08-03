.class final Lcom/google/common/graph/p0$d$e;
.super Lcom/google/common/collect/c;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/p0$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/p0$d$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/common/graph/p0$d<",
            "TN;>.e.a;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/google/common/graph/p0$d;


# direct methods
.method constructor <init>(Lcom/google/common/graph/p0$d;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/graph/p0$d$e;->d:Lcom/google/common/graph/p0$d;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/p0$d$e;->c:Ljava/util/ArrayDeque;

    .line 3
    new-instance v0, Lcom/google/common/graph/p0$d$e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/common/graph/p0$d$e$a;-><init>(Lcom/google/common/graph/p0$d$e;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/p0$d$e;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/common/graph/p0$d$e;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/p0$d$e$a;

    .line 3
    iget-object v1, v0, Lcom/google/common/graph/p0$d$e$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, v0, Lcom/google/common/graph/p0$d$e$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/common/graph/p0$d$e;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/google/common/graph/p0$d$e;->d(Ljava/lang/Object;)Lcom/google/common/graph/p0$d$e$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/graph/p0$d$e;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 7
    iget-object v0, v0, Lcom/google/common/graph/p0$d$e$a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method d(Ljava/lang/Object;)Lcom/google/common/graph/p0$d$e$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/p0$d<",
            "TN;>.e.a;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/graph/p0$d$e$a;

    iget-object v1, p0, Lcom/google/common/graph/p0$d$e;->d:Lcom/google/common/graph/p0$d;

    invoke-static {v1}, Lcom/google/common/graph/p0$d;->i(Lcom/google/common/graph/p0$d;)Lcom/google/common/graph/o0;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/graph/o0;->b(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/p0$d$e$a;-><init>(Lcom/google/common/graph/p0$d$e;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method
