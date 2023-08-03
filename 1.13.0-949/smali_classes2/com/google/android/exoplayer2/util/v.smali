.class public final Lcom/google/android/exoplayer2/util/v;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/v$c;,
        Lcom/google/android/exoplayer2/util/v$b;,
        Lcom/google/android/exoplayer2/util/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final h:I = 0x0

.field private static final i:I = 0x1


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/d;

.field private final b:Lcom/google/android/exoplayer2/util/q;

.field private final c:Lcom/google/android/exoplayer2/util/v$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/v$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/util/v$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/v$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/d;",
            "Lcom/google/android/exoplayer2/util/v$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/v;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/v$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/v$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/util/v$c<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/d;",
            "Lcom/google/android/exoplayer2/util/v$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/util/v;->a:Lcom/google/android/exoplayer2/util/d;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/v;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/util/v;->c:Lcom/google/android/exoplayer2/util/v$b;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/v;->e:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/v;->f:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/util/t;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/util/t;-><init>(Lcom/google/android/exoplayer2/util/v;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/exoplayer2/util/d;->d(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/q;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/v;->b:Lcom/google/android/exoplayer2/util/q;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/v$a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/v$a;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/util/v;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/v;->f(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private f(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/v;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/v$c;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/v;->c:Lcom/google/android/exoplayer2/util/v$b;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/v$c;->b(Lcom/google/android/exoplayer2/util/v$b;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->b:Lcom/google/android/exoplayer2/util/q;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/q;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/util/v$a;

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/util/v;->l(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->j()V

    :cond_2
    :goto_0
    return v1
.end method

.method private static synthetic g(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/v$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/v$c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/v$c;->a(ILcom/google/android/exoplayer2/util/v$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/v;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/google/android/exoplayer2/util/v$c;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/v$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/v$b;)Lcom/google/android/exoplayer2/util/v;
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/util/v$b<",
            "TT;>;)",
            "Lcom/google/android/exoplayer2/util/v<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/util/v;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/v;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/v;->a:Lcom/google/android/exoplayer2/util/d;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/android/exoplayer2/util/v;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/d;Lcom/google/android/exoplayer2/util/v$b;)V

    return-object v0
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->b:Lcom/google/android/exoplayer2/util/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/q;->f(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->b:Lcom/google/android/exoplayer2/util/q;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/q;->d(I)Lcom/google/android/exoplayer2/util/q$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/q$a;->b()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/v;->e:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/v;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/v;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public h(ILcom/google/android/exoplayer2/util/v$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/v$a<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->b:Lcom/google/android/exoplayer2/util/q;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/google/android/exoplayer2/util/q;->g(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/q$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/q$a;->b()V

    return-void
.end method

.method public i(ILcom/google/android/exoplayer2/util/v$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/v$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/v;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/v;->f:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/util/u;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/v$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/v$c;

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/v;->c:Lcom/google/android/exoplayer2/util/v$b;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/v$c;->c(Lcom/google/android/exoplayer2/util/v$b;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/v;->g:Z

    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/v;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/v$c;

    .line 2
    iget-object v2, v1, Lcom/google/android/exoplayer2/util/v$c;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/v;->c:Lcom/google/android/exoplayer2/util/v$b;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/v$c;->c(Lcom/google/android/exoplayer2/util/v$b;)V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/v;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(ILcom/google/android/exoplayer2/util/v$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/v$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/v;->i(ILcom/google/android/exoplayer2/util/v$a;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/v;->e()V

    return-void
.end method
