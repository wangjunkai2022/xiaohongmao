.class Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$2;
.super Ljava/lang/Object;
.source "CameraTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$2;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$2;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->c(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper$2;->a:Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;->b(Lcom/ksyun/media/streamer/capture/camera/CameraTouchHelper;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/capture/camera/ICameraHintView;->setFocused(Z)V

    return-void
.end method
