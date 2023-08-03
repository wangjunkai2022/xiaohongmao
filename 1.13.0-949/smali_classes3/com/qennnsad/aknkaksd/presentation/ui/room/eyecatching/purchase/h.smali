.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/h;->a:Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/h;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/h;->a:Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/h;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;->Z(Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V

    return-void
.end method
