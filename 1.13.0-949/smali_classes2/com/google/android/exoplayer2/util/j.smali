.class public Lcom/google/android/exoplayer2/util/j;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/v1$h;
.implements Ljava/lang/Runnable;


# static fields
.field private static final d:I = 0x3e8


# instance fields
.field private final a:Lcom/google/android/exoplayer2/k2;

.field private final b:Landroid/widget/TextView;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/k2;Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k2;->B0()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/j;->a:Lcom/google/android/exoplayer2/k2;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/util/j;->b:Landroid/widget/TextView;

    return-void
.end method

.method private static F(F)Ljava/lang/String;
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " par:"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "%.02f"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private static I(JI)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    long-to-double p0, p0

    int-to-double v0, p2

    div-double/2addr p0, v0

    double-to-long p0, p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static y(Lcom/google/android/exoplayer2/decoder/d;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/d;->c()V

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/d;->d:I

    iget v1, p0, Lcom/google/android/exoplayer2/decoder/d;->f:I

    iget v2, p0, Lcom/google/android/exoplayer2/decoder/d;->e:I

    iget v3, p0, Lcom/google/android/exoplayer2/decoder/d;->g:I

    iget v4, p0, Lcom/google/android/exoplayer2/decoder/d;->h:I

    iget p0, p0, Lcom/google/android/exoplayer2/decoder/d;->i:I

    const/16 v5, 0x5d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, " sib:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sb:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rb:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " db:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mcdb:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " dk:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic A(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->a(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/audio/e;)V

    return-void
.end method

.method public synthetic B(Lcom/google/android/exoplayer2/b1;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->j(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/b1;I)V

    return-void
.end method

.method public final C(ZI)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/j;->M()V

    return-void
.end method

.method public synthetic D(Lcom/google/android/exoplayer2/device/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->e(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/device/b;)V

    return-void
.end method

.method public synthetic E(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->i(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic G(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->e(Lcom/google/android/exoplayer2/v1$f;Z)V

    return-void
.end method

.method protected H()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j;->a:Lcom/google/android/exoplayer2/k2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->c()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    const-string v0, "unknown"

    goto :goto_0

    :cond_0
    const-string v0, "ended"

    goto :goto_0

    :cond_1
    const-string v0, "ready"

    goto :goto_0

    :cond_2
    const-string v0, "buffering"

    goto :goto_0

    :cond_3
    const-string v0, "idle"

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2
    iget-object v5, p0, Lcom/google/android/exoplayer2/util/j;->a:Lcom/google/android/exoplayer2/k2;

    .line 3
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/k2;->Q0()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v4

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j;->a:Lcom/google/android/exoplayer2/k2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->j0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "playWhenReady:%s playbackState:%s window:%s"

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected J()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j;->a:Lcom/google/android/exoplayer2/k2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->C2()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/j;->a:Lcom/google/android/exoplayer2/k2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k2;->B2()Lcom/google/android/exoplayer2/decoder/d;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v5, v0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->pixelWidthHeightRatio:F

    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/j;->F(F)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/j;->y(Lcom/google/android/exoplayer2/decoder/d;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v1, Lcom/google/android/exoplayer2/decoder/d;->j:J

    iget v1, v1, Lcom/google/android/exoplayer2/decoder/d;->k:I

    .line 6
    invoke-static {v7, v8, v1}, Lcom/google/android/exoplayer2/util/j;->I(JI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x27

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "\n"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(id:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " r:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " vfpo: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public final K()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/j;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/j;->c:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j;->a:Lcom/google/android/exoplayer2/k2;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/k2;->p1(Lcom/google/android/exoplayer2/v1$h;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/j;->M()V

    return-void
.end method

.method public final L()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/j;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/j;->c:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j;->a:Lcom/google/android/exoplayer2/k2;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/k2;->W(Lcom/google/android/exoplayer2/v1$h;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final M()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/j;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j;->b:Landroid/widget/TextView;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic U(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/w1;->n(Lcom/google/android/exoplayer2/v1$f;I)V

    return-void
.end method

.method public synthetic X()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/w1;->q(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method public synthetic a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->v(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic a0(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/w1;->m(Lcom/google/android/exoplayer2/v1$f;ZI)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/video/b0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->A(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/video/b0;)V

    return-void
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/t1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->n(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public synthetic c0(IIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/m;->c(Lcom/google/android/exoplayer2/video/n;IIIF)V

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/j;->a:Lcom/google/android/exoplayer2/k2;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->z2()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/j;->a:Lcom/google/android/exoplayer2/k2;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k2;->y2()Lcom/google/android/exoplayer2/decoder/d;

    move-result-object v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/j;->y(Lcom/google/android/exoplayer2/decoder/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(id:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hz:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ch:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public final e(Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/v1$l;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/j;->M()V

    return-void
.end method

.method public synthetic e0(Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/w1;->u(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/s2;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic f(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->p(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public synthetic g(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->w(Lcom/google/android/exoplayer2/v1$h;Ljava/util/List;)V

    return-void
.end method

.method public synthetic h(Lcom/google/android/exoplayer2/v1$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->c(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/v1$c;)V

    return-void
.end method

.method public synthetic i(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->t(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public synthetic j(Lcom/google/android/exoplayer2/s2;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->y(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/s2;I)V

    return-void
.end method

.method public synthetic k(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->b(Lcom/google/android/exoplayer2/v1$h;I)V

    return-void
.end method

.method public final l(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/j;->M()V

    return-void
.end method

.method public synthetic m(Lcom/google/android/exoplayer2/f1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->k(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/f1;)V

    return-void
.end method

.method public synthetic n(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->u(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic o(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->l(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic p(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->f(Lcom/google/android/exoplayer2/v1$h;IZ)V

    return-void
.end method

.method public synthetic q()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/x1;->s(Lcom/google/android/exoplayer2/v1$h;)V

    return-void
.end method

.method public synthetic r(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->d(Lcom/google/android/exoplayer2/v1$h;Ljava/util/List;)V

    return-void
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/j;->M()V

    return-void
.end method

.method public synthetic s(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->z(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/m;)V

    return-void
.end method

.method public synthetic t(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->x(Lcom/google/android/exoplayer2/v1$h;II)V

    return-void
.end method

.method public synthetic u(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->q(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public synthetic v(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->h(Lcom/google/android/exoplayer2/v1$h;Z)V

    return-void
.end method

.method public synthetic w(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/x1;->B(Lcom/google/android/exoplayer2/v1$h;F)V

    return-void
.end method

.method protected x()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/j;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/j;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic z(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/x1;->g(Lcom/google/android/exoplayer2/v1$h;Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/v1$g;)V

    return-void
.end method
