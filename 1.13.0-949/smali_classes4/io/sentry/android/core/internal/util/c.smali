.class public Lio/sentry/android/core/internal/util/c;
.super Ljava/lang/Object;
.source "BreadcrumbFactory.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/sentry/f;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "session"

    .line 2
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    const-string v1, "state"

    .line 3
    invoke-virtual {v0, v1, p0}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "app.lifecycle"

    .line 4
    invoke-virtual {v0, p0}, Lio/sentry/f;->u(Ljava/lang/String;)V

    .line 5
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    return-object v0
.end method
