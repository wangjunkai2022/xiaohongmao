.class Lcom/ksyun/media/player/AndroidMediaPlayer$b;
.super Landroid/media/MediaDataSource;
.source "AndroidMediaPlayer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/ksyun/media/player/misc/IMediaDataSource;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/misc/IMediaDataSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$b;->a:Lcom/ksyun/media/player/misc/IMediaDataSource;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$b;->a:Lcom/ksyun/media/player/misc/IMediaDataSource;

    invoke-interface {v0}, Lcom/ksyun/media/player/misc/IMediaDataSource;->close()V

    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$b;->a:Lcom/ksyun/media/player/misc/IMediaDataSource;

    invoke-interface {v0}, Lcom/ksyun/media/player/misc/IMediaDataSource;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/player/AndroidMediaPlayer$b;->a:Lcom/ksyun/media/player/misc/IMediaDataSource;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ksyun/media/player/misc/IMediaDataSource;->readAt(J[BII)I

    move-result p1

    return p1
.end method
