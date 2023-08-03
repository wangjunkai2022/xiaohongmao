.class public Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;
.super Ljava/lang/Object;
.source "AVDecoderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AVDecoderWrapper"

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static g:Z = false


# instance fields
.field private d:J

.field private e:I

.field private f:Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper$a;


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
    invoke-direct {p0}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->d:J

    return-void
.end method

.method private native _close(J)V
.end method

.method private native _decode(JILjava/nio/ByteBuffer;IJIJ)I
.end method

.method private native _init()J
.end method

.method private native _open_audio(JJ)I
.end method

.method private native _open_video(JJ)I
.end method

.method private native _release(J)V
.end method

.method private onDecoded(Ljava/nio/ByteBuffer;JJI)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->g:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDecoded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " dts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVDecoderWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->f:Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper$a;

    if-eqz v2, :cond_2

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    .line 4
    invoke-interface/range {v2 .. v8}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper$a;->onDecoded(Ljava/nio/ByteBuffer;JJI)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->e:I

    .line 3
    iget-wide v0, p0, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->d:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->_open_audio(JJ)I

    move-result p1

    return p1
.end method

.method public a(Ljava/nio/ByteBuffer;JIJ)I
    .locals 12

    move-object v11, p0

    if-eqz p1, :cond_0

    .line 4
    iget-wide v1, v11, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->d:J

    iget v3, v11, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->e:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    move-object v0, p0

    move-object v4, p1

    move-wide v6, p2

    move/from16 v8, p4

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->_decode(JILjava/nio/ByteBuffer;IJIJ)I

    move-result v0

    return v0

    .line 5
    :cond_0
    iget-wide v1, v11, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->d:J

    iget v3, v11, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v6, p2

    move/from16 v8, p4

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->_decode(JILjava/nio/ByteBuffer;IJIJ)I

    move-result v0

    return v0
.end method

.method public a()V
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->d:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->_close(J)V

    return-void
.end method

.method public a(Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->f:Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper$a;

    return-void
.end method

.method public b(J)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->e:I

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->d:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->_open_video(JJ)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->d:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->_release(J)V

    return-void
.end method
