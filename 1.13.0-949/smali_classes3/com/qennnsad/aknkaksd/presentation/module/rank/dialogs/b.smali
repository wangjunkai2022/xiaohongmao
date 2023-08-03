.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/RankItem;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;Lcom/qennnsad/aknkaksd/data/bean/RankItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/b;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/b;->b:Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/b;->a:Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/b;->b:Lcom/qennnsad/aknkaksd/data/bean/RankItem;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->i0(Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;Lcom/qennnsad/aknkaksd/data/bean/RankItem;Landroid/view/View;)V

    return-void
.end method
