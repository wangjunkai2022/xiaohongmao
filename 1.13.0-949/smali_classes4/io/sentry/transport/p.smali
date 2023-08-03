.class public final synthetic Lio/sentry/transport/p;
.super Ljava/lang/Object;
.source "ITransport.java"


# direct methods
.method public static a(Lio/sentry/transport/q;Lio/sentry/l3;)V
    .locals 1
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lio/sentry/b0;

    invoke-direct {v0}, Lio/sentry/b0;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/transport/q;->w(Lio/sentry/l3;Lio/sentry/b0;)V

    return-void
.end method
