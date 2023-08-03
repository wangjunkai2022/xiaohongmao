.class final Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$g;
.super Lkotlin/jvm/internal/Lambda;
.source "RankTodayDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/paging/CombinedLoadStates;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/paging/CombinedLoadStates;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$g;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$g;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$g;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/paging/CombinedLoadStates;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$g;->invoke(Landroidx/paging/CombinedLoadStates;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/paging/CombinedLoadStates;)V
    .locals 3
    .param p1    # Landroidx/paging/CombinedLoadStates;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/paging/CombinedLoadStates;->getRefresh()Landroidx/paging/LoadState;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroidx/paging/LoadState$Error;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/paging/LoadState$Error;

    invoke-virtual {p1}, Landroidx/paging/LoadState$Error;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/util/toast/a;->n(Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
