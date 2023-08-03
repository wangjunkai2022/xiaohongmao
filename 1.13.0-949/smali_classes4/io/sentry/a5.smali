.class public final Lio/sentry/a5;
.super Ljava/lang/Object;
.source "SentryTracer.java"

# interfaces
.implements Lio/sentry/w0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/a5$b;,
        Lio/sentry/a5$c;
    }
.end annotation

.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/protocol/n;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/e5;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/e5;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lio/sentry/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Z

.field private g:Lio/sentry/a5$b;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lio/sentry/q5;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final i:Z

.field private final j:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private volatile k:Ljava/util/TimerTask;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private volatile l:Ljava/util/Timer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final m:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final n:Lio/sentry/a5$c;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final p:Lio/sentry/d;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private q:Lio/sentry/protocol/TransactionNameSource;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/e;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final s:Lio/sentry/Instrumenter;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final t:Lio/sentry/protocol/Contexts;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final u:Lio/sentry/s5;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/p5;Lio/sentry/n0;)V
    .locals 8
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v7}, Lio/sentry/a5;-><init>(Lio/sentry/p5;Lio/sentry/n0;Lio/sentry/j3;ZLjava/lang/Long;ZLio/sentry/q5;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/p5;Lio/sentry/n0;Lio/sentry/j3;ZLjava/lang/Long;ZLio/sentry/q5;)V
    .locals 9
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lio/sentry/q5;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 3
    invoke-direct/range {v0 .. v8}, Lio/sentry/a5;-><init>(Lio/sentry/p5;Lio/sentry/n0;Lio/sentry/j3;ZLjava/lang/Long;ZLio/sentry/q5;Lio/sentry/s5;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/p5;Lio/sentry/n0;Lio/sentry/j3;ZLjava/lang/Long;ZLio/sentry/q5;Lio/sentry/s5;)V
    .locals 2
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Lio/sentry/q5;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lio/sentry/s5;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lio/sentry/protocol/n;

    invoke-direct {v0}, Lio/sentry/protocol/n;-><init>()V

    iput-object v0, p0, Lio/sentry/a5;->a:Lio/sentry/protocol/n;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/a5;->c:Ljava/util/List;

    .line 7
    sget-object v0, Lio/sentry/a5$b;->c:Lio/sentry/a5$b;

    iput-object v0, p0, Lio/sentry/a5;->g:Lio/sentry/a5$b;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lio/sentry/a5;->l:Ljava/util/Timer;

    .line 9
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lio/sentry/a5;->m:Ljava/lang/Object;

    .line 10
    new-instance v1, Lio/sentry/a5$c;

    invoke-direct {v1, v0}, Lio/sentry/a5$c;-><init>(Lio/sentry/a5$a;)V

    iput-object v1, p0, Lio/sentry/a5;->n:Lio/sentry/a5$c;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/a5;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/a5;->t:Lio/sentry/protocol/Contexts;

    const-string v0, "context is required"

    .line 13
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "hub is required"

    .line 14
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/a5;->r:Ljava/util/Map;

    .line 16
    new-instance v0, Lio/sentry/e5;

    invoke-direct {v0, p1, p0, p2, p3}, Lio/sentry/e5;-><init>(Lio/sentry/p5;Lio/sentry/a5;Lio/sentry/n0;Lio/sentry/j3;)V

    iput-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    .line 17
    invoke-virtual {p1}, Lio/sentry/p5;->w()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lio/sentry/a5;->e:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Lio/sentry/p5;->v()Lio/sentry/Instrumenter;

    move-result-object p3

    iput-object p3, p0, Lio/sentry/a5;->s:Lio/sentry/Instrumenter;

    .line 19
    iput-object p2, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    .line 20
    iput-boolean p4, p0, Lio/sentry/a5;->f:Z

    .line 21
    iput-object p5, p0, Lio/sentry/a5;->j:Ljava/lang/Long;

    .line 22
    iput-boolean p6, p0, Lio/sentry/a5;->i:Z

    .line 23
    iput-object p7, p0, Lio/sentry/a5;->h:Lio/sentry/q5;

    .line 24
    iput-object p8, p0, Lio/sentry/a5;->u:Lio/sentry/s5;

    .line 25
    invoke-virtual {p1}, Lio/sentry/p5;->z()Lio/sentry/protocol/TransactionNameSource;

    move-result-object p3

    iput-object p3, p0, Lio/sentry/a5;->q:Lio/sentry/protocol/TransactionNameSource;

    .line 26
    invoke-virtual {p1}, Lio/sentry/p5;->u()Lio/sentry/d;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 27
    invoke-virtual {p1}, Lio/sentry/p5;->u()Lio/sentry/d;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/a5;->p:Lio/sentry/d;

    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Lio/sentry/d;

    invoke-interface {p2}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/sentry/d;-><init>(Lio/sentry/o0;)V

    iput-object p1, p0, Lio/sentry/a5;->p:Lio/sentry/d;

    :goto_0
    if-eqz p8, :cond_1

    .line 29
    invoke-interface {p8, p0}, Lio/sentry/s5;->b(Lio/sentry/w0;)V

    :cond_1
    if-eqz p5, :cond_2

    .line 30
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/a5;->l:Ljava/util/Timer;

    .line 31
    invoke-virtual {p0}, Lio/sentry/a5;->C()V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lio/sentry/p5;Lio/sentry/n0;ZLio/sentry/q5;)V
    .locals 8
    .param p1    # Lio/sentry/p5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lio/sentry/q5;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v7, p4

    .line 2
    invoke-direct/range {v0 .. v7}, Lio/sentry/a5;-><init>(Lio/sentry/p5;Lio/sentry/n0;Lio/sentry/j3;ZLjava/lang/Long;ZLio/sentry/q5;)V

    return-void
