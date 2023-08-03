.class public Lcom/google/android/exoplayer2/decoder/h;
.super Lcom/google/android/exoplayer2/decoder/f;
.source "SimpleOutputBuffer.java"


# instance fields
.field private final d:Lcom/google/android/exoplayer2/decoder/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/f$a<",
            "Lcom/google/android/exoplayer2/decoder/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/decoder/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/decoder/f$a<",
            "Lcom/google/android/exoplayer2/decoder/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/h;->d:Lcom/google/android/exoplayer2/decoder/f$a;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/decoder/a;->f()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/h;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/h;->d:Lcom/google/android/exoplayer2/decoder/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/f$a;->a(Lcom/google/android/exoplayer2/decoder/f;)V

    return-void
.end method

.method public p(JI)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/decoder/f;->b:J

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/h;->e:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-ge p1, p3, :cond_1

    .line 3
    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/h;->e:Ljava/nio/ByteBuffer;

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/h;->e:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/h;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/decoder/h;->e:Ljava/nio/ByteBuffer;

    return-object p1
.end method
