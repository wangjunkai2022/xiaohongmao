.class public interface abstract Lio/reactivex/s;
.super Ljava/lang/Object;
.source "MaybeEmitter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)Z
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm7/e;
        .end annotation
    .end param
.end method

.method public abstract b(Lio/reactivex/disposables/c;)V
    .param p1    # Lio/reactivex/disposables/c;
        .annotation build Lm7/f;
        .end annotation
    .end param
.end method

.method public abstract c(Ln7/f;)V
    .param p1    # Ln7/f;
        .annotation build Lm7/f;
        .end annotation
    .end param
.end method

.method public abstract isDisposed()Z
.end method

.method public abstract onComplete()V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm7/e;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
