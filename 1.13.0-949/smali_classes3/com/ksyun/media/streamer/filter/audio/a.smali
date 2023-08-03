.class public Lcom/ksyun/media/streamer/filter/audio/a;
.super Lcom/ksyun/media/streamer/framework/PinAdapter;
.source "AudioBufPinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/PinAdapter<",
        "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/PinAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/b;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/b;-><init>()V

    return-object v0
.end method
