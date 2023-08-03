.class public final Lio/sentry/exception/ExceptionMechanismException;
.super Ljava/lang/RuntimeException;
.source "ExceptionMechanismException.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# static fields
.field private static final e:J = 0x1f9b66fbce644fbL


# instance fields
.field private final a:Lio/sentry/protocol/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/Throwable;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Ljava/lang/Thread;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Z


# direct methods
.method public constructor <init>(Lio/sentry/protocol/f;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 1
    .param p1    # Lio/sentry/protocol/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Thread;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/f;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/f;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V
    .locals 1
    .param p1    # Lio/sentry/protocol/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Thread;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v0, "Mechanism is required."

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/protocol/f;

    iput-object p1, p0, Lio/sentry/exception/ExceptionMechanismException;->a:Lio/sentry/protocol/f;

    const-string p1, "Throwable is required."

    .line 3
    invoke-static {p2, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lio/sentry/exception/ExceptionMechanismException;->b:Ljava/lang/Throwable;

    const-string p1, "Thread is required."

    .line 4
    invoke-static {p3, p1}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Thread;

    iput-object p1, p0, Lio/sentry/exception/ExceptionMechanismException;->c:Ljava/lang/Thread;

    .line 5
    iput-boolean p4, p0, Lio/sentry/exception/ExceptionMechanismException;->d:Z

    return-void
.end method


# virtual methods
.method public getExceptionMechanism()Lio/sentry/protocol/f;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/exception/ExceptionMechanismException;->a:Lio/sentry/protocol/f;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/exception/ExceptionMechanismException;->c:Ljava/lang/Thread;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/exception/ExceptionMechanismException;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isSnapshot()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/exception/ExceptionMechanismException;->d:Z

    return v0
.end method
