.class public Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;
.super Ljava/lang/Object;
.source "AVDemuxerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x9

.field public static final j:I = 0xa

.field public static final k:I = 0xb

.field public static final l:I = 0xc

.field public static final m:I = 0xd

.field public static final n:I = 0xe

.field public static final o:I = 0xf

.field public static final p:I = 0x10

.field private static final q:Ljava/lang/String; = "AVDemuxerWrapper"

.field private static final r:Z = false


# instance fields
.field private s:J

.field private t:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ksyun/media/streamer/util/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->s:J

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->s:J

    return-void
.end method

.method private native _abort(J)I
.end method

.method private native _get_property_long(JI)J
.end method

.method private native _get_property_string(JI)Ljava/lang/String;
.end method

.method private native _init()J
.end method

.method private native _release(J)V
.end method

.method private native _set_data_source(JLjava/lang/String;)I
.end method

.method private native _set_demux_ranges(JJJ)I
.end method

.method private native _start(J)I
.end method

.method private native _stop(J)I
.end method

.method private onDemuxed(JLjava/nio/ByteBuffer;JJII)V
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->t:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    .line 2
    invoke-interface/range {v1 .. v10}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;->onDemuxed(JLjava/nio/ByteBuffer;JJII)V

    :cond_0
    return-void
.end method

.method private onPrepared()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->t:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;->onPrepared()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->s:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->_start(J)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->s:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->_get_property_long(JI)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public a(JJ)I
    .locals 7

    .line 5
    iget-wide v1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->s:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->_set_demux_ranges(JJJ)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->s:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->_set_data_source(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->t:Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper$a;

    return-void
.end method

.method public b()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->s:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->_stop(J)I

    move-result v0

    return v0
.end method

.method public b(I)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->s:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->_get_property_long(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->s:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->_abort(J)I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->s:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->_get_property_string(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->s:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/demuxer/AVDemuxerWrapper;->_release(J)V

    return-void
.end method
