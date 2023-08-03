.class public final Lio/sentry/a;
.super Ljava/lang/Object;
.source "AsyncHttpTransportFactory.java"

# interfaces
.implements Lio/sentry/y0;


# annotations
.annotation build Lm8/a$c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/sentry/SentryOptions;Lio/sentry/o2;)Lio/sentry/transport/q;
    .locals 3
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/o2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "options is required"

    .line 1
    invoke-static {p1, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "requestDetails is required"

    .line 2
    invoke-static {p2, v0}, Lio/sentry/util/l;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/sentry/transport/d;

    new-instance v1, Lio/sentry/transport/z;

    invoke-direct {v1, p1}, Lio/sentry/transport/z;-><init>(Lio/sentry/SentryOptions;)V

    .line 4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransportGate()Lio/sentry/transport/r;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p2}, Lio/sentry/transport/d;-><init>(Lio/sentry/SentryOptions;Lio/sentry/transport/z;Lio/sentry/transport/r;Lio/sentry/o2;)V

    return-object v0
.end method
