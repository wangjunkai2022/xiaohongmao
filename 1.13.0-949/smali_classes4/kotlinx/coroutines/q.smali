.class public interface abstract Lkotlinx/coroutines/q;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0002J%\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\'\u00a2\u0006\u0004\u0008\u0006\u0010\u0007JH\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042#\u0010\u000e\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u0008H\'\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\tH\'J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0004H\'J\u0008\u0010\u0015\u001a\u00020\rH\'J\u0014\u0010\u0017\u001a\u00020\u00162\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\tH&J1\u0010\u001a\u001a\u00020\r2\'\u0010\u0019\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r0\u0008j\u0002`\u0018H&J\u001b\u0010\u001c\u001a\u00020\r*\u00020\u001b2\u0006\u0010\u0003\u001a\u00028\u0000H\'\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0014\u0010\u001e\u001a\u00020\r*\u00020\u001b2\u0006\u0010\u0011\u001a\u00020\tH\'J<\u0010\u001f\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00028\u00002#\u0010\u000e\u001a\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u0008H\'\u00a2\u0006\u0004\u0008\u001f\u0010 R\u0014\u0010#\u001a\u00020\u00168&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0014\u0010%\u001a\u00020\u00168&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\"R\u0014\u0010&\u001a\u00020\u00168&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\"\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlinx/coroutines/q;",
        "T",
        "Lkotlin/coroutines/Continuation;",
        "value",
        "",
        "idempotent",
        "j",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "",
        "onCancellation",
        "z",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "exception",
        "l",
        "token",
        "I",
        "C",
        "",
        "b",
        "Lkotlinx/coroutines/CompletionHandler;",
        "handler",
        "k",
        "Lkotlinx/coroutines/n0;",
        "B",
        "(Lkotlinx/coroutines/n0;Ljava/lang/Object;)V",
        "m",
        "r",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "a",
        "()Z",
        "isActive",
        "i",
        "isCompleted",
        "isCancelled",
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
.method public abstract B(Lkotlinx/coroutines/n0;Ljava/lang/Object;)V
    .param p1    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "TT;)V"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/y1;
    .end annotation
.end method

.method public abstract C()V
    .annotation build Lkotlinx/coroutines/e2;
    .end annotation
.end method

.method public abstract I(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlinx/coroutines/e2;
    .end annotation
.end method

.method public abstract a()Z
.end method

.method public abstract b(Ljava/lang/Throwable;)Z
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
.end method

.method public abstract i()Z
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/e2;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract k(Lkotlin/jvm/functions/Function1;)V
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract l(Ljava/lang/Throwable;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlinx/coroutines/e2;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract m(Lkotlinx/coroutines/n0;Ljava/lang/Throwable;)V
    .param p1    # Lkotlinx/coroutines/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlinx/coroutines/y1;
    .end annotation
.end method

.method public abstract r(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/y1;
    .end annotation
.end method

.method public abstract z(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/e2;
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method
