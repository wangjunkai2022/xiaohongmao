.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Le5/x0;


# direct methods
.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lkotlin/jvm/functions/Function2;Le5/x0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/a;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/a;->b:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/a;->c:Le5/x0;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/a;->a:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/a;->b:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/a;->c:Le5/x0;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;->v0(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lkotlin/jvm/functions/Function2;Le5/x0;Ljava/lang/Boolean;)V

    return-void
.end method
