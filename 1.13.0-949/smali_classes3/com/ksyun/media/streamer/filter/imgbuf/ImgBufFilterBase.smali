.class public abstract Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;
.super Ljava/lang/Object;
.source "ImgBufFilterBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;
    }
.end annotation


# static fields
.field protected static final DEFAULT_SINKPIN_NUM:I = 0x1

.field protected static final DEFAULT_SRCPIN_NUM:I = 0x1

.field private static final a:Ljava/lang/String; = "ImgBufFilterBase"


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

.field protected mImagePreProcess:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

.field protected mInputFrames:[Lcom/ksyun/media/streamer/framework/ImgBufFrame;

.field protected mMainSinkPinIndex:I

.field protected mOutPutFrame:Lcom/ksyun/media/streamer/framework/ImgBufFrame;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    .line 12
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->d:Z

    .line 13
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->b:Ljava/util/List;

    .line 14
    new-instance v1, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPinNum()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->b:Ljava/util/List;

    new-instance v2, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;

    invoke-direct {v2, p0, v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;-><init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPinNum()I

    move-result v0

    new-array v0, v0, [Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mInputFrames:[Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    .line 18
    new-instance v0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mImagePreProcess:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->d:Z

    .line 4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->b:Ljava/util/List;

    .line 5
    new-instance v1, Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPinNum()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->b:Ljava/util/List;

    new-instance v2, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;

    invoke-direct {v2, p0, v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase$a;-><init>(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPinNum()I

    move-result v0

    new-array v0, v0, [Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mInputFrames:[Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    .line 9
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mImagePreProcess:Lcom/ksyun/media/streamer/filter/imgbuf/ImgPreProcessWrap;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;Lcom/ksyun/media/streamer/framework/ImgBufFormat;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->e:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;)Lcom/ksyun/media/streamer/framework/ImgBufFormat;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->e:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    return-object p0
.end method


# virtual methods
.method protected abstract doFilter()V
.end method

.method public final getMainSinkPinIndex()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    return v0
.end method

.method public getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v0

    return-object v0
.end method

.method public getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getSinkPinNum()I
.end method

.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method protected abstract getSrcPinFormat()Lcom/ksyun/media/streamer/framework/ImgBufFormat;
.end method

.method protected onFormatChanged(ILcom/ksyun/media/streamer/framework/ImgBufFormat;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 4
    iput-boolean v1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setMainSinkPinIndex(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgbuf/ImgBufFilterBase;->mMainSinkPinIndex:I

    return-void
.end method
