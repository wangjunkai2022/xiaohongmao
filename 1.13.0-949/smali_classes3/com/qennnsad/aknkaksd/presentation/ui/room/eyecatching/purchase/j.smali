.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;
.super Ljava/lang/Object;
.source "PurchaseItemListFragmentDialog_MembersInjector.java"

# interfaces
.implements Ld6/g;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/g<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lx4/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->c:Lu7/c;

    return-void
.end method

.method public static b(Lu7/c;Lu7/c;Lu7/c;)Ld6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/websocket/j;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;)",
            "Ld6/g<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;-><init>(Lu7/c;Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;Lx4/a;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.PurchaseItemListFragmentDialog.analytics"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;->j:Lx4/a;

    return-void
.end method

.method public static d(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;Lg5/a;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.PurchaseItemListFragmentDialog.localDataManager"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;->h:Lg5/a;

    return-void
.end method

.method public static f(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;Lcom/qennnsad/aknkaksd/data/websocket/j;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.PurchaseItemListFragmentDialog.wsObjectPool"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;->i:Lcom/qennnsad/aknkaksd/data/websocket/j;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;)V

    return-void
.end method

.method public e(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/websocket/j;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->f(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;Lcom/qennnsad/aknkaksd/data/websocket/j;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->c:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/j;->c(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;Lx4/a;)V

    return-void
.end method
