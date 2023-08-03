.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    return-void
.end method


# virtual methods
.method public final onPrepared(Lcom/ksyun/media/player/IMediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;->l(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;Lcom/ksyun/media/player/IMediaPlayer;)V

    return-void
.end method
