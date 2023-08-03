.class Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$5;
.super Ljava/lang/Object;
.source "ImgTexSrcPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$5;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin$5;->a:Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;->c(Lcom/ksyun/media/streamer/capture/ImgTexSrcPin;)V

    return-void
.end method
