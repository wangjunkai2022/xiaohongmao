.class public final Lio/sentry/k1;
.super Lio/sentry/vendor/gson/stream/c;
.source "JsonObjectWriter.java"


# instance fields
.field private final l:Lio/sentry/j1;


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/vendor/gson/stream/c;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance p1, Lio/sentry/j1;

    invoke-direct {p1, p2}, Lio/sentry/j1;-><init>(I)V

    iput-object p1, p0, Lio/sentry/k1;->l:Lio/sentry/j1;

    return-void
.end method


# virtual methods
.method public bridge synthetic A(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/sentry/k1;->p0(Ljava/lang/String;)Lio/sentry/k1;

    move-result-object p1

    return-object p1
.end method

.method public p0(Ljava/lang/String;)Lio/sentry/k1;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lio/sentry/vendor/gson/stream/c;->A(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    return-object p0
.end method

.method public q0(Lio/sentry/o0;Ljava/lang/Object;)Lio/sentry/k1;
    .locals 1
    .param p1    # Lio/sentry/o0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/k1;->l:Lio/sentry/j1;

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/j1;->a(Lio/sentry/k1;Lio/sentry/o0;Ljava/lang/Object;)V

    return-object p0
.end method
