.class public interface abstract Lio/reactivex/rxjava3/core/m0;
.super Ljava/lang/Object;
.source "ObservableTransformer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Upstream:",
        "Ljava/lang/Object;",
        "Downstream:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract a(Lio/reactivex/rxjava3/core/g0;)Lio/reactivex/rxjava3/core/l0;
    .param p1    # Lio/reactivex/rxjava3/core/g0;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upstream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/g0<",
            "TUpstream;>;)",
            "Lio/reactivex/rxjava3/core/l0<",
            "TDownstream;>;"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation
.end method
