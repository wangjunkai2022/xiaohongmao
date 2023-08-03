.class public final Lio/sentry/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lio/sentry/o1;
.implements Lio/sentry/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Session$State;,
        Lio/sentry/Session$b;,
        Lio/sentry/Session$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Date;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Ljava/util/Date;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final e:Ljava/util/UUID;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private g:Lio/sentry/Session$State;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private h:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private i:Ljava/lang/Double;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final m:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final o:Ljava/lang/Object;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lio/sentry/Session$State;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/util/UUID;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Long;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Double;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Session;->o:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/sentry/Session;->g:Lio/sentry/Session$State;

    .line 4
    iput-object p2, p0, Lio/sentry/Session;->a:Ljava/util/Date;

    .line 5
    iput-object p3, p0, Lio/sentry/Session;->b:Ljava/util/Date;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/sentry/Session;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    iput-object p5, p0, Lio/sentry/Session;->d:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lio/sentry/Session;->e:Ljava/util/UUID;

    .line 9
    iput-object p7, p0, Lio/sentry/Session;->f:Ljava/lang/Boolean;

    .line 10
    iput-object p8, p0, Lio/sentry/Session;->h:Ljava/lang/Long;

    .line 11
    iput-object p9, p0, Lio/sentry/Session;->i:Ljava/lang/Double;

    .line 12
    iput-object p10, p0, Lio/sentry/Session;->j:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lio/sentry/Session;->k:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lio/sentry/Session;->l:Ljava/lang/String;

    .line 15
    iput-object p13, p0, Lio/sentry/Session;->m:Ljava/lang/String;

    .line 16
    iput-object p14, p0, Lio/sentry/Session;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/protocol/w;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/w;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 17
    sget-object v1, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    .line 18
    invoke-static {}, Lio/sentry/k;->c()Ljava/util/Date;

    move-result-object v2

    .line 19
    invoke-static {}, Lio/sentry/k;->c()Ljava/util/Date;

    move-result-object v3

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    .line 21
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 22
    invoke-virtual/range {p2 .. p2}, Lio/sentry/protocol/w;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v5, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 23
    invoke-direct/range {v0 .. v14}, Lio/sentry/Session;-><init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/Date;)D
    .locals 4
    .param p1    # Ljava/util/Date;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object p1, p0, Lio/sentry/Session;->a:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private n(Ljava/util/Date;)J
    .locals 4
    .param p1    # Ljava/util/Date;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public b()Lio/sentry/Session;
    .locals 17
    .annotation build Lm8/g;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v16, Lio/sentry/Session;

    iget-object v2, v0, Lio/sentry/Session;->g:Lio/sentry/Session$State;

    iget-object v3, v0, Lio/sentry/Session;->a:Ljava/util/Date;

    iget-object v4, v0, Lio/sentry/Session;->b:Ljava/util/Date;

    iget-object v1, v0, Lio/sentry/Session;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, v0, Lio/sentry/Session;->d:Ljava/lang/String;

    iget-object v7, v0, Lio/sentry/Session;->e:Ljava/util/UUID;

    iget-object v8, v0, Lio/sentry/Session;->f:Ljava/lang/Boolean;

    iget-object v9, v0, Lio/sentry/Session;->h:Ljava/lang/Long;

    iget-object v10, v0, Lio/sentry/Session;->i:Ljava/lang/Double;

    iget-object v11, v0, Lio/sentry/Session;->j:Ljava/lang/String;

    iget-object v12, v0, Lio/sentry/Session;->k:Ljava/lang/String;

    iget-object v13, v0, Lio/sentry/Session;->l:Ljava/lang/String;

    iget-object v14, v0, Lio/sentry/Session;->m:Ljava/lang/String;

    iget-object v15, v0, Lio/sentry/Session;->n:Ljava/lang/String;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lio/sentry/Session;-><init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v16
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lio/sentry/k;->c()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/Session;->d(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-virtual {p0}, Lio/sentry/Session;->b()Lio/sentry/Session;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/util/Date;)V
    .locals 3
    .param p1    # Ljava/util/Date;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/Session;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Lio/sentry/Session;->f:Ljava/lang/Boolean;

    .line 3
    iget-object v1, p0, Lio/sentry/Session;->g:Lio/sentry/Session$State;

    sget-object v2, Lio/sentry/Session$State;->Ok:Lio/sentry/Session$State;

    if-ne v1, v2, :cond_0

    .line 4
    sget-object v1, Lio/sentry/Session$State;->Exited:Lio/sentry/Session$State;

    iput-object v1, p0, Lio/sentry/Session;->g:Lio/sentry/Session$State;

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iput-object p1, p0, Lio/sentry/Session;->b:Ljava/util/Date;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lio/sentry/k;->c()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Session;->b:Ljava/util/Date;

    .line 7
    :goto_0
    iget-object p1, p0, Lio/sentry/Session;->b:Ljava/util/Date;

    if-eqz p1, :cond_2

    .line 8
    invoke-direct {p0, p1}, Lio/sentry/Session;->a(Ljava/util/Date;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Session;->i:Ljava/lang/Double;

    .line 9
    iget-object p1, p0, Lio/sentry/Session;->b:Ljava/util/Date;

    invoke-direct {p0, p1}, Lio/sentry/Session;->n(Ljava/util/Date;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Session;->h:Ljava/lang/Long;

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lio/sentry/Session;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/Session;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/Session;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
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

    iget-object v0, p0, Lio/sentry/Session;->p:Ljava/util/Map;

    return-object v0
.end method

.method public h()Ljava/lang/Double;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/Session;->i:Ljava/lang/Double;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/Session;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/Session;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/Session;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/Session;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/Session;->h:Ljava/lang/Long;

    return-object v0
.end method

.method public o()Ljava/util/UUID;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/Session;->e:Ljava/util/UUID;

    return-object v0
.end method

.method public p()Ljava/util/Date;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/Session;->a:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public q()Lio/sentry/Session$State;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/Session;->g:Lio/sentry/Session$State;

    return-object v0
.end method

.method public r()Ljava/util/Date;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/Session;->b:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/Session;->k:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Lio/sentry/k1;Lio/sentry/o0;)V
    .locals 3
    .param p1    # Lio/sentry/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->h()Lio/sentry/vendor/gson/stream/c;

    .line 2
    iget-object v0, p0, Lio/sentry/Session;->e:Ljava/util/UUID;

    if-eqz v0, :cond_0

    const-string v0, "sid"

    .line 3
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->e:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/Session;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "did"

    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->l0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 6
    :cond_1
    iget-object v0, p0, Lio/sentry/Session;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const-string v0, "init"

    .line 7
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->g0(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/c;

    :cond_2
    const-string v0, "started"

    .line 8
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->a:Ljava/util/Date;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    const-string v0, "status"

    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->g:Lio/sentry/Session$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 10
    iget-object v0, p0, Lio/sentry/Session;->h:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const-string v0, "seq"

    .line 11
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->h0(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/c;

    :cond_3
    const-string v0, "errors"

    .line 12
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lio/sentry/vendor/gson/stream/c;->d0(J)Lio/sentry/vendor/gson/stream/c;

    .line 13
    iget-object v0, p0, Lio/sentry/Session;->i:Ljava/lang/Double;

    if-eqz v0, :cond_4

    const-string v0, "duration"

    .line 14
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->i:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lio/sentry/vendor/gson/stream/c;->h0(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/c;

    .line 15
    :cond_4
    iget-object v0, p0, Lio/sentry/Session;->b:Ljava/util/Date;

    if-eqz v0, :cond_5

    const-string v0, "timestamp"

    .line 16
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->b:Ljava/util/Date;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 17
    :cond_5
    iget-object v0, p0, Lio/sentry/Session;->n:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "abnormal_mechanism"

    .line 18
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->n:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    :cond_6
    const-string v0, "attrs"

    .line 19
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 20
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->h()Lio/sentry/vendor/gson/stream/c;

    const-string v0, "release"

    .line 21
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->m:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 22
    iget-object v0, p0, Lio/sentry/Session;->l:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "environment"

    .line 23
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->l:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 24
    :cond_7
    iget-object v0, p0, Lio/sentry/Session;->j:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v0, "ip_address"

    .line 25
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->j:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 26
    :cond_8
    iget-object v0, p0, Lio/sentry/Session;->k:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "user_agent"

    .line 27
    invoke-virtual {p1, v0}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Session;->k:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    .line 28
    :cond_9
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->p()Lio/sentry/vendor/gson/stream/c;

    .line 29
    iget-object v0, p0, Lio/sentry/Session;->p:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 30
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    iget-object v2, p0, Lio/sentry/Session;->p:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-virtual {p1, v1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    .line 33
    invoke-virtual {p1, p2, v2}, Lio/sentry/k1;->q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;

    goto :goto_0

    .line 34
    :cond_a
    invoke-virtual {p1}, Lio/sentry/vendor/gson/stream/c;->p()Lio/sentry/vendor/gson/stream/c;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/Session;->p:Ljava/util/Map;

    return-void
.end method

.method public t()V
    .locals 1
    .annotation build Lm8/a$c;
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lio/sentry/Session;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public u(Lio/sentry/Session$State;Ljava/lang/String;Z)Z
    .locals 1
    .param p1    # Lio/sentry/Session$State;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/sentry/Session;->v(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public v(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3
    .param p1    # Lio/sentry/Session$State;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/sentry/Session;->o:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iput-object p1, p0, Lio/sentry/Session;->g:Lio/sentry/Session$State;

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 3
    iput-object p2, p0, Lio/sentry/Session;->k:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    iget-object p1, p0, Lio/sentry/Session;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    const/4 v1, 0x1

    :cond_2
    if-eqz p4, :cond_3

    .line 5
    iput-object p4, p0, Lio/sentry/Session;->n:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/sentry/Session;->f:Ljava/lang/Boolean;

    .line 7
    invoke-static {}, Lio/sentry/k;->c()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Session;->b:Ljava/util/Date;

    if-eqz p1, :cond_4

    .line 8
    invoke-direct {p0, p1}, Lio/sentry/Session;->n(Ljava/util/Date;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Session;->h:Ljava/lang/Long;

    .line 9
    :cond_4
    monitor-exit v0

    return v2

    .line 10
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
