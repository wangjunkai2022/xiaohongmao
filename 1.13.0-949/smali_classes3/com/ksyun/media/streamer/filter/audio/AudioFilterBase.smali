.class public abstract Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;
.super Ljava/lang/Object;
.source "AudioFilterBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AudioFilterBase"


# instance fields
.field private b:Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

.field private e:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

.field private f:Ljava/nio/ByteBuffer;

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$a;-><init>(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase$1;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b:Lcom/ksyun/media/streamer/framework/SinkPin;

    .line 3
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/b;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/b;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->d:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->d:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->f:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->h:J

    return-wide p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->e:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-object p0
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->e:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-object p1
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->h:J

    return-wide v0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->f:Ljava/nio/ByteBuffer;

    return-object p0
.end method


# virtual methods
.method protected attachTo(IJZ)V
    .locals 0

    return-void
.end method

.method protected abstract doFilter(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Lcom/ksyun/media/streamer/framework/AudioBufFrame;
.end method

.method protected abstract doFormatChanged(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
.end method

.method protected doRelease()V
    .locals 0

    return-void
.end method

.method protected getNativeInstance()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getOutFormat()Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->b:Lcom/ksyun/media/streamer/framework/SinkPin;

    return-object v0
.end method

.method public getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method protected readNative(Ljava/nio/ByteBuffer;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->c:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->doRelease()V

    return-void
.end method
