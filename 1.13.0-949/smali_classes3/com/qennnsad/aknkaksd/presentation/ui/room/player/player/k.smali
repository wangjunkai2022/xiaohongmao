.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/k;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->g3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V

    return-void
.end method
