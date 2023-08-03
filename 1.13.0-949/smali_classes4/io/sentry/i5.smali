.class final Lio/sentry/i5;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/i5$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/sentry/i5$a;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/o0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/i5;)V
    .locals 3
    .param p1    # Lio/sentry/i5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 5
    iget-object v0, p1, Lio/sentry/i5;->b:Lio/sentry/o0;

    new-instance v1, Lio/sentry/i5$a;

    iget-object v2, p1, Lio/sentry/i5;->a:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/i5$a;

    invoke-direct {v1, v2}, Lio/sentry/i5$a;-><init>(Lio/sentry/i5$a;)V

    invoke-direct {p0, v0, v1}, Lio/sentry/i5;-><init>(Lio/sentry/o0;Lio/sentry/i5$a;)V

    .line 6
    iget-object p1, p1, Lio/sentry/i5;->a:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lio/sentry/i5$a;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/i5$a;

    invoke-direct {v0, v1}, Lio/sentry/i5$a;-><init>(Lio/sentry/i5$a;)V

    invoke-virtual {p0, v0}, Lio/sentry/i5;->c(Lio/sentry/i5$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lio/sentry/o0;Lio/sentry/i5$a;)V
    .locals 2
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/i5$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/i5;->a:Ljava/util/Deque;

    const-string v1, "logger is required"

    .line 3
    invoke-static {p1, v1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/o0;

    iput-object p1, p0, Lio/sentry/i5;->b:Lio/sentry/o0;

    const-string p1, "rootStackItem is required"

    .line 4
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/i5$a;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a()Lio/sentry/i5$a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/i5;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/i5$a;

    return-object v0
.end method

.method b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/i5;->a:Ljava/util/Deque;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/i5;->a:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lio/sentry/i5;->a:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/sentry/i5;->b:Lio/sentry/o0;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Attempt to pop the root scope."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method c(Lio/sentry/i5$a;)V
    .locals 1
    .param p1    # Lio/sentry/i5$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lio/sentry/i5;->a:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method d()I
    .locals 1

    iget-object v0, p0, Lio/sentry/i5;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method