.end method

.method public static synthetic K(Lio/sentry/a5;Lio/sentry/r2;Lio/sentry/w0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/sentry/a5;->e0(Lio/sentry/r2;Lio/sentry/w0;)V

    return-void
.end method

.method public static synthetic L(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/r2;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/a5;->g0(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/r2;)V

    return-void
.end method

.method public static synthetic M(Lio/sentry/a5;Lio/sentry/r2;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/a5;->f0(Lio/sentry/r2;)V

    return-void
.end method

.method public static synthetic N(Lio/sentry/a5;Lio/sentry/e5;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/sentry/a5;->d0(Lio/sentry/e5;)V

    return-void
.end method

.method static synthetic O(Lio/sentry/a5;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/a5;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/sentry/a5;->k:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lio/sentry/a5;->k:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 4
    iget-object v1, p0, Lio/sentry/a5;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/sentry/a5;->k:Ljava/util/TimerTask;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private Q(Lio/sentry/h5;Ljava/lang/String;)Lio/sentry/v0;
    .locals 6
    .param p1    # Lio/sentry/h5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    sget-object v5, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/sentry/a5;->R(Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;

    move-result-object p1

    return-object p1
.end method

.method private R(Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;
    .locals 8
    .param p1    # Lio/sentry/h5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lio/sentry/Instrumenter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/sentry/b2;->K()Lio/sentry/b2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/a5;->s:Lio/sentry/Instrumenter;

    invoke-virtual {v0, p5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 4
    invoke-static {}, Lio/sentry/b2;->K()Lio/sentry/b2;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p5, "parentSpanId is required"

    .line 5
    invoke-static {p1, p5}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p5, "operation is required"

    .line 6
    invoke-static {p2, p5}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Lio/sentry/a5;->P()V

    .line 8
    new-instance p5, Lio/sentry/e5;

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    .line 9
    invoke-virtual {v0}, Lio/sentry/e5;->Q()Lio/sentry/protocol/n;

    move-result-object v1

    iget-object v5, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    new-instance v7, Lio/sentry/z4;

    invoke-direct {v7, p0}, Lio/sentry/z4;-><init>(Lio/sentry/a5;)V

    move-object v0, p5

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lio/sentry/e5;-><init>(Lio/sentry/protocol/n;Lio/sentry/h5;Lio/sentry/a5;Ljava/lang/String;Lio/sentry/n0;Lio/sentry/j3;Lio/sentry/g5;)V

    .line 10
    invoke-virtual {p5, p3}, Lio/sentry/e5;->k(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lio/sentry/a5;->c:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p5
.end method

.method private S(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/Instrumenter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/sentry/b2;->K()Lio/sentry/b2;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/sentry/a5;->s:Lio/sentry/Instrumenter;

    invoke-virtual {v0, p4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lio/sentry/b2;->K()Lio/sentry/b2;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lio/sentry/a5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    invoke-interface {v1}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getMaxSpans()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/sentry/e5;->w(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    iget-object p3, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    invoke-interface {p3}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object p3

    .line 8
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p3

    sget-object p4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan."

    .line 9
    invoke-interface {p3, p4, p1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lio/sentry/b2;->K()Lio/sentry/b2;

    move-result-object p1

    return-object p1
.end method

.method private b0()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/a5;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/e5;

    .line 4
    invoke-virtual {v1}, Lio/sentry/e5;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic d0(Lio/sentry/e5;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/sentry/a5;->g:Lio/sentry/a5$b;

    .line 2
    iget-object v0, p0, Lio/sentry/a5;->j:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p0, Lio/sentry/a5;->f:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/sentry/a5;->b0()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/sentry/a5;->C()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lio/sentry/a5$b;->b(Lio/sentry/a5$b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Lio/sentry/a5$b;->a(Lio/sentry/a5$b;)Lio/sentry/SpanStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/a5;->t(Lio/sentry/SpanStatus;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic e0(Lio/sentry/r2;Lio/sentry/w0;)V
    .locals 0

    if-ne p2, p0, :cond_0

    invoke-virtual {p1}, Lio/sentry/r2;->h()V

    :cond_0
    return-void
.end method

.method private synthetic f0(Lio/sentry/r2;)V
    .locals 1

    new-instance v0, Lio/sentry/w4;

    invoke-direct {v0, p0, p1}, Lio/sentry/w4;-><init>(Lio/sentry/a5;Lio/sentry/r2;)V

    invoke-virtual {p1, v0}, Lio/sentry/r2;->T(Lio/sentry/r2$b;)V

    return-void
.end method

.method private static synthetic g0(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/r2;)V
    .locals 0

    invoke-virtual {p1}, Lio/sentry/r2;->y()Lio/sentry/protocol/w;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private j0()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/sentry/a5;->p:Lio/sentry/d;

    invoke-virtual {v0}, Lio/sentry/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    iget-object v1, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    new-instance v2, Lio/sentry/y4;

    invoke-direct {v2, v0}, Lio/sentry/y4;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v1, v2}, Lio/sentry/n0;->t(Lio/sentry/s2;)V

    .line 5
    iget-object v1, p0, Lio/sentry/a5;->p:Lio/sentry/d;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/w;

    iget-object v2, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    invoke-interface {v2}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/a5;->I()Lio/sentry/o5;

    move-result-object v3

    .line 7
    invoke-virtual {v1, p0, v0, v2, v3}, Lio/sentry/d;->I(Lio/sentry/w0;Lio/sentry/protocol/w;Lio/sentry/SentryOptions;Lio/sentry/o5;)V

    .line 8
    iget-object v0, p0, Lio/sentry/a5;->p:Lio/sentry/d;

    invoke-virtual {v0}, Lio/sentry/d;->c()V

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0, p1}, Lio/sentry/e5;->A(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public B(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->t:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public C()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/sentry/a5;->P()V

    .line 3
    iget-object v1, p0, Lio/sentry/a5;->l:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/sentry/a5;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    new-instance v1, Lio/sentry/a5$a;

    invoke-direct {v1, p0}, Lio/sentry/a5$a;-><init>(Lio/sentry/a5;)V

    iput-object v1, p0, Lio/sentry/a5;->k:Ljava/util/TimerTask;

    .line 6
    iget-object v1, p0, Lio/sentry/a5;->l:Ljava/util/Timer;

    iget-object v2, p0, Lio/sentry/a5;->k:Ljava/util/TimerTask;

    iget-object v3, p0, Lio/sentry/a5;->j:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public D(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-virtual {p0, p1, v0}, Lio/sentry/a5;->f(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V

    return-void
.end method

.method public E()Lio/sentry/f5;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->E()Lio/sentry/f5;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->F()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public G(Lio/sentry/SpanStatus;Lio/sentry/j3;)V
    .locals 4
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .line 1
    invoke-static {p1}, Lio/sentry/a5$b;->c(Lio/sentry/SpanStatus;)Lio/sentry/a5$b;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/a5;->g:Lio/sentry/a5$b;

    .line 2
    iget-object p1, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {p1}, Lio/sentry/e5;->b()Z

    move-result p1

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lio/sentry/a5;->f:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/sentry/a5;->b0()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 3
    :cond_0
    iget-object p1, p0, Lio/sentry/a5;->u:Lio/sentry/s5;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p0}, Lio/sentry/s5;->a(Lio/sentry/w0;)Lio/sentry/k2;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 5
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/a5;->g()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lio/sentry/a5;->j()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    .line 7
    invoke-interface {v1}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/x0;

    move-result-object v1

    .line 9
    invoke-interface {v1, p0, p1}, Lio/sentry/x0;->a(Lio/sentry/w0;Lio/sentry/k2;)Lio/sentry/m2;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    .line 10
    :goto_1
    iget-object v1, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v1}, Lio/sentry/e5;->L()Lio/sentry/j3;

    move-result-object v1

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, v1

    :goto_2
    if-nez p2, :cond_4

    .line 11
    iget-object p2, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    invoke-interface {p2}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/k3;

    move-result-object p2

    invoke-interface {p2}, Lio/sentry/k3;->now()Lio/sentry/j3;

    move-result-object p2

    .line 12
    :cond_4
    iget-object v1, p0, Lio/sentry/a5;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/e5;

    .line 13
    invoke-virtual {v2}, Lio/sentry/e5;->b()Z

    move-result v3

    if-nez v3, :cond_5

    .line 14
    invoke-virtual {v2, v0}, Lio/sentry/e5;->R(Lio/sentry/g5;)V

    .line 15
    sget-object v3, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    invoke-virtual {v2, v3, p2}, Lio/sentry/e5;->G(Lio/sentry/SpanStatus;Lio/sentry/j3;)V

    goto :goto_3

    .line 16
    :cond_6
    iget-object v1, p0, Lio/sentry/a5;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lio/sentry/a5;->i:Z

    if-eqz v1, :cond_7

    .line 17
    iget-object v1, p0, Lio/sentry/a5;->c:Ljava/util/List;

    iget-object v2, p0, Lio/sentry/a5;->n:Lio/sentry/a5$c;

    invoke-static {v1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/e5;

    .line 18
    invoke-virtual {v1}, Lio/sentry/e5;->L()Lio/sentry/j3;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {p2, v1}, Lio/sentry/j3;->a(Lio/sentry/j3;)I

    move-result v2

    if-lez v2, :cond_7

    move-object p2, v1

    .line 20
    :cond_7
    iget-object v1, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    iget-object v2, p0, Lio/sentry/a5;->g:Lio/sentry/a5$b;

    invoke-static {v2}, Lio/sentry/a5$b;->a(Lio/sentry/a5$b;)Lio/sentry/SpanStatus;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lio/sentry/e5;->G(Lio/sentry/SpanStatus;Lio/sentry/j3;)V

    .line 21
    iget-object p2, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    new-instance v1, Lio/sentry/x4;

    invoke-direct {v1, p0}, Lio/sentry/x4;-><init>(Lio/sentry/a5;)V

    invoke-interface {p2, v1}, Lio/sentry/n0;->t(Lio/sentry/s2;)V

    .line 22
    new-instance p2, Lio/sentry/protocol/u;

    invoke-direct {p2, p0}, Lio/sentry/protocol/u;-><init>(Lio/sentry/a5;)V

    .line 23
    iget-object v1, p0, Lio/sentry/a5;->h:Lio/sentry/q5;

    if-eqz v1, :cond_8

    .line 24
    invoke-interface {v1, p0}, Lio/sentry/q5;->a(Lio/sentry/w0;)V

    .line 25
    :cond_8
    iget-object v1, p0, Lio/sentry/a5;->l:Ljava/util/Timer;

    if-eqz v1, :cond_a

    .line 26
    iget-object v1, p0, Lio/sentry/a5;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v2, p0, Lio/sentry/a5;->l:Ljava/util/Timer;

    if-eqz v2, :cond_9

    .line 28
    iget-object v2, p0, Lio/sentry/a5;->l:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 29
    iput-object v0, p0, Lio/sentry/a5;->l:Ljava/util/Timer;

    .line 30
    :cond_9
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 31
    :cond_a
    :goto_4
    iget-object v1, p0, Lio/sentry/a5;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lio/sentry/a5;->j:Ljava/lang/Long;

    if-eqz v1, :cond_b

    return-void

    .line 32
    :cond_b
    invoke-virtual {p2}, Lio/sentry/protocol/u;->u0()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/a5;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    iget-object v1, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    invoke-virtual {p0}, Lio/sentry/a5;->q()Lio/sentry/m5;

    move-result-object v2

    invoke-interface {v1, p2, v2, v0, p1}, Lio/sentry/n0;->a0(Lio/sentry/protocol/u;Lio/sentry/m5;Lio/sentry/b0;Lio/sentry/m2;)Lio/sentry/protocol/n;

    :cond_c
    return-void
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lio/sentry/a5;->S(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;

    move-result-object p1

    return-object p1
.end method

.method public I()Lio/sentry/o5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->I()Lio/sentry/o5;

    move-result-object v0

    return-object v0
.end method

.method public J(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0, p1}, Lio/sentry/e5;->J(Ljava/lang/String;)V

    return-void
.end method

.method public T()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/e5;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->c:Ljava/util/List;

    return-object v0
.end method

.method public U()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->K()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public V()Lio/sentry/j3;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->L()Lio/sentry/j3;

    move-result-object v0

    return-object v0
.end method

.method W()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/e;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->r:Ljava/util/Map;

    return-object v0
.end method

.method X()Lio/sentry/e5;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    return-object v0
.end method

.method public Y()Lio/sentry/j3;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->O()Lio/sentry/j3;

    move-result-object v0

    return-object v0
.end method

.method Z()Ljava/util/Timer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->l:Ljava/util/Timer;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0, p1, p2}, Lio/sentry/e5;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a0()Ljava/util/TimerTask;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->k:Ljava/util/TimerTask;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    return v0
.end method

.method public c(Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0, p1}, Lio/sentry/e5;->c(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method c0()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public d()Lio/sentry/v4;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->d()Lio/sentry/v4;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/TransactionNameSource;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lio/sentry/a5;->e:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/sentry/a5;->q:Lio/sentry/protocol/TransactionNameSource;

    return-void
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->g()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Lio/sentry/a5;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/a5;->t(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method h0(Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;
    .locals 0
    .param p1    # Lio/sentry/h5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/a5;->Q(Lio/sentry/h5;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object p1

    .line 2
    invoke-interface {p1, p3}, Lio/sentry/v0;->k(Ljava/lang/String;)V

    return-object p1
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0, p1}, Lio/sentry/e5;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method i0(Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;
    .locals 0
    .param p1    # Lio/sentry/h5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lio/sentry/Instrumenter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-direct/range {p0 .. p5}, Lio/sentry/a5;->R(Lio/sentry/h5;Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;

    move-result-object p1

    return-object p1
.end method

.method public j()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->j()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0, p1}, Lio/sentry/e5;->k(Ljava/lang/String;)V

    return-void
.end method

.method public l()Lio/sentry/protocol/Contexts;
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->t:Lio/sentry/protocol/Contexts;

    return-object v0
.end method

.method public m()Lio/sentry/protocol/n;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->a:Lio/sentry/protocol/n;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Lio/sentry/v0;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/a5;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/a5;->r:Ljava/util/Map;

    new-instance v1, Lio/sentry/protocol/e;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lio/sentry/protocol/e;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public p()Lio/sentry/protocol/TransactionNameSource;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->q:Lio/sentry/protocol/TransactionNameSource;

    return-object v0
.end method

.method public q()Lio/sentry/m5;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    invoke-interface {v0}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/sentry/a5;->j0()V

    .line 3
    iget-object v0, p0, Lio/sentry/a5;->p:Lio/sentry/d;

    invoke-virtual {v0}, Lio/sentry/d;->K()Lio/sentry/m5;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0, p1, p2}, Lio/sentry/e5;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public s(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0, p1}, Lio/sentry/e5;->s(Ljava/lang/Throwable;)V

    return-void
.end method

.method public t(Lio/sentry/SpanStatus;)V
    .locals 1
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/a5;->G(Lio/sentry/SpanStatus;Lio/sentry/j3;)V

    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/util/List;)Lio/sentry/e;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/e;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->d:Lio/sentry/n0;

    invoke-interface {v0}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/sentry/a5;->j0()V

    .line 3
    iget-object v0, p0, Lio/sentry/a5;->p:Lio/sentry/d;

    invoke-static {v0, p1}, Lio/sentry/e;->a(Lio/sentry/d;Ljava/util/List;)Lio/sentry/e;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/Instrumenter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/a5;->S(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;

    move-result-object p1

    return-object p1
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/e5;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/a5;->c:Ljava/util/List;

    return-object v0
.end method

.method public y(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/MeasurementUnit;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/a5;->b:Lio/sentry/e5;

    invoke-virtual {v0}, Lio/sentry/e5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/a5;->r:Ljava/util/Map;

    new-instance v1, Lio/sentry/protocol/e;

    invoke-interface {p3}, Lio/sentry/MeasurementUnit;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Lio/sentry/protocol/e;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public z()Lio/sentry/e5;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/a5;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/e5;

    invoke-virtual {v2}, Lio/sentry/e5;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/e5;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
