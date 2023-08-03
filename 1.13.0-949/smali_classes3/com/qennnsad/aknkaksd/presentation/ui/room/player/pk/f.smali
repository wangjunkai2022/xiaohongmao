.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/f;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/f;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/f;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/f;->b:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;->b(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/g;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
