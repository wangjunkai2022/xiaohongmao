.class public final Lcom/google/android/exoplayer2/text/k;
.super Lcom/google/android/exoplayer2/f;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final B:Ljava/lang/String; = "TextRenderer"

.field private static final C:I = 0x0

.field private static final D:I = 0x1

.field private static final E:I = 0x2

.field private static final F:I


# instance fields
.field private A:J

.field private final m:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final n:Lcom/google/android/exoplayer2/text/j;

.field private final o:Lcom/google/android/exoplayer2/text/g;

.field private final p:Lcom/google/android/exoplayer2/v0;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Lcom/google/android/exoplayer2/text/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Lcom/google/android/exoplayer2/text/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Lcom/google/android/exoplayer2/text/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Lcom/google/android/exoplayer2/text/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/text/g;->a:Lcom/google/android/exoplayer2/text/g;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/k;-><init>(Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/g;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/f;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/j;

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->n:Lcom/google/android/exoplayer2/text/j;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/z0;->y(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->m:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/k;->o:Lcom/google/android/exoplayer2/text/g;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/v0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/v0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->p:Lcom/google/android/exoplayer2/v0;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/k;->A:J

    return-void
.end method

.method private O()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/k;->X(Ljava/util/List;)V

    return-void
.end method

.method private P()J
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/text/k;->z:I

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/text/k;->z:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/i;->d()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/i;

    iget v1, p0, Lcom/google/android/exoplayer2/text/k;->z:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/i;->c(I)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method private Q(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->u:Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/w;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->O()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->V()V

    return-void
.end method

.method private R()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/k;->s:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->o:Lcom/google/android/exoplayer2/text/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/k;->u:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/text/g;->b(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/text/f;

    return-void
.end method

.method private S(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->n:Lcom/google/android/exoplayer2/text/j;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/j;->r(Ljava/util/List;)V

    return-void
.end method

.method private T()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/h;

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/text/k;->z:I

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/i;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/f;->o()V

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/i;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/f;->o()V

    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    :cond_1
    return-void
.end method

.method private U()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->T()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/text/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/c;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/text/f;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/text/k;->t:I

    return-void
.end method

.method private V()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->U()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->R()V

    return-void
.end method

.method private X(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->S(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected F()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->u:Lcom/google/android/exoplayer2/Format;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/k;->A:J

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->O()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->U()V

    return-void
.end method

.method protected H(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->O()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/k;->q:Z

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/k;->r:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/k;->A:J

    .line 5
    iget p1, p0, Lcom/google/android/exoplayer2/text/k;->t:I

    if-eqz p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->V()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->T()V

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/c;->flush()V

    :goto_0
    return-void
.end method

.method protected L([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->u:Lcom/google/android/exoplayer2/Format;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/text/f;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/text/k;->t:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->R()V

    :goto_0
    return-void
.end method

.method public W(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->l()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/k;->A:J

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->o:Lcom/google/android/exoplayer2/text/g;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/g;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 3
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a0;->r(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/k;->r:Z

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->S(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public s(JJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->l()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/k;->A:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->T()V

    .line 3
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/k;->r:Z

    .line 4
    :cond_0
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/text/k;->r:Z

    if-eqz p3, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    if-nez p3, :cond_2

    .line 6
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/text/f;->a(J)V

    .line 7
    :try_start_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/decoder/c;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/i;

    iput-object p3, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->Q(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    return-void

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/i;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->P()J

    move-result-wide v2

    const/4 p3, 0x0

    :goto_1
    cmp-long v4, v2, p1

    if-gtz v4, :cond_5

    .line 12
    iget p3, p0, Lcom/google/android/exoplayer2/text/k;->z:I

    add-int/2addr p3, p4

    iput p3, p0, Lcom/google/android/exoplayer2/text/k;->z:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->P()J

    move-result-wide v2

    const/4 p3, 0x1

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    .line 14
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 15
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/a;->l()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p3, :cond_9

    .line 16
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->P()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_9

    .line 17
    iget v2, p0, Lcom/google/android/exoplayer2/text/k;->t:I

    if-ne v2, v0, :cond_6

    .line 18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->V()V

    goto :goto_2

    .line 19
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->T()V

    .line 20
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/k;->r:Z

    goto :goto_2

    .line 21
    :cond_7
    iget-wide v4, v2, Lcom/google/android/exoplayer2/decoder/f;->b:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_9

    .line 22
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/i;

    if-eqz p3, :cond_8

    .line 23
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/f;->o()V

    .line 24
    :cond_8
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/text/i;->a(J)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/text/k;->z:I

    .line 25
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/i;

    .line 26
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/k;->y:Lcom/google/android/exoplayer2/text/i;

    const/4 p3, 0x1

    :cond_9
    :goto_2
    if-eqz p3, :cond_a

    .line 27
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/i;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->x:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/text/i;->b(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->X(Ljava/util/List;)V

    .line 29
    :cond_a
    iget p1, p0, Lcom/google/android/exoplayer2/text/k;->t:I

    if-ne p1, v0, :cond_b

    return-void

    .line 30
    :cond_b
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/k;->q:Z

    if-nez p1, :cond_13

    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/h;

    if-nez p1, :cond_d

    .line 32
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/c;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/h;

    if-nez p1, :cond_c

    return-void

    .line 33
    :cond_c
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/h;

    .line 34
    :cond_d
    iget p2, p0, Lcom/google/android/exoplayer2/text/k;->t:I

    if-ne p2, p4, :cond_e

    const/4 p2, 0x4

    .line 35
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/decoder/a;->n(I)V

    .line 36
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/decoder/c;->c(Ljava/lang/Object;)V

    .line 37
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/h;

    .line 38
    iput v0, p0, Lcom/google/android/exoplayer2/text/k;->t:I

    return-void

    .line 39
    :cond_e
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->p:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {p0, p2, p1, v1}, Lcom/google/android/exoplayer2/f;->M(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_12

    .line 40
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->l()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 41
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/k;->q:Z

    .line 42
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/k;->s:Z

    goto :goto_5

    .line 43
    :cond_f
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->p:Lcom/google/android/exoplayer2/v0;

    iget-object p2, p2, Lcom/google/android/exoplayer2/v0;->b:Lcom/google/android/exoplayer2/Format;

    if-nez p2, :cond_10

    return-void

    .line 44
    :cond_10
    iget-wide p2, p2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide p2, p1, Lcom/google/android/exoplayer2/text/h;->l:J

    .line 45
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->q()V

    .line 46
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/text/k;->s:Z

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->m()Z

    move-result p3

    if-nez p3, :cond_11

    const/4 p3, 0x1

    goto :goto_4

    :cond_11
    const/4 p3, 0x0

    :goto_4
    and-int/2addr p2, p3

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/text/k;->s:Z

    .line 47
    :goto_5
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/text/k;->s:Z

    if-nez p2, :cond_b

    .line 48
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->v:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/decoder/c;->c(Ljava/lang/Object;)V

    .line 49
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/k;->w:Lcom/google/android/exoplayer2/text/h;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_12
    const/4 p1, -0x3

    if-ne p2, p1, :cond_b

    return-void

    :catch_1
    move-exception p1

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->Q(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    :cond_13
    return-void
.end method
