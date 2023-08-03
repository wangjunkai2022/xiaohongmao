.class public interface abstract Lio/reactivex/rxjava3/parallel/c;
.super Ljava/lang/Object;
.source "ParallelTransformer.java"


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
.method public abstract a(Lio/reactivex/rxjava3/parallel/a;)Lio/reactivex/rxjava3/parallel/a;
    .param p1    # Lio/reactivex/rxjava3/parallel/a;
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
            "Lio/reactivex/rxjava3/parallel/a<",
            "TUpstream;>;)",
            "Lio/reactivex/rxjava3/parallel/a<",
            "TDownstream;>;"
        }
    .end annotation

    .annotation build Lp7/e;
    .end annotation
.end method
