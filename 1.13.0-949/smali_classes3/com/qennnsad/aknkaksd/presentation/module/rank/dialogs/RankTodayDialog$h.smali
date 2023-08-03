.class public final Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$h;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RankTodayDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$h",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "",
        "positionStart",
        "itemCount",
        "",
        "onItemRangeChanged",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Le5/h0;


# direct methods
.method constructor <init>(ILe5/h0;)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$h;->a:I

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$h;->b:Le5/h0;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeChanged(II)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$h;->a:I

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog$h;->b:Le5/h0;

    iget-object p2, p2, Le5/h0;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method
