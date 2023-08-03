.class public interface abstract Lio/sentry/v0;
.super Ljava/lang/Object;
.source "ISpan.java"


# virtual methods
.method public abstract A(Ljava/lang/String;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract E()Lio/sentry/f5;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract F()Ljava/lang/Throwable;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract G(Lio/sentry/SpanStatus;Lio/sentry/j3;)V
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
.end method

.method public abstract H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract J(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lio/sentry/SpanStatus;)V
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param
.end method

.method public abstract d()Lio/sentry/v4;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract e()Z
    .annotation build Lm8/a$c;
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getStatus()Lio/sentry/SpanStatus;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract h()V
.end method

.method public abstract i(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract k(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
.end method

.method public abstract n(Ljava/lang/String;)Lio/sentry/v0;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract o(Ljava/lang/String;Ljava/lang/Number;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract q()Lio/sentry/m5;
    .annotation build Lm8/a$b;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract r(Ljava/lang/String;Ljava/lang/Object;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract s(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
.end method

.method public abstract t(Lio/sentry/SpanStatus;)V
    .param p1    # Lio/sentry/SpanStatus;
        .annotation build Lm8/h;
        .end annotation
    .end param
.end method

.method public abstract u()Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract v(Ljava/util/List;)Lio/sentry/e;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/e;"
        }
    .end annotation

    .annotation build Lm8/a$b;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;Lio/sentry/j3;Lio/sentry/Instrumenter;)Lio/sentry/v0;
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lio/sentry/j3;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Lio/sentry/Instrumenter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract y(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/sentry/MeasurementUnit;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method
