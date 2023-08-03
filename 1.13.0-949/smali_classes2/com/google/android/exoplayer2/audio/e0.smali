.class public Lcom/google/android/exoplayer2/audio/e0;
.super Ljava/lang/Object;
.source "ForwardingAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink;


# instance fields
.field private final e:Lcom/google/android/exoplayer2/audio/AudioSink;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    return-void
.end method


# virtual methods
.method public F()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->F()Z

    move-result v0

    return v0
.end method

.method public J(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->J(Z)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->d()V

    return-void
.end method

.method public e()Lcom/google/android/exoplayer2/t1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->e()Lcom/google/android/exoplayer2/t1;

    move-result-object v0

    return-object v0
.end method

.method public f(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->f(F)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/t1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->g(Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->h()V

    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->i(Lcom/google/android/exoplayer2/audio/e;)V

    return-void
.end method

.method public j(Ljava/nio/ByteBuffer;JI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/audio/AudioSink;->j(Ljava/nio/ByteBuffer;JI)Z

    move-result p1

    return p1
.end method

.method public k(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->k(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V

    return-void
.end method

.method public l(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->l(I)V

    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->m(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    return p1
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->n()V

    return-void
.end method

.method public o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->o()V

    return-void
.end method

.method public p(Z)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->p(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->q()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->r()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    return-void
.end method

.method public s(Lcom/google/android/exoplayer2/Format;I[I)V
    .locals 1
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->s(Lcom/google/android/exoplayer2/Format;I[I)V

    return-void
.end method

.method public u(Lcom/google/android/exoplayer2/audio/y;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e0;->e:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->u(Lcom/google/android/exoplayer2/audio/y;)V

    return-void
.end method
