.class public final Lcom/google/android/exoplayer2/audio/m0;
.super Lcom/google/android/exoplayer2/audio/z;
.source "TeeAudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/m0$b;,
        Lcom/google/android/exoplayer2/audio/m0$a;
    }
.end annotation


# instance fields
.field private final i:Lcom/google/android/exoplayer2/audio/m0$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/m0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/z;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/m0$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/m0;->i:Lcom/google/android/exoplayer2/audio/m0$a;

    return-void
.end method

.method private m()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/m0;->i:Lcom/google/android/exoplayer2/audio/m0$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/z;->b:Lcom/google/android/exoplayer2/audio/AudioProcessor$a;

    iget v2, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->a:I

    iget v3, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->b:I

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$a;->c:I

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/audio/m0$a;->b(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/m0;->i:Lcom/google/android/exoplayer2/audio/m0$a;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/audio/m0$a;->a(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/z;->l(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public h(Lcom/google/android/exoplayer2/audio/AudioProcessor$a;)Lcom/google/android/exoplayer2/audio/AudioProcessor$a;
    .locals 0

    return-object p1
.end method

.method protected i()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/m0;->m()V

    return-void
.end method

.method protected j()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/m0;->m()V

    return-void
.end method

.method protected k()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/m0;->m()V

    return-void
.end method
