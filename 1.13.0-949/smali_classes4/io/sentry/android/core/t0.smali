.class final Lio/sentry/android/core/t0;
.super Landroid/os/FileObserver;
.source "EnvelopeFileObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/t0$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/sentry/l0;

.field private final c:Lio/sentry/o0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/sentry/l0;Lio/sentry/o0;J)V
    .locals 0
    .param p3    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lio/sentry/android/core/t0;->a:Ljava/lang/String;

    const-string p1, "Envelope sender is required."

    .line 3
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/l0;

    iput-object p1, p0, Lio/sentry/android/core/t0;->b:Lio/sentry/l0;

    const-string p1, "Logger is required."

    .line 4
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/o0;

    iput-object p1, p0, Lio/sentry/android/core/t0;->c:Lio/sentry/o0;

    .line 5
    iput-wide p4, p0, Lio/sentry/android/core/t0;->d:J

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/t0;->c:Lio/sentry/o0;

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    iget-object v3, p0, Lio/sentry/android/core/t0;->a:Ljava/lang/String;

    aput-object v3, v2, p1

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const-string p1, "onEvent fired for EnvelopeFileObserver with event type %d on path: %s for file %s."

    .line 3
    invoke-interface {v0, v1, p1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lio/sentry/android/core/t0$a;

    iget-wide v0, p0, Lio/sentry/android/core/t0;->d:J

    iget-object v2, p0, Lio/sentry/android/core/t0;->c:Lio/sentry/o0;

    invoke-direct {p1, v0, v1, v2}, Lio/sentry/android/core/t0$a;-><init>(JLio/sentry/o0;)V

    .line 5
    invoke-static {p1}, Lio/sentry/util/h;->e(Ljava/lang/Object;)Lio/sentry/b0;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lio/sentry/android/core/t0;->b:Lio/sentry/l0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/sentry/android/core/t0;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lio/sentry/l0;->a(Ljava/lang/String;Lio/sentry/b0;)V

    :cond_1
    :goto_0
    return-void
.end method
