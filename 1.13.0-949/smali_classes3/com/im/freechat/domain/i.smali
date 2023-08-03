.class public final Lcom/im/freechat/domain/i;
.super Ljava/lang/Object;
.source "Flow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a!\u0010\u0001\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0001\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "T",
        "a",
        "Lkotlinx/coroutines/flow/i;",
        "(Ljava/lang/Object;)Lkotlinx/coroutines/flow/i;",
        "domain"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlinx/coroutines/flow/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/flow/k;->a(Ljava/lang/Iterable;)Lkotlinx/coroutines/flow/i;

    move-result-object p0

    return-object p0
.end method
