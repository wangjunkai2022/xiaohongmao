.class final synthetic Lkotlinx/coroutines/n2;
.super Ljava/lang/Object;
.source "Future.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0007\u001a\u001a\u0010\u0007\u001a\u00020\u0006*\u0006\u0012\u0002\u0008\u00030\u00052\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/j2;",
        "Ljava/util/concurrent/Future;",
        "future",
        "Lkotlinx/coroutines/l1;",
        "b",
        "Lkotlinx/coroutines/q;",
        "",
        "a",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xs = "kotlinx/coroutines/JobKt"
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/q;Ljava/util/concurrent/Future;)V
    .locals 1
    .param p0    # Lkotlinx/coroutines/q;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/q<",
            "*>;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/m;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/m;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/q;->k(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final b(Lkotlinx/coroutines/j2;Ljava/util/concurrent/Future;)Lkotlinx/coroutines/l1;
    .locals 1
    .param p0    # Lkotlinx/coroutines/j2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Future;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/j2;",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lkotlinx/coroutines/l1;"
        }
    .end annotation

    .annotation build Lkotlinx/coroutines/e2;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/n;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/n;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/j2;->H(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/l1;

    move-result-object p0

    return-object p0
.end method
