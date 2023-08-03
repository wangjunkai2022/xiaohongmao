.class public Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;
.super Ljava/lang/Object;
.source "AudioAPMFilterMgt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;
    }
.end annotation


# static fields
.field public static final AUDIO_NS_LEVEL_0:I = 0x0

.field public static final AUDIO_NS_LEVEL_1:I = 0x1

.field public static final AUDIO_NS_LEVEL_2:I = 0x2

.field public static final AUDIO_NS_LEVEL_3:I = 0x3

.field private static final a:Ljava/lang/String; = "AudioAPMFilterMgt"

.field private static final b:I = 0x1f40

.field private static final c:I = 0x3e80

.field private static final d:I = 0x7d00

.field private static final e:I = 0xac44

.field private static final f:I = 0xbb80


# instance fields
.field private g:Lcom/ksyun/media/streamer/framework/SinkPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/ksyun/media/streamer/framework/PinAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/PinAdapter<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

.field private k:Lcom/ksyun/media/streamer/filter/audio/APMFilter;

.field private l:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->m:Z

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->n:I

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$a;-><init>(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt$1;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->g:Lcom/ksyun/media/streamer/framework/SinkPin;

    .line 5
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/b;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/b;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->h:Lcom/ksyun/media/streamer/framework/SrcPin;

    .line 6
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/a;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/a;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->i:Lcom/ksyun/media/streamer/framework/PinAdapter;

    .line 7
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->j:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    .line 8
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/APMFilter;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->k:Lcom/ksyun/media/streamer/filter/audio/APMFilter;

    .line 9
    iget-boolean v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->m:Z

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->enableNs(Z)I

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->k:Lcom/ksyun/media/streamer/filter/audio/APMFilter;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->n:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->setNsLevel(I)I

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->h:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->j:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->j:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->k:Lcom/ksyun/media/streamer/filter/audio/APMFilter;

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSinkPin()Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->k:Lcom/ksyun/media/streamer/filter/audio/APMFilter;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->i:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v1, v1, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSinkPin:Lcom/ksyun/media/streamer/framework/SinkPin;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->connect(Lcom/ksyun/media/streamer/framework/SinkPin;)V

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->l:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->l:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-object p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;)Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->j:Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;

    return-object p0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;)Lcom/ksyun/media/streamer/framework/SrcPin;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->h:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public getNSState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->m:Z

    return v0
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

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->g:Lcom/ksyun/media/streamer/framework/SinkPin;

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

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->i:Lcom/ksyun/media/streamer/framework/PinAdapter;

    iget-object v0, v0, Lcom/ksyun/media/streamer/framework/PinAdapter;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->h:Lcom/ksyun/media/streamer/framework/SrcPin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->a()V

    return-void
.end method

.method public setAudioNSLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->n:I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->k:Lcom/ksyun/media/streamer/filter/audio/APMFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->setNsLevel(I)I

    return-void
.end method

.method public setEnableAudioNS(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->m:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->m:Z

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioAPMFilterMgt;->k:Lcom/ksyun/media/streamer/filter/audio/APMFilter;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->enableNs(Z)I

    return-void
.end method
