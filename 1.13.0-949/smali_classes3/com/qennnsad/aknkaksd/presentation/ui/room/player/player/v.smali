.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v;
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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->s3(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;Z)V

    return-void
.end method
