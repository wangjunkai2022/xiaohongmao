.class Lcom/ksyun/media/player/KSYMediaRecorder$c;
.super Ljava/lang/Object;
.source "KSYMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/KSYMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/KSYMediaRecorder;

.field private b:Ljava/nio/ByteBuffer;

.field private c:J

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/ksyun/media/player/KSYMediaRecorder;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->b:Ljava/nio/ByteBuffer;

    .line 3
    iput-wide p3, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->c:J

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/player/KSYMediaRecorder;Ljava/nio/ByteBuffer;IJI)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->a:Lcom/ksyun/media/player/KSYMediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->b:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 8
    iput p3, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->d:I

    .line 9
    iput-wide p4, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->c:J

    .line 10
    iput p6, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->e:I

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/KSYMediaRecorder$c;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->b:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic b(Lcom/ksyun/media/player/KSYMediaRecorder$c;)J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/ksyun/media/player/KSYMediaRecorder$c;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->d:I

    return p0
.end method

.method static synthetic d(Lcom/ksyun/media/player/KSYMediaRecorder$c;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/KSYMediaRecorder$c;->e:I

    return p0
.end method
