.class public interface abstract Lio/sentry/w0;
.super Ljava/lang/Object;
.source "ITransaction.java"

# interfaces
.implements Lio/sentry/v0;


# virtual methods
.method public abstract B(Ljava/lang/String;Ljava/lang/Object;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation
.end method

.method public abstract C()V
.end method

.method public abstract D(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract I()Lio/sentry/o5;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/protocol/TransactionNameSource;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/a$c;
    .end annotation
.end method

.method public abstract g()Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract j()Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract l()Lio/sentry/protocol/Contexts;
    .annotation build Lm8/a$c;
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract m()Lio/sentry/protocol/n;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract p()Lio/sentry/protocol/TransactionNameSource;
    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract x()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/e5;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .annotation build Lm8/k;
    .end annotation
.end method

.method public abstract z()Lio/sentry/e5;
    .annotation build Lm8/h;
    .end annotation
.end method
