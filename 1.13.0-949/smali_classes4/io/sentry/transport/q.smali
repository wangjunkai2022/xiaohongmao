.class public interface abstract Lio/sentry/transport/q;
.super Ljava/lang/Object;
.source "ITransport.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract e(J)V
.end method

.method public abstract j0(Lio/sentry/l3;)V
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract w(Lio/sentry/l3;Lio/sentry/b0;)V
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
.end method
