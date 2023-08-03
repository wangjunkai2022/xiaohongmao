.class public interface abstract Lio/reactivex/rxjava3/core/o;
.super Ljava/lang/Object;
.source "FlowableEmitter.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/i<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)Z
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation
.end method

.method public abstract b(Lio/reactivex/rxjava3/disposables/f;)V
    .param p1    # Lio/reactivex/rxjava3/disposables/f;
        .annotation build Lp7/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation
.end method

.method public abstract c(Lq7/f;)V
    .param p1    # Lq7/f;
        .annotation build Lp7/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation
.end method

.method public abstract e()J
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract serialize()Lio/reactivex/rxjava3/core/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/o<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation
.end method
