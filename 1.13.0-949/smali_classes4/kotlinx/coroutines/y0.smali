.class public interface abstract Lkotlinx/coroutines/y0;
.super Ljava/lang/Object;
.source "Deferred.kt"

# interfaces
.implements Lkotlinx/coroutines/j2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/y0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/j2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002J\u0013\u0010\u0003\u001a\u00028\u0000H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00028\u0000H\'\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\n\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\'R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/y0;",
        "T",
        "Lkotlinx/coroutines/j2;",
        "D",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "p",
        "()Ljava/lang/Object;",
        "",
        "s",
        "Lkotlinx/coroutines/selects/d;",
        "W",
        "()Lkotlinx/coroutines/selects/d;",
        "onAwait",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# virtual methods
.method public abstract D(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract W()Lkotlinx/coroutines/selects/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract p()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/y1;
    .end annotation
.end method

.method public abstract s()Ljava/lang/Throwable;
    .annotation build Lkotlinx/coroutines/y1;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method
