.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

.field public final synthetic b:Le5/o1;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;Le5/o1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/b;->b:Le5/o1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/b;->b:Le5/o1;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->Y(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)V

    return-void
.end method
