.class public final Lio/sentry/transport/b0;
.super Ljava/lang/Object;
.source "StdoutTransport.java"

# interfaces
.implements Lio/sentry/transport/q;


# instance fields
.field private final a:Lio/sentry/u0;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/u0;)V
    .locals 1
    .param p1    # Lio/sentry/u0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Serializer is required"

    .line 2
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/u0;

    iput-object p1, p0, Lio/sentry/transport/b0;->a:Lio/sentry/u0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public e(J)V
    .locals 0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Flushing"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic j0(Lio/sentry/l3;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/transport/p;->a(Lio/sentry/transport/q;Lio/sentry/l3;)V

    return-void
.end method

.method public w(Lio/sentry/l3;Lio/sentry/b0;)V
    .locals 1
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/b0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "SentryEnvelope is required"

    .line 1
    invoke-static {p1, p2}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object p2, p0, Lio/sentry/transport/b0;->a:Lio/sentry/u0;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p2, p1, v0}, Lio/sentry/u0;->b(Lio/sentry/l3;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
