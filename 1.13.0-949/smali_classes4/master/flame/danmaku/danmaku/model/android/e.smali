.class public Lmaster/flame/danmaku/danmaku/model/android/e;
.super Ljava/lang/Object;
.source "Danmakus.java"

# interfaces
.implements Lmaster/flame/danmaku/danmaku/model/m;


# instance fields
.field public e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lmaster/flame/danmaku/danmaku/model/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lmaster/flame/danmaku/danmaku/model/android/e;

.field private g:Lmaster/flame/danmaku/danmaku/model/d;

.field private h:Lmaster/flame/danmaku/danmaku/model/d;

.field private i:Lmaster/flame/danmaku/danmaku/model/d;

.field private j:Lmaster/flame/danmaku/danmaku/model/d;

.field private volatile k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private l:I

.field private m:Lmaster/flame/danmaku/danmaku/model/m$a;

.field private n:Z

.field private o:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(IZLmaster/flame/danmaku/danmaku/model/m$a;)V

    return-void
.end method

.method public constructor <init>(IZLmaster/flame/danmaku/danmaku/model/m$a;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->l:I

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    if-nez p1, :cond_0

    if-nez p3, :cond_3

    .line 8
    new-instance p3, Lmaster/flame/danmaku/danmaku/model/m$d;

    invoke-direct {p3, p2}, Lmaster/flame/danmaku/danmaku/model/m$d;-><init>(Z)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 9
    new-instance p3, Lmaster/flame/danmaku/danmaku/model/m$e;

    invoke-direct {p3, p2}, Lmaster/flame/danmaku/danmaku/model/m$e;-><init>(Z)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    .line 10
    new-instance p3, Lmaster/flame/danmaku/danmaku/model/m$f;

    invoke-direct {p3, p2}, Lmaster/flame/danmaku/danmaku/model/m$f;-><init>(Z)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :cond_3
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 11
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    goto :goto_1

    .line 12
    :cond_4
    iput-boolean p2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->n:Z

    .line 13
    invoke-virtual {p3, p2}, Lmaster/flame/danmaku/danmaku/model/m$a;->b(Z)V

    .line 14
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2, p3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    .line 15
    iput-object p3, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->m:Lmaster/flame/danmaku/danmaku/model/m$a;

    .line 16
    :goto_1
    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->l:I

    .line 17
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmaster/flame/danmaku/danmaku/model/d;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->l:I

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    .line 22
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/e;->m(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(IZ)V

    return-void
.end method

.method private k(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/d;
    .locals 1

    new-instance v0, Lmaster/flame/danmaku/danmaku/model/e;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/model/e;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private l(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->m:Lmaster/flame/danmaku/danmaku/model/m$a;

    invoke-virtual {v0, p1}, Lmaster/flame/danmaku/danmaku/model/m$a;->b(Z)V

    .line 2
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->n:Z

    return-void
.end method

.method private n(JJ)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Collection<",
            "Lmaster/flame/danmaku/danmaku/model/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->l:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    iget-boolean v1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->n:Z

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    .line 4
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    .line 5
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->j:Lmaster/flame/danmaku/danmaku/model/d;

    if-nez v0, :cond_2

    const-string v0, "start"

    .line 6
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->k(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->j:Lmaster/flame/danmaku/danmaku/model/d;

    .line 7
    :cond_2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->i:Lmaster/flame/danmaku/danmaku/model/d;

    if-nez v0, :cond_3

    const-string v0, "end"

    .line 8
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->k(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->i:Lmaster/flame/danmaku/danmaku/model/d;

    .line 9
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->j:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/d;->G(J)V

    .line 10
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->i:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p1, p3, p4}, Lmaster/flame/danmaku/danmaku/model/d;->G(J)V

    .line 11
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    check-cast p1, Ljava/util/SortedSet;

    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->j:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object p3, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->i:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-interface {p1, p2, p3}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lmaster/flame/danmaku/danmaku/model/m$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/m$b<",
            "-",
            "Lmaster/flame/danmaku/danmaku/model/d;",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/android/e;->h(Lmaster/flame/danmaku/danmaku/model/m$b;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lmaster/flame/danmaku/danmaku/model/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->n:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->h:Lmaster/flame/danmaku/danmaku/model/d;

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->g:Lmaster/flame/danmaku/danmaku/model/d;

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    .line 5
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    iput-object v1, v0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/model/android/e;->l(Z)V

    return-void
.end method

.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 4
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    const-string v0, "start"

    .line 8
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->k(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->g:Lmaster/flame/danmaku/danmaku/model/d;

    const-string v0, "end"

    .line 9
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->k(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->h:Lmaster/flame/danmaku/danmaku/model/d;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d(JJ)Lmaster/flame/danmaku/danmaku/model/m;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lmaster/flame/danmaku/danmaku/model/android/e;->n(JJ)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance p1, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {p1, p2}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public f(JJ)Lmaster/flame/danmaku/danmaku/model/m;
    .locals 5

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->l:I

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {v0, v1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(I)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    .line 5
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    iput-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    iget-object v3, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lmaster/flame/danmaku/danmaku/model/android/e;->m(Ljava/util/Collection;)V

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9
    :cond_1
    new-instance v0, Lmaster/flame/danmaku/danmaku/model/android/e;

    iget-boolean v2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->n:Z

    invoke-direct {v0, v2}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>(Z)V

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    .line 10
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    iput-object v2, v0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    .line 11
    :cond_2
    :goto_0
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->l:I

    if-ne v0, v1, :cond_3

    .line 12
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    return-object p1

    .line 13
    :cond_3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->g:Lmaster/flame/danmaku/danmaku/model/d;

    if-nez v0, :cond_4

    const-string v0, "start"

    .line 14
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->k(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->g:Lmaster/flame/danmaku/danmaku/model/d;

    .line 15
    :cond_4
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->h:Lmaster/flame/danmaku/danmaku/model/d;

    if-nez v0, :cond_5

    const-string v0, "end"

    .line 16
    invoke-direct {p0, v0}, Lmaster/flame/danmaku/danmaku/model/android/e;->k(Ljava/lang/String;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->h:Lmaster/flame/danmaku/danmaku/model/d;

    .line 17
    :cond_5
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->g:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6

    .line 19
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->h:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_6

    .line 20
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    return-object p1

    .line 21
    :cond_6
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->g:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v0, p1, p2}, Lmaster/flame/danmaku/danmaku/model/d;->G(J)V

    .line 22
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->h:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p1, p3, p4}, Lmaster/flame/danmaku/danmaku/model/d;->G(J)V

    .line 23
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    monitor-enter p1

    .line 24
    :try_start_1
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    iget-object p3, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    check-cast p3, Ljava/util/SortedSet;

    iget-object p4, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->g:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->h:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-interface {p3, p4, v0}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmaster/flame/danmaku/danmaku/model/android/e;->m(Ljava/util/Collection;)V

    .line 25
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->f:Lmaster/flame/danmaku/danmaku/model/android/e;

    return-object p1

    :catchall_1
    move-exception p2

    .line 27
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public first()Lmaster/flame/danmaku/danmaku/model/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/d;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/d;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/d;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lmaster/flame/danmaku/danmaku/model/d;->J(Z)V

    .line 3
    :cond_1
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    const/4 p1, 0x1

    .line 6
    monitor-exit v1

    return p1

    .line 7
    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Lmaster/flame/danmaku/danmaku/model/m$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/model/m$b<",
            "-",
            "Lmaster/flame/danmaku/danmaku/model/d;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/m$b;->c()V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/danmaku/model/d;

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1, v1}, Lmaster/flame/danmaku/danmaku/model/m$b;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 9
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/m$b;->b()V

    return-void
.end method

.method public i(Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 5
    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j(Lmaster/flame/danmaku/danmaku/model/d;)Z
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public last()Lmaster/flame/danmaku/danmaku/model/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/d;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/danmaku/model/d;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lmaster/flame/danmaku/danmaku/model/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->n:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->l:I

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 4
    iget-object v2, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    .line 6
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_0
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->e:Ljava/util/Collection;

    .line 8
    :goto_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 9
    iput v1, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->l:I

    .line 10
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/android/e;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
