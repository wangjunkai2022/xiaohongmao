.class final Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$c;
.super Lkotlin/jvm/internal/Lambda;
.source "RankTodayDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$c;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$c;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$c;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->r0()Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;->y()Lkotlinx/coroutines/flow/t;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$b;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$c;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->m0(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/rank/h$b;-><init>(Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/t;->setValue(Ljava/lang/Object;)V

    return-void
.end method
