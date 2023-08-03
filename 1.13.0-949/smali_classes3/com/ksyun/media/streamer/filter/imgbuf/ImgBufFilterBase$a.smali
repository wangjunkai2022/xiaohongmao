.class Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "ImgBufFilterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    .line 2
    iput p2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    iget-object v1, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mInputFrames:[Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->b:I

    aput-object p1, v1, v2

    .line 2
    iget p1, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    if-ne v2, p1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->doFilter()V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    iget-object v0, p1, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mOutPutFrame:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 5
    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->b(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->b(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    invoke-static {p1, v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;Lcom/ksyun/media/streamer/framework/ImgBufFormat;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    invoke-static {p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    iget-object v0, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mOutPutFrame:Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    :cond_2
    return-void
.end method

.method public onDisconnect(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->b:I

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    iget v2, v1, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    if-ne v0, v2, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->release()V

    :cond_0
    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->b:I

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    invoke-virtual {v0, v1, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->onFormatChanged(ILcom/ksyun/media/streamer/framework/ImgBufFormat;)V

    .line 2
    iget p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->b:I

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    iget v1, v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    if-ne p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->a(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;->a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V

    return-void
.end method
