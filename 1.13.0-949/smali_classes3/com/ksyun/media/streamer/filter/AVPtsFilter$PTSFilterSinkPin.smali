.class public Lcom/ksyun/media/streamer/filter/AVPtsFilter$PTSFilterSinkPin;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "AVPtsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/AVPtsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PTSFilterSinkPin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ksyun/media/streamer/filter/AVPtsFilter;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/filter/AVPtsFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter$PTSFilterSinkPin;->this$0:Lcom/ksyun/media/streamer/filter/AVPtsFilter;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnect(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onDisconnect(Z)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter$PTSFilterSinkPin;->this$0:Lcom/ksyun/media/streamer/filter/AVPtsFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->onDisconnect(Z)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter$PTSFilterSinkPin;->this$0:Lcom/ksyun/media/streamer/filter/AVPtsFilter;

    iget-object p1, p1, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    :cond_0
    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter$PTSFilterSinkPin;->this$0:Lcom/ksyun/media/streamer/filter/AVPtsFilter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter$PTSFilterSinkPin;->this$0:Lcom/ksyun/media/streamer/filter/AVPtsFilter;

    iget-wide v1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    invoke-static {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->a(Lcom/ksyun/media/streamer/filter/AVPtsFilter;J)J

    move-result-wide v0

    .line 3
    iput-wide v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/AVPtsFilter$PTSFilterSinkPin;->this$0:Lcom/ksyun/media/streamer/filter/AVPtsFilter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/filter/AVPtsFilter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void
.end method
