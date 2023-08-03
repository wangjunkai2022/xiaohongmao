.class public final Landroidx/paging/RemoteMediatorAccessorKt;
.super Ljava/lang/Object;
.source "RemoteMediatorAccessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aD\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000\"\u0008\u0008\u0001\u0010\u0002*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "",
        "Key",
        "Value",
        "Lkotlinx/coroutines/s0;",
        "scope",
        "Landroidx/paging/RemoteMediator;",
        "delegate",
        "Landroidx/paging/RemoteMediatorAccessor;",
        "RemoteMediatorAccessor",
        "paging-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final RemoteMediatorAccessor(Lkotlinx/coroutines/s0;Landroidx/paging/RemoteMediator;)Landroidx/paging/RemoteMediatorAccessor;
    .locals 1
    .param p0    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Landroidx/paging/RemoteMediator;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Key:",
            "Ljava/lang/Object;",
            "Value:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/s0;",
            "Landroidx/paging/RemoteMediator<",
            "TKey;TValue;>;)",
            "Landroidx/paging/RemoteMediatorAccessor<",
            "TKey;TValue;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "scope"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/paging/RemoteMediatorAccessImpl;

    invoke-direct {v0, p0, p1}, Landroidx/paging/RemoteMediatorAccessImpl;-><init>(Lkotlinx/coroutines/s0;Landroidx/paging/RemoteMediator;)V

    return-object v0
.end method
