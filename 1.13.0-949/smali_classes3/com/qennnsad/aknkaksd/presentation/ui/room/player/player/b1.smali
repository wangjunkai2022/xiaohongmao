.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b1;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b1;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b1;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/b1;->b:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->M3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Landroid/view/ViewGroup;)V

    return-void
.end method
