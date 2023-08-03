.class public Lcom/google/android/exoplayer2/o;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/i2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/o$a;
    }
.end annotation


# static fields
.field public static final l:J = 0x1388L

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x32

.field private static final q:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:J

.field private d:Z

.field private e:Lcom/google/android/exoplayer2/mediacodec/n;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/o;->b:I

    const-wide/16 v0, 0x1388

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/o;->c:J

    .line 5
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/n;->a:Lcom/google/android/exoplayer2/mediacodec/n;

    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->e:Lcom/google/android/exoplayer2/mediacodec/n;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x1388

    .line 6
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/o;-><init>(Landroid/content/Context;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->a:Landroid/content/Context;

    .line 9
    iput p2, p0, Lcom/google/android/exoplayer2/o;->b:I

    .line 10
    iput-wide p3, p0, Lcom/google/android/exoplayer2/o;->c:J

    .line 11
    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/n;->a:Lcom/google/android/exoplayer2/mediacodec/n;

    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->e:Lcom/google/android/exoplayer2/mediacodec/n;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/z;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/text/j;Lcom/google/android/exoplayer2/metadata/e;)[Lcom/google/android/exoplayer2/e2;
    .locals 12

    move-object v10, p0

    .line 1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, v10, Lcom/google/android/exoplayer2/o;->a:Landroid/content/Context;

    iget v2, v10, Lcom/google/android/exoplayer2/o;->b:I

    iget-object v3, v10, Lcom/google/android/exoplayer2/o;->e:Lcom/google/android/exoplayer2/mediacodec/n;

    iget-boolean v4, v10, Lcom/google/android/exoplayer2/o;->d:Z

    iget-wide v7, v10, Lcom/google/android/exoplayer2/o;->c:J

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/o;->h(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/n;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/z;JLjava/util/ArrayList;)V

    .line 3
    iget-object v0, v10, Lcom/google/android/exoplayer2/o;->a:Landroid/content/Context;

    iget-boolean v1, v10, Lcom/google/android/exoplayer2/o;->i:Z

    iget-boolean v2, v10, Lcom/google/android/exoplayer2/o;->j:Z

    iget-boolean v3, v10, Lcom/google/android/exoplayer2/o;->k:Z

    .line 4
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/o;->c(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5
    iget-object v1, v10, Lcom/google/android/exoplayer2/o;->a:Landroid/content/Context;

    iget v2, v10, Lcom/google/android/exoplayer2/o;->b:I

    iget-object v3, v10, Lcom/google/android/exoplayer2/o;->e:Lcom/google/android/exoplayer2/mediacodec/n;

    iget-boolean v4, v10, Lcom/google/android/exoplayer2/o;->d:Z

    move-object v0, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/o;->b(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/n;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Ljava/util/ArrayList;)V

    .line 6
    :cond_0
    iget-object v1, v10, Lcom/google/android/exoplayer2/o;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v10, Lcom/google/android/exoplayer2/o;->b:I

    move-object v0, p0

    move-object/from16 v2, p4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/o;->g(Landroid/content/Context;Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 7
    iget-object v1, v10, Lcom/google/android/exoplayer2/o;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v10, Lcom/google/android/exoplayer2/o;->b:I

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/o;->e(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 8
    iget-object v0, v10, Lcom/google/android/exoplayer2/o;->a:Landroid/content/Context;

    iget v1, v10, Lcom/google/android/exoplayer2/o;->b:I

    invoke-virtual {p0, v0, v1, v11}, Lcom/google/android/exoplayer2/o;->d(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 9
    iget-object v0, v10, Lcom/google/android/exoplayer2/o;->a:Landroid/content/Context;

    iget v1, v10, Lcom/google/android/exoplayer2/o;->b:I

    move-object v2, p1

    invoke-virtual {p0, v0, p1, v1, v11}, Lcom/google/android/exoplayer2/o;->f(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/e2;

    .line 10
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/e2;

    return-object v0
.end method

.method protected b(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/n;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/google/android/exoplayer2/mediacodec/n;",
            "Z",
            "Lcom/google/android/exoplayer2/audio/AudioSink;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/audio/u;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/e2;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p2

    move-object/from16 v9, p8

    const-string v10, "DefaultRenderersFactory"

    .line 1
    const-class v11, Lcom/google/android/exoplayer2/audio/AudioSink;

    const-class v12, Lcom/google/android/exoplayer2/audio/u;

    new-instance v13, Lcom/google/android/exoplayer2/audio/f0;

    move-object v2, v13

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/audio/f0;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    .line 2
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/o;->f:Z

    invoke-virtual {v13, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h0(Z)V

    .line 3
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/o;->g:Z

    invoke-virtual {v13, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i0(Z)V

    .line 4
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/o;->h:Z

    invoke-virtual {v13, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k0(Z)V

    .line 5
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_0
    const-string v6, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 7
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Class;

    .line 8
    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v0

    aput-object v12, v7, v5

    aput-object v11, v7, v3

    .line 9
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p6, v7, v0

    aput-object p7, v7, v5

    aput-object p5, v7, v3

    .line 10
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/e2;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v7, v2, 0x1

    .line 11
    :try_start_1
    invoke-virtual {v9, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v2, "Loaded LibopusAudioRenderer."

    .line 12
    invoke-static {v10, v2}, Lcom/google/android/exoplayer2/util/w;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v2, v7

    goto :goto_0

    :catch_1
    move-exception v0

    .line 13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating Opus extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    :goto_0
    move v7, v2

    :goto_1
    :try_start_2
    const-string v2, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 14
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Class;

    .line 15
    const-class v8, Landroid/os/Handler;

    aput-object v8, v6, v0

    aput-object v12, v6, v5

    aput-object v11, v6, v3

    .line 16
    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p6, v6, v0

    aput-object p7, v6, v5

    aput-object p5, v6, v3

    .line 17
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/e2;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    add-int/lit8 v6, v7, 0x1

    .line 18
    :try_start_3
    invoke-virtual {v9, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v2, "Loaded LibflacAudioRenderer."

    .line 19
    invoke-static {v10, v2}, Lcom/google/android/exoplayer2/util/w;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_3
    move v7, v6

    goto :goto_2

    :catch_4
    move-exception v0

    .line 20
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FLAC extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    :goto_2
    move v6, v7

    :goto_3
    :try_start_4
    const-string v2, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 21
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v7, v4, [Ljava/lang/Class;

    .line 22
    const-class v8, Landroid/os/Handler;

    aput-object v8, v7, v0

    aput-object v12, v7, v5

    aput-object v11, v7, v3

    .line 23
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p6, v4, v0

    aput-object p7, v4, v5

    aput-object p5, v4, v3

    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e2;

    .line 25
    invoke-virtual {v9, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegAudioRenderer."

    .line 26
    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/w;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    .line 27
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FFmpeg extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    :goto_4
    return-void
.end method

.method protected c(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/f;->c(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/f;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    move-object v0, v6

    move v3, p2

    move v4, p3

    move v5, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;ZZI)V

    return-object v6
.end method

.method protected d(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/e2;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Lcom/google/android/exoplayer2/video/spherical/b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/video/spherical/b;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected e(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/metadata/e;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/e2;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Lcom/google/android/exoplayer2/metadata/f;

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/metadata/f;-><init>(Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected f(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/e2;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected g(Landroid/content/Context;Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/text/j;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/e2;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Lcom/google/android/exoplayer2/text/k;

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/text/k;-><init>(Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected h(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/n;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/z;JLjava/util/ArrayList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/google/android/exoplayer2/mediacodec/n;",
            "Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/video/z;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/e2;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p2

    move-object/from16 v11, p9

    const-string v12, "DefaultRenderersFactory"

    .line 1
    const-class v13, Lcom/google/android/exoplayer2/video/z;

    new-instance v14, Lcom/google/android/exoplayer2/video/f;

    const/16 v10, 0x32

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p7

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/video/f;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/z;I)V

    .line 2
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/o;->f:Z

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->h0(Z)V

    .line 3
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/o;->g:Z

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->i0(Z)V

    .line 4
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/o;->h:Z

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->k0(Z)V

    .line 5
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const/16 v0, 0x32

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    :try_start_0
    const-string v8, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 7
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Class;

    .line 8
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    const-class v10, Landroid/os/Handler;

    aput-object v10, v9, v7

    aput-object v13, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    .line 9
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    .line 10
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object p5, v9, v7

    aput-object p6, v9, v3

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    .line 12
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/e2;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v9, v2, 0x1

    .line 13
    :try_start_1
    invoke-virtual {v11, v2, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v2, "Loaded LibvpxVideoRenderer."

    .line 14
    invoke-static {v12, v2}, Lcom/google/android/exoplayer2/util/w;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v2, v9

    goto :goto_0

    :catch_1
    move-exception v0

    .line 15
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating VP9 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    :goto_0
    move v9, v2

    :goto_1
    :try_start_2
    const-string v2, "com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer"

    .line 16
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v8, v6, [Ljava/lang/Class;

    .line 17
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v5

    const-class v10, Landroid/os/Handler;

    aput-object v10, v8, v7

    aput-object v13, v8, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v4

    .line 18
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v6, v6, [Ljava/lang/Object;

    .line 19
    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v5

    aput-object p5, v6, v7

    aput-object p6, v6, v3

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    .line 21
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/e2;

    .line 22
    invoke-virtual {v11, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded Libgav1VideoRenderer."

    .line 23
    invoke-static {v12, v0}, Lcom/google/android/exoplayer2/util/w;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 24
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating AV1 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    :goto_2
    return-void
.end method

.method public i(Z)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->f:Z

    return-object p0
.end method

.method public j(Z)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->g:Z

    return-object p0
.end method

.method public k(Z)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->h:Z

    return-object p0
.end method

.method public l(J)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/o;->c:J

    return-object p0
.end method

.method public m(Z)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->i:Z

    return-object p0
.end method

.method public n(Z)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->k:Z

    return-object p0
.end method

.method public o(Z)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->j:Z

    return-object p0
.end method

.method public p(Z)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->d:Z

    return-object p0
.end method

.method public q(I)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/o;->b:I

    return-object p0
.end method

.method public r(Lcom/google/android/exoplayer2/mediacodec/n;)Lcom/google/android/exoplayer2/o;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->e:Lcom/google/android/exoplayer2/mediacodec/n;

    return-object p0
.end method
