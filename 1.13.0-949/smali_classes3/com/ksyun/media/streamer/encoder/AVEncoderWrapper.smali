.class public Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;
.super Ljava/lang/Object;
.source "AVEncoderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field private static final i:Ljava/lang/String; = "AVEncoderWrapper"

.field private static final j:I = 0x1

.field private static final k:I = 0x2


# instance fields
.field private l:J

.field private m:I

.field private n:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;


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

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->l:J

    return-void
.end method

.method private native _adjust_bitrate(JI)I
.end method

.method private native _close(J)I
.end method

.method private native _encode(JILjava/nio/ByteBuffer;IJI)I
.end method

.method private native _get_avcodec_par(J)J
.end method

.method private native _init()J
.end method

.method private native _open_audio(JIIIIII)I
.end method

.method private native _open_video(JIIIIIFFIIIZI)I
.end method

.method private native _release(J)V
.end method

.method private onEncoded(JLjava/nio/ByteBuffer;JJI)V
    .locals 10

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->n:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    .line 2
    invoke-interface/range {v1 .. v9}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;->onEncoded(JLjava/nio/ByteBuffer;JJI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->l:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->_close(J)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->l:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->_adjust_bitrate(JI)I

    move-result p1

    return p1
.end method

.method public a(IIIIIFFIIIZI)I
    .locals 16

    move-object/from16 v15, p0

    const/4 v0, 0x2

    .line 4
    iput v0, v15, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->m:I

    .line 5
    iget-wide v1, v15, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->l:J

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->_open_video(JIIIIIFFIIIZI)I

    move-result v0

    return v0
.end method

.method public a(IIIIII)I
    .locals 10

    move-object v9, p0

    const/4 v0, 0x1

    .line 2
    iput v0, v9, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->m:I

    .line 3
    iget-wide v1, v9, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->l:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->_open_audio(JIIIIII)I

    move-result v0

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;JI)I
    .locals 9

    if-eqz p1, :cond_0

    .line 7
    iget-wide v1, p0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->l:J

    iget v3, p0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->m:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    move-object v0, p0

    move-object v4, p1

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->_encode(JILjava/nio/ByteBuffer;IJI)I

    move-result p1

    return p1

    .line 8
    :cond_0
    iget-wide v1, p0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->l:J

    iget v3, p0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->m:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->_encode(JILjava/nio/ByteBuffer;IJI)I

    move-result p1

    return p1
.end method

.method public a(Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->n:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;

    return-void
.end method

.method public b()V
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->l:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->_release(J)V

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->l:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->_get_avcodec_par(J)J

    move-result-wide v0

    return-wide v0
.end method
