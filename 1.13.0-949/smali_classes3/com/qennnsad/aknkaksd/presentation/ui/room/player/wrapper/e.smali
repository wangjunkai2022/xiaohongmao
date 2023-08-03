.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/e;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Lcom/ksyun/media/player/IMediaPlayer;IIII)V
    .locals 6

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/e;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;->n(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;Lcom/ksyun/media/player/IMediaPlayer;IIII)V

    return-void
.end method
