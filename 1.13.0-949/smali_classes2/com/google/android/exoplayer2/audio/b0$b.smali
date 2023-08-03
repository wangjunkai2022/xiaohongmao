.class final Lcom/google/android/exoplayer2/audio/b0$b;
.super Ljava/lang/Object;
.source "DecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/audio/b0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/b0$b;->a:Lcom/google/android/exoplayer2/audio/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/b0;Lcom/google/android/exoplayer2/audio/b0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/b0$b;-><init>(Lcom/google/android/exoplayer2/audio/b0;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0$b;->a:Lcom/google/android/exoplayer2/audio/b0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b0;->O(Lcom/google/android/exoplayer2/audio/b0;)Lcom/google/android/exoplayer2/audio/u$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/u$a;->C(Z)V

    return-void
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0$b;->a:Lcom/google/android/exoplayer2/audio/b0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b0;->O(Lcom/google/android/exoplayer2/audio/b0;)Lcom/google/android/exoplayer2/audio/u$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/u$a;->B(J)V

    return-void
.end method

.method public synthetic c(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/v;->c(Lcom/google/android/exoplayer2/audio/AudioSink$a;J)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "DecoderAudioRenderer"

    const-string v1, "Audio sink error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/w;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0$b;->a:Lcom/google/android/exoplayer2/audio/b0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b0;->O(Lcom/google/android/exoplayer2/audio/b0;)Lcom/google/android/exoplayer2/audio/u$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/u$a;->l(Ljava/lang/Exception;)V

    return-void
.end method

.method public e(IJJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0$b;->a:Lcom/google/android/exoplayer2/audio/b0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/b0;->O(Lcom/google/android/exoplayer2/audio/b0;)Lcom/google/android/exoplayer2/audio/u$a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/u$a;->D(IJJ)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0$b;->a:Lcom/google/android/exoplayer2/audio/b0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/b0;->Z()V

    return-void
.end method

.method public synthetic g()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/v;->b(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V

    return-void
.end method
