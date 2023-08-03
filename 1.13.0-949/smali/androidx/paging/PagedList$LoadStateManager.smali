.class public abstract Landroidx/paging/PagedList$LoadStateManager;
.super Ljava/lang/Object;
.source "PagedList.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PagedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LoadStateManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PagedList$LoadStateManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u000f\u001a\u00020\u00102\u0018\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00100\u0012J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0004H\'J\u0016\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/paging/PagedList$LoadStateManager;",
        "",
        "()V",
        "endState",
        "Landroidx/paging/LoadState;",
        "getEndState",
        "()Landroidx/paging/LoadState;",
        "setEndState",
        "(Landroidx/paging/LoadState;)V",
        "refreshState",
        "getRefreshState",
        "setRefreshState",
        "startState",
        "getStartState",
        "setStartState",
        "dispatchCurrentLoadState",
        "",
        "callback",
        "Lkotlin/Function2;",
        "Landroidx/paging/LoadType;",
        "onStateChanged",
        "type",
        "state",
        "setState",
        "paging-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private endState:Landroidx/paging/LoadState;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private refreshState:Landroidx/paging/LoadState;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private startState:Landroidx/paging/LoadState;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v0}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object v1

    iput-object v1, p0, Landroidx/paging/PagedList$LoadStateManager;->refreshState:Landroidx/paging/LoadState;

    .line 3
    invoke-virtual {v0}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object v1

    iput-object v1, p0, Landroidx/paging/PagedList$LoadStateManager;->startState:Landroidx/paging/LoadState;

    .line 4
    invoke-virtual {v0}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/PagedList$LoadStateManager;->endState:Landroidx/paging/LoadState;

    return-void
.end method


# virtual methods
.method public final dispatchCurrentLoadState(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/paging/LoadType;",
            "-",
            "Landroidx/paging/LoadState;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    iget-object v1, p0, Landroidx/paging/PagedList$LoadStateManager;->refreshState:Landroidx/paging/LoadState;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    iget-object v1, p0, Landroidx/paging/PagedList$LoadStateManager;->startState:Landroidx/paging/LoadState;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    iget-object v1, p0, Landroidx/paging/PagedList$LoadStateManager;->endState:Landroidx/paging/LoadState;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getEndState()Landroidx/paging/LoadState;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagedList$LoadStateManager;->endState:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public final getRefreshState()Landroidx/paging/LoadState;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagedList$LoadStateManager;->refreshState:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public final getStartState()Landroidx/paging/LoadState;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/paging/PagedList$LoadStateManager;->startState:Landroidx/paging/LoadState;

    return-object v0
.end method

.method public abstract onStateChanged(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V
    .param p1    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end method

.method public final setEndState(Landroidx/paging/LoadState;)V
    .locals 1
    .param p1    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/paging/PagedList$LoadStateManager;->endState:Landroidx/paging/LoadState;

    return-void
.end method

.method public final setRefreshState(Landroidx/paging/LoadState;)V
    .locals 1
    .param p1    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/paging/PagedList$LoadStateManager;->refreshState:Landroidx/paging/LoadState;

    return-void
.end method

.method public final setStartState(Landroidx/paging/LoadState;)V
    .locals 1
    .param p1    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/paging/PagedList$LoadStateManager;->startState:Landroidx/paging/LoadState;

    return-void
.end method

.method public final setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V
    .locals 2
    .param p1    # Landroidx/paging/LoadType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/paging/LoadState;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/paging/PagedList$LoadStateManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/paging/PagedList$LoadStateManager;->endState:Landroidx/paging/LoadState;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p2, p0, Landroidx/paging/PagedList$LoadStateManager;->endState:Landroidx/paging/LoadState;

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Landroidx/paging/PagedList$LoadStateManager;->startState:Landroidx/paging/LoadState;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 5
    :cond_3
    iput-object p2, p0, Landroidx/paging/PagedList$LoadStateManager;->startState:Landroidx/paging/LoadState;

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Landroidx/paging/PagedList$LoadStateManager;->refreshState:Landroidx/paging/LoadState;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 7
    :cond_5
    iput-object p2, p0, Landroidx/paging/PagedList$LoadStateManager;->refreshState:Landroidx/paging/LoadState;

    .line 8
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagedList$LoadStateManager;->onStateChanged(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    return-void
.end method
