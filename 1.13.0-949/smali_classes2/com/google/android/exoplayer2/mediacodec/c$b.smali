.class public final Lcom/google/android/exoplayer2/mediacodec/c$b;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final b:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/common/base/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/i0<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/mediacodec/c$b;-><init>(IZZ)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/d;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/d;-><init>(I)V

    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/e;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/e;-><init>(I)V

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/c$b;-><init>(Lcom/google/common/base/i0;Lcom/google/common/base/i0;ZZ)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/base/i0;Lcom/google/common/base/i0;ZZ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/i0<",
            "Landroid/os/HandlerThread;",
            ">;",
            "Lcom/google/common/base/i0<",
            "Landroid/os/HandlerThread;",
            ">;ZZ)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c$b;->b:Lcom/google/common/base/i0;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/c$b;->c:Lcom/google/common/base/i0;

    .line 6
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/mediacodec/c$b;->d:Z

    .line 7
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/mediacodec/c$b;->e:Z

    return-void
.end method

.method public static synthetic b(I)Landroid/os/HandlerThread;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/c$b;->e(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(I)Landroid/os/HandlerThread;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/c$b;->f(I)Landroid/os/HandlerThread;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(I)Landroid/os/HandlerThread;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->r(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic f(I)Landroid/os/HandlerThread;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->q(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/mediacodec/k$a;)Lcom/google/android/exoplayer2/mediacodec/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/c$b;->d(Lcom/google/android/exoplayer2/mediacodec/k$a;)Lcom/google/android/exoplayer2/mediacodec/c;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/google/android/exoplayer2/mediacodec/k$a;)Lcom/google/android/exoplayer2/mediacodec/c;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/k$a;->a:Lcom/google/android/exoplayer2/mediacodec/l;

    iget-object v0, v0, Lcom/google/android/exoplayer2/mediacodec/l;->a:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "createCodec:"

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/v0;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/c;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/c$b;->b:Lcom/google/common/base/i0;

    .line 5
    invoke-interface {v3}, Lcom/google/common/base/i0;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/google/android/exoplayer2/mediacodec/c$b;->c:Lcom/google/common/base/i0;

    .line 6
    invoke-interface {v3}, Lcom/google/common/base/i0;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/HandlerThread;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/mediacodec/c$b;->d:Z

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/mediacodec/c$b;->e:Z

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/mediacodec/c;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZLcom/google/android/exoplayer2/mediacodec/c$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7
    :try_start_2
    invoke-static {}, Lcom/google/android/exoplayer2/util/v0;->c()V

    const-string v1, "configureCodec"

    .line 8
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/v0;->a(Ljava/lang/String;)V

    .line 9
    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/k$a;->b:Landroid/media/MediaFormat;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/k$a;->d:Landroid/view/Surface;

    iget-object v4, p1, Lcom/google/android/exoplayer2/mediacodec/k$a;->e:Landroid/media/MediaCrypto;

    iget p1, p1, Lcom/google/android/exoplayer2/mediacodec/k$a;->f:I

    invoke-static {v2, v1, v3, v4, p1}, Lcom/google/android/exoplayer2/mediacodec/c;->n(Lcom/google/android/exoplayer2/mediacodec/c;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 10
    invoke-static {}, Lcom/google/android/exoplayer2/util/v0;->c()V

    const-string p1, "startCodec"

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/v0;->a(Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Lcom/google/android/exoplayer2/mediacodec/c;->o(Lcom/google/android/exoplayer2/mediacodec/c;)V

    .line 13
    invoke-static {}, Lcom/google/android/exoplayer2/util/v0;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v0, v1

    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/c;->release()V

    .line 16
    :cond_2
    :goto_2
    throw p1
.end method
