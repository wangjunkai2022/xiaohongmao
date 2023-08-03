.class public final Lkotlinx/coroutines/h0;
.super Ljava/lang/Object;
.source "CompletionHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a8\u0010\u0007\u001a\u00020\u0005*#\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0004\u0012\u0004\u0012\u00020\u00050\u0000j\u0002`\u00062\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0080\u0008\":\u0010\u000b\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0004\u0012\u0004\u0012\u00020\u00050\u0000j\u0002`\u0006*\u00020\u00088\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\":\u0010\u000b\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0001\u00a2\u0006\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0004\u0012\u0004\u0012\u00020\u00050\u0000j\u0002`\u0006*\u00020\u000c8\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "",
        "Lkotlinx/coroutines/CompletionHandler;",
        "c",
        "Lkotlinx/coroutines/g0;",
        "b",
        "(Lkotlinx/coroutines/g0;)Lkotlin/jvm/functions/Function1;",
        "asHandler",
        "Lkotlinx/coroutines/p;",
        "a",
        "(Lkotlinx/coroutines/p;)Lkotlin/jvm/functions/Function1;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lkotlinx/coroutines/p;)Lkotlin/jvm/functions/Function1;
    .locals 0
    .param p0    # Lkotlinx/coroutines/p;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/p;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/g0;)Lkotlin/jvm/functions/Function1;
    .locals 0
    .param p0    # Lkotlinx/coroutines/g0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/g0;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    return-object p0
.end method

.method public static final c(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 0
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
