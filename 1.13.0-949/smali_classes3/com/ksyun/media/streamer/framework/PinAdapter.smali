.class public Lcom/ksyun/media/streamer/framework/PinAdapter;
.super Ljava/lang/Object;
.source "PinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ksyun/media/streamer/framework/AVFrameBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/framework/PinAdapter;->a()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/framework/PinAdapter$1;

    invoke-direct {v0, p0}, Lcom/ksyun/media/streamer/framework/PinAdapter$1;-><init>(Lcom/ksyun/media/streamer/framework/PinAdapter;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-void
.end method


# virtual methods
.method protected a()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    return-object v0
.end method

.method public onDisconnect(Z)V
    .locals 0

    return-void
.end method
