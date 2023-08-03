.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Le5/h0;


# direct methods
.method public synthetic constructor <init>(Le5/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/c;->a:Le5/h0;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/c;->a:Le5/h0;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/rank/dialogs/RankTodayDialog;->j0(Le5/h0;Ljava/lang/Boolean;)V

    return-void
.end method
