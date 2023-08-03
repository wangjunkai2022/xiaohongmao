.class public final Lio/sentry/v4;
.super Ljava/lang/Object;
.source "SentryTraceHeader.java"


# static fields
.field public static final d:Ljava/lang/String; = "sentry-trace"


# instance fields
.field private final a:Lio/sentry/protocol/n;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/h5;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/protocol/n;Lio/sentry/h5;Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Lio/sentry/protocol/n;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/h5;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/v4;->a:Lio/sentry/protocol/n;

    .line 3
    iput-object p2, p0, Lio/sentry/v4;->b:Lio/sentry/h5;

    .line 4
    iput-object p3, p0, Lio/sentry/v4;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/sentry/exception/InvalidSentryTraceHeaderException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "-"

    const/4 v1, -0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 7
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 8
    array-length v1, v0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 9
    aget-object v1, v0, v2

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/v4;->c:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lio/sentry/v4;->c:Ljava/lang/Boolean;

    .line 11
    :goto_0
    :try_start_0
    new-instance v1, Lio/sentry/protocol/n;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lio/sentry/protocol/n;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/sentry/v4;->a:Lio/sentry/protocol/n;

    .line 12
    new-instance v1, Lio/sentry/h5;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Lio/sentry/h5;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/sentry/v4;->b:Lio/sentry/h5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 13
    new-instance v1, Lio/sentry/exception/InvalidSentryTraceHeaderException;

    invoke-direct {v1, p1, v0}, Lio/sentry/exception/InvalidSentryTraceHeaderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 14
    :cond_1
    new-instance v0, Lio/sentry/exception/InvalidSentryTraceHeaderException;

    invoke-direct {v0, p1}, Lio/sentry/exception/InvalidSentryTraceHeaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "sentry-trace"

    return-object v0
.end method

.method public b()Lio/sentry/h5;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/v4;->b:Lio/sentry/h5;

    return-object v0
.end method

.method public c()Lio/sentry/protocol/n;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/v4;->a:Lio/sentry/protocol/n;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 6
    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/v4;->c:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 2
    iget-object v5, p0, Lio/sentry/v4;->a:Lio/sentry/protocol/n;

    aput-object v5, v4, v2

    iget-object v2, p0, Lio/sentry/v4;->b:Lio/sentry/h5;

    aput-object v2, v4, v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    aput-object v0, v4, v3

    const-string v0, "%s-%s-%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 3
    iget-object v3, p0, Lio/sentry/v4;->a:Lio/sentry/protocol/n;

    aput-object v3, v0, v2

    iget-object v2, p0, Lio/sentry/v4;->b:Lio/sentry/h5;

    aput-object v2, v0, v1

    const-string v1, "%s-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lio/sentry/v4;->c:Ljava/lang/Boolean;

    return-object v0
.end method
