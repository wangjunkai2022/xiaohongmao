.class Lcom/ksyun/media/player/KSYMediaRecorder$2;
.super Ljava/lang/Object;
.source "KSYMediaRecorder.java"

# interfaces
.implements Lcom/ksyun/media/player/KSYMediaPlayer$OnAudioPCMListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYMediaRecorder;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/KSYMediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$2;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPCMAvailable(Lcom/ksyun/media/player/IMediaPlayer;Ljava/nio/ByteBuffer;JIII)V
    .locals 0

    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$2;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-static {p1, p2, p3, p4}, Lcom/ksyun/media/player/KSYMediaRecorder;->a(Lcom/ksyun/media/player/KSYMediaRecorder;Ljava/nio/ByteBuffer;J)V

    return-void
.end method
