.class public interface abstract Lio/reactivex/b0;
.super Ljava/lang/Object;
.source "ObservableEmitter.java"

# interfaces
.implements Lio/reactivex/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/i<",
        "TT;>;"
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

.method public abstract serialize()Lio/reactivex/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/b0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm7/e;
    .end annotation
.end method
