.class public final Landroidx/paging/HintHandler;
.super Ljava/lang/Object;
.source "HintHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/HintHandler$State;,
        Landroidx/paging/HintHandler$HintFlow;,
        Landroidx/paging/HintHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u0014\u0015B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0005R\u0018\u0010\u000c\u001a\u00060\u000bR\u00020\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/paging/HintHandler;",
        "",
        "Landroidx/paging/LoadType;",
        "loadType",
        "Lkotlinx/coroutines/flow/i;",
        "Landroidx/paging/ViewportHint;",
        "hintFor",
        "viewportHint",
        "",
        "forceSetHint",
        "processHint",
        "Landroidx/paging/HintHandler$State;",
        "state",
        "Landroidx/paging/HintHandler$State;",
        "Landroidx/paging/ViewportHint$Access;",
        "getLastAccessHint",
        "()Landroidx/paging/ViewportHint$Access;",
        "lastAccessHint",
        "<init>",
        "()V",
        "HintFlow",
        "State",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final state:Landroidx/paging/HintHandler$State;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/paging/HintHandler$State;

    invoke-direct {v0, p0}, Landroidx/paging/HintHandler$State;-><init>(Landroidx/paging/HintHandler;)V

    iput-object v0, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    return-void
.end method


# virtual methods
.method public final forceSetHint(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;)V
    .locals 3
    .param p1    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/ViewportHint;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "loadType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewportHint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    const/4 v1, 0x0

    new-instance v2, Landroidx/paging/HintHandler$forceSetHint$2;

    invoke-direct {v2, p1, p2}, Landroidx/paging/HintHandler$forceSetHint$2;-><init>(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;)V

    invoke-virtual {v0, v1, v2}, Landroidx/paging/HintHandler$State;->modify(Landroidx/paging/ViewportHint$Access;Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_2
    const-string p2, "invalid load type for reset: "

    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final getLastAccessHint()Landroidx/paging/ViewportHint$Access;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    invoke-virtual {v0}, Landroidx/paging/HintHandler$State;->getLastAccessHint()Landroidx/paging/ViewportHint$Access;

    move-result-object v0

    return-object v0
.end method

.method public final hintFor(Landroidx/paging/LoadType;)Lkotlinx/coroutines/flow/i;
    .locals 1
    .param p1    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            ")",
            "Lkotlinx/coroutines/flow/i<",
            "Landroidx/paging/ViewportHint;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "loadType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/paging/HintHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    invoke-virtual {p1}, Landroidx/paging/HintHandler$State;->getAppendFlow()Lkotlinx/coroutines/flow/i;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid load type for hints"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    iget-object p1, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    invoke-virtual {p1}, Landroidx/paging/HintHandler$State;->getPrependFlow()Lkotlinx/coroutines/flow/i;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final processHint(Landroidx/paging/ViewportHint;)V
    .locals 3
    .param p1    # Landroidx/paging/ViewportHint;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "viewportHint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/paging/HintHandler;->state:Landroidx/paging/HintHandler$State;

    instance-of v1, p1, Landroidx/paging/ViewportHint$Access;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroidx/paging/ViewportHint$Access;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Landroidx/paging/HintHandler$processHint$1;

    invoke-direct {v2, p1}, Landroidx/paging/HintHandler$processHint$1;-><init>(Landroidx/paging/ViewportHint;)V

    invoke-virtual {v0, v1, v2}, Landroidx/paging/HintHandler$State;->modify(Landroidx/paging/ViewportHint$Access;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
