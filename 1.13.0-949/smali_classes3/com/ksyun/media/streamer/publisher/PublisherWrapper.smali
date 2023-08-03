.class public Lcom/ksyun/media/streamer/publisher/PublisherWrapper;
.super Ljava/lang/Object;
.source "PublisherWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/publisher/PublisherWrapper$a;
    }
.end annotation


# static fields
.field public static final A:I = -0xc2e

.field public static final B:I = 0x64

.field public static final C:I = 0x65

.field public static final D:I = 0x66

.field public static final E:I = 0x67

.field public static final F:I = 0x1

.field public static final G:I = 0x2

.field public static final H:I = 0x3

.field public static final I:I = 0x4

.field public static final J:I = 0x5

.field public static final K:I = 0x6

.field public static final L:I = 0x7

.field public static final M:I = 0x8

.field public static final N:I = 0x9

.field public static final O:I = 0xa

.field private static final P:Ljava/lang/String; = "PublisherWrapper"

.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = -0xbb8

.field public static final f:I = -0xbc2

.field public static final g:I = -0xbc3

.field public static final h:I = -0xbc4

.field public static final i:I = -0xbcc

.field public static final j:I = -0xc1d

.field public static final k:I = -0xc1e

.field public static final l:I = -0xc1f

.field public static final m:I = -0xc20

.field public static final n:I = -0xc21

.field public static final o:I = -0xc22

.field public static final p:I = -0xc23

.field public static final q:I = -0xc24

.field public static final r:I = -0xc25

.field public static final s:I = -0xc26

.field public static final t:I = -0xc27

.field public static final u:I = -0xc28

.field public static final v:I = -0xc29

.field public static final w:I = -0xc2a

.field public static final x:I = -0xc2b

.field public static final y:I = -0xc2c

.field public static final z:I = -0xc2d


# instance fields
.field private Q:J

.field private R:Lcom/ksyun/media/streamer/publisher/PublisherWrapper$a;


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
    iput-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    return-void
.end method

.method private native _abort(J)V
.end method

.method private native _add_audio_track(JIIIIILjava/nio/ByteBuffer;IJ)I
.end method

.method private native _add_meta_option(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native _add_video_track(JIIIFILjava/nio/ByteBuffer;IJ)I
.end method

.method private native _get_property_long(JI)J
.end method

.method private native _get_property_string(JI)Ljava/lang/String;
.end method

.method private native _init()J
.end method

.method private native _release(J)V
.end method

.method private native _set_audio_only(JZ)V
.end method

.method private native _set_bw_est_config(JIIIII)V
.end method

.method private native _set_enable_mp4_fast_start(JZ)V
.end method

.method private native _set_video_only(JZ)V
.end method

.method private native _start(JLjava/lang/String;)I
.end method

.method private native _stop(J)I
.end method

.method private native _write_frame(JIJLjava/nio/ByteBuffer;IJJI)I
.end method

.method private onEvent(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->R:Lcom/ksyun/media/streamer/publisher/PublisherWrapper$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper$a;->a(IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_get_property_long(JI)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public a(IIIFILjava/nio/ByteBuffer;J)I
    .locals 13

    move-object v12, p0

    .line 5
    iget-wide v1, v12, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    if-nez p6, :cond_0

    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    move v9, v0

    :goto_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v10, p7

    .line 7
    invoke-direct/range {v0 .. v11}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_add_video_track(JIIIFILjava/nio/ByteBuffer;IJ)I

    move-result v0

    return v0
.end method

.method public a(IIIIILjava/nio/ByteBuffer;J)I
    .locals 13

    move-object v12, p0

    .line 8
    iget-wide v1, v12, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    if-nez p6, :cond_0

    const/4 v0, 0x0

    const/4 v9, 0x0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    move v9, v0

    :goto_0
    move-object v0, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v10, p7

    .line 10
    invoke-direct/range {v0 .. v11}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_add_audio_track(JIIIIILjava/nio/ByteBuffer;IJ)I

    move-result v0

    return v0
.end method

.method public a(IJLjava/nio/ByteBuffer;JJI)I
    .locals 14

    move-object v13, p0

    .line 14
    iget-wide v1, v13, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    move-object v0, p0

    move v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_write_frame(JIJLjava/nio/ByteBuffer;IJJI)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_start(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_abort(J)V

    return-void
.end method

.method public a(IIIII)V
    .locals 8

    .line 2
    iget-wide v1, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_set_bw_est_config(JIIIII)V

    return-void
.end method

.method public a(Lcom/ksyun/media/streamer/publisher/PublisherWrapper$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->R:Lcom/ksyun/media/streamer/publisher/PublisherWrapper$a;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_add_meta_option(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_set_audio_only(JZ)V

    return-void
.end method

.method public b(I)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_get_property_long(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_release(J)V

    .line 5
    iput-wide v2, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_set_video_only(JZ)V

    return-void
.end method

.method public c()I
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_stop(J)I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_get_property_string(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->Q:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/publisher/PublisherWrapper;->_set_enable_mp4_fast_start(JZ)V

    return-void
.end method
