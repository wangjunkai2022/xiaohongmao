.class public abstract Lcom/google/android/exoplayer2/audio/b0;
.super Lcom/google/android/exoplayer2/f;
.source "DecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/b0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/decoder/c<",
        "Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
        "+",
        "Lcom/google/android/exoplayer2/decoder/h;",
        "+",
        "Lcom/google/android/exoplayer2/decoder/DecoderException;",
        ">;>",
        "Lcom/google/android/exoplayer2/f;",
        "Lcom/google/android/exoplayer2/util/y;"
    }
.end annotation


# static fields
.field private static final H:Ljava/lang/String; = "DecoderAudioRenderer"

.field private static final I:I = 0x0

.field private static final J:I = 0x1

.field private static final K:I = 0x2


# instance fields
.field private A:Z

.field private B:Z

.field private C:J

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private final m:Lcom/google/android/exoplayer2/audio/u$a;

.field private final n:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private final o:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private p:Lcom/google/android/exoplayer2/decoder/d;

.field private q:Lcom/google/android/exoplayer2/Format;

.field private r:I

.field private s:I

.field private t:Z

.field private u:Lcom/google/android/exoplayer2/decoder/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Lcom/google/android/exoplayer2/decoder/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/exoplayer2/audio/b0;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 2
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/audio/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/f;-><init>(I)V

    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/audio/u$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/audio/u$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->m:Lcom/google/android/exoplayer2/audio/u$a;

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/audio/b0$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/audio/b0$b;-><init>(Lcom/google/android/exoplayer2/audio/b0;Lcom/google/android/exoplayer2/audio/b0$a;)V

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->k(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V

    .line 8
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->s()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->o:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/google/android/exoplayer2/audio/b0;->z:I

    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/b0;->B:Z

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/f;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/audio/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/audio/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {v0, p3, p4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/f;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/b0;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/audio/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/audio/b0;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/f;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method static synthetic O(Lcom/google/android/exoplayer2/audio/b0;)Lcom/google/android/exoplayer2/audio/u$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/b0;->m:Lcom/google/android/exoplayer2/audio/u$a;

    return-object p0
.end method

.method private R()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/decoder/DecoderException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, v0, Lcom/google/android/exoplayer2/decoder/f;->c:I

    if-lez v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/b0;->p:Lcom/google/android/exoplayer2/decoder/d;

    iget v3, v2, Lcom/google/android/exoplayer2/decoder/d;->f:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/google/android/exoplayer2/decoder/d;->f:I

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->q()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->l()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 7
    iget v0, p0, Lcom/google/android/exoplayer2/audio/b0;->z:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->c0()V

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->X()V

    .line 10
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/audio/b0;->B:Z

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/h;->o()V

    .line 12
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    .line 13
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->b0()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 15
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/b0;->B:Z

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/b0;->V(Lcom/google/android/exoplayer2/decoder/c;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/b0;->r:I

    .line 19
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$b;->M(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/b0;->s:I

    .line 20
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$b;->N(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 22
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioSink;->s(Lcom/google/android/exoplayer2/Format;I[I)V

    .line 23
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/b0;->B:Z

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    iget-object v5, v4, Lcom/google/android/exoplayer2/decoder/h;->e:Ljava/nio/ByteBuffer;

    iget-wide v6, v4, Lcom/google/android/exoplayer2/decoder/f;->b:J

    invoke-interface {v0, v5, v6, v7, v3}, Lcom/google/android/exoplayer2/audio/AudioSink;->j(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->p:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->e:I

    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/h;->o()V

    .line 27
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    return v3

    :cond_5
    return v1
.end method

.method private T()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;,
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v2, p0, Lcom/google/android/exoplayer2/audio/b0;->z:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/b0;->F:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v2, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/c;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/b0;->z:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/decoder/a;->n(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/decoder/c;->c(Ljava/lang/Object;)V

    .line 7
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 8
    iput v3, p0, Lcom/google/android/exoplayer2/audio/b0;->z:I

    return v1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->A()Lcom/google/android/exoplayer2/v0;

    move-result-object v0

    .line 10
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/exoplayer2/f;->M(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v3

    const/4 v5, -0x5

    if-eq v3, v5, :cond_6

    const/4 v0, -0x4

    if-eq v3, v0, :cond_4

    const/4 v0, -0x3

    if-ne v3, v0, :cond_3

    return v1

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/b0;->F:Z

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/decoder/c;->c(Ljava/lang/Object;)V

    .line 15
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    return v1

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->q()V

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/b0;->a0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/decoder/c;->c(Ljava/lang/Object;)V

    .line 19
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/audio/b0;->A:Z

    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->p:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->c:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->c:I

    .line 21
    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    return v4

    .line 22
    :cond_6
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/b0;->Y(Lcom/google/android/exoplayer2/v0;)V

    return v4

    :cond_7
    :goto_0
    return v1
.end method

.method private U()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/b0;->z:I

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->c0()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->X()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/h;->o()V

    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/c;->flush()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/b0;->A:Z

    :goto_0
    return-void
.end method

.method private X()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->y:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/b0;->d0(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->x:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->j()Lcom/google/android/exoplayer2/drm/a0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->x:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "createAudioDecoder"

    .line 7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/v0;->a(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/b0;->q:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer2/audio/b0;->Q(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/a0;)Lcom/google/android/exoplayer2/decoder/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    .line 9
    invoke-static {}, Lcom/google/android/exoplayer2/util/v0;->c()V

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/b0;->m:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/c;->getName()Ljava/lang/String;

    move-result-object v4

    sub-long v7, v5, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/audio/u$a;->m(Ljava/lang/String;JJ)V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->p:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->a:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->q:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "DecoderAudioRenderer"

    const-string v2, "Audio codec error"

    .line 14
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/w;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->m:Lcom/google/android/exoplayer2/audio/u$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/audio/u$a;->k(Ljava/lang/Exception;)V

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->q:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private Y(Lcom/google/android/exoplayer2/v0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/v0;->b:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/v0;->a:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/b0;->e0(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 3
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/b0;->q:Lcom/google/android/exoplayer2/Format;

    .line 4
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/b0;->q:Lcom/google/android/exoplayer2/Format;

    .line 5
    iget p1, v4, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    iput p1, p0, Lcom/google/android/exoplayer2/audio/b0;->r:I

    .line 6
    iget p1, v4, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    iput p1, p0, Lcom/google/android/exoplayer2/audio/b0;->s:I

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    if-nez p1, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->X()V

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->m:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->q:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/audio/u$a;->q(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->y:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->x:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v0, v1, :cond_1

    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/decoder/e;

    .line 12
    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/c;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/decoder/e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/c;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3, v4}, Lcom/google/android/exoplayer2/audio/b0;->P(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v0

    .line 14
    :goto_0
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/e;->d:I

    if-nez p1, :cond_3

    .line 15
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/b0;->A:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 16
    iput v1, p0, Lcom/google/android/exoplayer2/audio/b0;->z:I

    goto :goto_1

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->c0()V

    .line 18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->X()V

    .line 19
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/b0;->B:Z

    .line 20
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->m:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->q:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/audio/u$a;->q(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method private b0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/b0;->G:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->o()V

    return-void
.end method

.method private c0()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->v:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/audio/b0;->z:I

    .line 4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/b0;->A:Z

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    if-eqz v1, :cond_0

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/b0;->p:Lcom/google/android/exoplayer2/decoder/d;

    iget v3, v2, Lcom/google/android/exoplayer2/decoder/d;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer2/decoder/d;->b:I

    .line 7
    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/c;->release()V

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->m:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/decoder/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/u$a;->n(Ljava/lang/String;)V

    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    .line 10
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/b0;->d0(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void
.end method

.method private d0(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->x:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/k;->b(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->x:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private e0(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->y:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/k;->b(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->y:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private h0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/b0;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->p(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/b0;->E:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/b0;->C:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/b0;->C:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/b0;->E:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected F()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->q:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/b0;->B:Z

    .line 3
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/b0;->e0(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->c0()V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->m:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->p:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/u$a;->o(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/b0;->m:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/b0;->p:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/u$a;->o(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 7
    throw v0
.end method

.method protected G(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/exoplayer2/decoder/d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->p:Lcom/google/android/exoplayer2/decoder/d;

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/b0;->m:Lcom/google/android/exoplayer2/audio/u$a;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/audio/u$a;->p(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->z()Lcom/google/android/exoplayer2/h2;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/h2;->a:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->r()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->h()V

    :goto_0
    return-void
.end method

.method protected H(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/b0;->t:Z

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->n()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    .line 4
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/b0;->C:J

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/b0;->D:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/b0;->E:Z

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/b0;->F:Z

    .line 8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/b0;->G:Z

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    if-eqz p1, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->U()V

    :cond_1
    return-void
.end method

.method protected J()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->d()V

    return-void
.end method

.method protected K()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->h0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    return-void
.end method

.method protected P(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 7

    new-instance v6, Lcom/google/android/exoplayer2/decoder/e;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/decoder/e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v6
.end method

.method protected abstract Q(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/a0;)Lcom/google/android/exoplayer2/decoder/c;
    .param p2    # Lcom/google/android/exoplayer2/drm/a0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/a0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation
.end method

.method public S(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/b0;->t:Z

    return-void
.end method

.method protected abstract V(Lcom/google/android/exoplayer2/decoder/c;)Lcom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation
.end method

.method protected final W(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->m(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    return p1
.end method

.method protected Z()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/b0;->E:Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)I
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a0;->p(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/b0;->g0(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    .line 5
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const/16 v1, 0x20

    :cond_2
    const/16 v0, 0x8

    .line 6
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/f2;->b(III)I

    move-result p1

    return p1
.end method

.method protected a0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/b0;->D:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/b0;->C:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/b0;->C:J

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/b0;->D:Z

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/b0;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->d(ILjava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->l(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->J(Z)V

    goto :goto_0

    .line 4
    :cond_2
    check-cast p2, Lcom/google/android/exoplayer2/audio/y;

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->u(Lcom/google/android/exoplayer2/audio/y;)V

    goto :goto_0

    .line 6
    :cond_3
    check-cast p2, Lcom/google/android/exoplayer2/audio/e;

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->i(Lcom/google/android/exoplayer2/audio/e;)V

    goto :goto_0

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->f(F)V

    :goto_0
    return-void
.end method

.method public e()Lcom/google/android/exoplayer2/t1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->e()Lcom/google/android/exoplayer2/t1;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->q:Lcom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->E()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->w:Lcom/google/android/exoplayer2/decoder/h;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected final f0(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    return p1
.end method

.method public g(Lcom/google/android/exoplayer2/t1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->g(Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method protected abstract g0(Lcom/google/android/exoplayer2/Format;)I
.end method

.method public o()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->h0()V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/b0;->C:J

    return-wide v0
.end method

.method public s(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/b0;->G:Z

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->n:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->o()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->q:Lcom/google/android/exoplayer2/Format;

    if-nez p1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->A()Lcom/google/android/exoplayer2/v0;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/b0;->o:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/b0;->o:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 p3, 0x2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/f;->M(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p2

    const/4 p3, -0x5

    if-ne p2, p3, :cond_1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/b0;->Y(Lcom/google/android/exoplayer2/v0;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne p2, p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->o:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->l()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/b0;->F:Z

    .line 11
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->b0()V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_2
    return-void

    .line 13
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->X()V

    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->u:Lcom/google/android/exoplayer2/decoder/c;

    if-eqz p1, :cond_6

    :try_start_2
    const-string p1, "drainAndFeed"

    .line 15
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/v0;->a(Ljava/lang/String;)V

    .line 16
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->R()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/b0;->T()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/v0;->c()V
    :try_end_2
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/b0;->p:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/d;->c()V

    goto :goto_3

    :catch_2
    move-exception p1

    .line 20
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p1

    .line 21
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_4
    move-exception p1

    .line 22
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_5
    move-exception p1

    const-string p2, "DecoderAudioRenderer"

    const-string p3, "Audio codec error"

    .line 23
    invoke-static {p2, p3, p1}, Lcom/google/android/exoplayer2/util/w;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/b0;->m:Lcom/google/android/exoplayer2/audio/u$a;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/audio/u$a;->k(Ljava/lang/Exception;)V

    .line 25
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/b0;->q:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public w()Lcom/google/android/exoplayer2/util/y;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method
