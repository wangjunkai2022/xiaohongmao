.class final Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$e;
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
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/RankItem;",
        "it",
        "",
        "a",
        "(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/RankItem;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->isFollowed()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->r0()Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;->B(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->r0()Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/RankItem;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayViewModel;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$e;->a(Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
