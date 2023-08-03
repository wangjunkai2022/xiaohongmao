.class public interface abstract Lio/reactivex/rxjava3/core/s;
.super Ljava/lang/Object;
.source "FlowableTransformer.java"


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
.method public abstract a(Lio/reactivex/rxjava3/core/m;)Lorg/reactivestreams/c;
    .param p1    # Lio/reactivex/rxjava3/core/m;
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
            "Lio/reactivex/rxjava3/core/m<",
            "TUpstream;>;)",
            "Lorg/reactivestreams/c<",
            "TDownstream;>;"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation
.end method
