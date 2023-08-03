.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ksyun/media/player/IMediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    return-void
.end method


# virtual methods
.method public final onInfo(Lcom/ksyun/media/player/IMediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/c;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;

    invoke-static {v0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;->k(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/wrapper/f;Lcom/ksyun/media/player/IMediaPlayer;II)Z

    move-result p1

    return p1
.end method
