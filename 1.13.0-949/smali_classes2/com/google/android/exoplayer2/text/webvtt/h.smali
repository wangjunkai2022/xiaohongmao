.class public final Lcom/google/android/exoplayer2/text/webvtt/h;
.super Lcom/google/android/exoplayer2/text/c;
.source "WebvttDecoder.java"


# static fields
.field private static final q:I = -0x1

.field private static final r:I = 0x0

.field private static final s:I = 0x1

.field private static final t:I = 0x2

.field private static final u:I = 0x3

.field private static final v:Ljava/lang/String; = "NOTE"

.field private static final w:Ljava/lang/String; = "STYLE"


# instance fields
.field private final o:Lcom/google/android/exoplayer2/util/h0;

.field private final p:Lcom/google/android/exoplayer2/text/webvtt/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/h;->o:Lcom/google/android/exoplayer2/util/h0;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/h;->p:Lcom/google/android/exoplayer2/text/webvtt/a;

    return-void
.end method

.method private static B(Lcom/google/android/exoplayer2/util/h0;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ne v2, v1, :cond_3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v3

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->q()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    .line 3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    return v2
.end method

.method private static C(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected z([BIZ)Lcom/google/android/exoplayer2/text/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/h;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/h0;->Q([BI)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/h;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {p2}, Lcom/google/android/exoplayer2/text/webvtt/i;->e(Lcom/google/android/exoplayer2/util/h0;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/h;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->q()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_1
    :goto_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/h;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {p3}, Lcom/google/android/exoplayer2/text/webvtt/h;->B(Lcom/google/android/exoplayer2/util/h0;)I

    move-result p3

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    .line 7
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/h;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {p3}, Lcom/google/android/exoplayer2/text/webvtt/h;->C(Lcom/google/android/exoplayer2/util/h0;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 9
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/h;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/h0;->q()Ljava/lang/String;

    .line 10
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/h;->p:Lcom/google/android/exoplayer2/text/webvtt/a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/h;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/text/webvtt/a;->d(Lcom/google/android/exoplayer2/util/h0;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 11
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p2, "A style block was found after the first cue."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 12
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/h;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/text/webvtt/f;->m(Lcom/google/android/exoplayer2/util/h0;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/e;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 13
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/text/webvtt/k;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/webvtt/k;-><init>(Ljava/util/List;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
