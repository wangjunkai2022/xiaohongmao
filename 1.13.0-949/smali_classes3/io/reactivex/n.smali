.class public interface abstract Lio/reactivex/n;
.super Ljava/lang/Object;
.source "FlowableOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Downstream:",
        "Ljava/lang/Object;",
        "Upstream:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lorg/reactivestreams/d;)Lorg/reactivestreams/d;
    .param p1    # Lorg/reactivestreams/d;
        .annotation build Lm7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TDownstream;>;)",
            "Lorg/reactivestreams/d<",
            "-TUpstream;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lm7/e;
    .end annotation
.end method
