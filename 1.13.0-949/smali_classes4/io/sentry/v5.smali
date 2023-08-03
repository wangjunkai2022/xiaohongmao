.class public final Lio/sentry/v5;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandlerIntegration.java"

# interfaces
.implements Lio/sentry/z0;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/v5$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Lio/sentry/n0;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Lio/sentry/SentryOptions;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private d:Z

.field private final e:Lio/sentry/u5;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/u5$a;->c()Lio/sentry/u5;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/v5;-><init>(Lio/sentry/u5;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/u5;)V
    .locals 1
    .param p1    # Lio/sentry/u5;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/sentry/v5;->d:Z

    const-string v0, "threadAdapter is required."

    .line 4
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/u5;

    iput-object p1, p0, Lio/sentry/v5;->e:Lio/sentry/u5;

    return-void
.end method

.method static b(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0    # Ljava/lang/Thread;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .annotation build Lm8/k;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/protocol/f;

    invoke-direct {v0}, Lio/sentry/protocol/f;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/f;->r(Ljava/lang/Boolean;)V

    const-string v1, "UncaughtExceptionHandler"

    .line 3
    invoke-virtual {v0, v1}, Lio/sentry/protocol/f;->v(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lio/sentry/exception/ExceptionMechanismException;

    invoke-direct {v1, v0, p1, p0}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/f;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    return-object v1
.end method


# virtual methods
.method public final a(Lio/sentry/n0;Lio/sentry/SentryOptions;)V
    .locals 4
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lio/sentry/v5;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Attempt to register a UncaughtExceptionHandlerIntegration twice."

    .line 3
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/sentry/v5;->d:Z

    const-string v2, "Hub is required"

    .line 5
    invoke-static {p1, v2}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/n0;

    iput-object p1, p0, Lio/sentry/v5;->b:Lio/sentry/n0;

    const-string p1, "SentryOptions is required"

    .line 6
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    .line 7
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    .line 8
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isEnableUncaughtExceptionHandler()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "UncaughtExceptionHandlerIntegration enabled: %s"

    .line 9
    invoke-interface {p1, p2, v2, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableUncaughtExceptionHandler()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lio/sentry/v5;->e:Lio/sentry/u5;

    .line 12
    invoke-interface {p1}, Lio/sentry/u5;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    iget-object v0, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    .line 14
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default UncaughtExceptionHandler class=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 16
    invoke-interface {v0, p2, v2, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iput-object p1, p0, Lio/sentry/v5;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 18
    :cond_1
    iget-object p1, p0, Lio/sentry/v5;->e:Lio/sentry/u5;

    invoke-interface {p1, p0}, Lio/sentry/u5;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 19
    iget-object p1, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    .line 20
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "UncaughtExceptionHandlerIntegration installed."

    .line 21
    invoke-interface {p1, p2, v1, v0}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/v5;->e:Lio/sentry/u5;

    invoke-interface {v0}, Lio/sentry/u5;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/sentry/v5;->e:Lio/sentry/u5;

    iget-object v1, p0, Lio/sentry/v5;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v1}, Lio/sentry/u5;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3
    iget-object v0, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "UncaughtExceptionHandlerIntegration removed."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lio/sentry/v5;->b:Lio/sentry/n0;

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Uncaught exception received."

    invoke-interface {v0, v1, v4, v3}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :try_start_0
    new-instance v0, Lio/sentry/v5$a;

    iget-object v1, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    .line 4
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v3

    iget-object v1, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lio/sentry/v5$a;-><init>(JLio/sentry/o0;)V

    .line 5
    invoke-static {p1, p2}, Lio/sentry/v5;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 6
    new-instance v3, Lio/sentry/h4;

    invoke-direct {v3, v1}, Lio/sentry/h4;-><init>(Ljava/lang/Throwable;)V

    .line 7
    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-virtual {v3, v1}, Lio/sentry/h4;->L0(Lio/sentry/SentryLevel;)V

    .line 8
    invoke-static {v0}, Lio/sentry/util/h;->e(Ljava/lang/Object;)Lio/sentry/b0;

    move-result-object v1

    .line 9
    iget-object v4, p0, Lio/sentry/v5;->b:Lio/sentry/n0;

    invoke-interface {v4, v3, v1}, Lio/sentry/n0;->j(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;

    move-result-object v1

    .line 10
    sget-object v4, Lio/sentry/protocol/n;->b:Lio/sentry/protocol/n;

    invoke-virtual {v1, v4}, Lio/sentry/protocol/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {v0}, Lio/sentry/v5$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    .line 13
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Timed out waiting to flush event to disk before crashing. Event: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v3}, Lio/sentry/e3;->I()Lio/sentry/protocol/n;

    move-result-object v3

    aput-object v3, v5, v2

    .line 15
    invoke-interface {v0, v1, v4, v5}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    .line 17
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error sending uncaught exception to Sentry."

    .line 18
    invoke-interface {v1, v3, v4, v0}, Lio/sentry/o0;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/sentry/v5;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Invoking inner uncaught exception handler."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lio/sentry/v5;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 22
    :cond_1
    iget-object p1, p0, Lio/sentry/v5;->c:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isPrintUncaughtStackTrace()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
