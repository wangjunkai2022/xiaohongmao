.class public final Lcom/im/freechat/media/audio/b;
.super Ljava/lang/Object;
.source "AudioRecordImpl.kt"

# interfaces
.implements Lcom/im/freechat/media/audio/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0004\u00080\u00101J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR,\u0010!\u001a\u001a\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010 R\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#RD\u0010*\u001a$\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0018\u00010%8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008\u000e\u0010(\"\u0004\u0008\u001c\u0010)R*\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010+8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010,\u001a\u0004\u0008\u0015\u0010-\"\u0004\u0008\u0019\u0010.\u00a8\u00062"
    }
    d2 = {
        "Lcom/im/freechat/media/audio/b;",
        "Lcom/im/freechat/media/audio/c;",
        "",
        "j",
        "",
        "c",
        "Ljava/io/File;",
        "outputFile",
        "b",
        "",
        "isCancel",
        "g",
        "release",
        "Landroid/media/MediaRecorder;",
        "a",
        "Landroid/media/MediaRecorder;",
        "mediaRecorder",
        "I",
        "maxDuration",
        "minAudioDuration",
        "",
        "d",
        "Ljava/lang/String;",
        "TAG",
        "",
        "e",
        "J",
        "mStartTime",
        "f",
        "Ljava/io/File;",
        "currentAudioFile",
        "Lkotlin/Function3;",
        "Lkotlin/jvm/functions/Function3;",
        "durationListener",
        "h",
        "Z",
        "isRecording",
        "Lkotlin/Function4;",
        "i",
        "Lkotlin/jvm/functions/Function4;",
        "()Lkotlin/jvm/functions/Function4;",
        "(Lkotlin/jvm/functions/Function4;)V",
        "stopCallback",
        "Lkotlin/Function0;",
        "Lkotlin/jvm/functions/Function0;",
        "()Lkotlin/jvm/functions/Function0;",
        "(Lkotlin/jvm/functions/Function0;)V",
        "maxTimeReachedCallback",
        "<init>",
        "(Landroid/media/MediaRecorder;II)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/media/MediaRecorder;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private e:J

.field private f:Ljava/io/File;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final g:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/media/MediaRecorder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private volatile h:Z

.field private i:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private j:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/MediaRecorder;II)V
    .locals 1
    .param p1    # Landroid/media/MediaRecorder;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "mediaRecorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/media/audio/b;->a:Landroid/media/MediaRecorder;

    .line 3
    iput p2, p0, Lcom/im/freechat/media/audio/b;->b:I

    .line 4
    iput p3, p0, Lcom/im/freechat/media/audio/b;->c:I

    .line 5
    const-class p1, Lcom/im/freechat/media/audio/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "this.javaClass.simpleName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/media/audio/b;->d:Ljava/lang/String;

    .line 6
    new-instance p1, Lcom/im/freechat/media/audio/b$a;

    invoke-direct {p1, p0}, Lcom/im/freechat/media/audio/b$a;-><init>(Lcom/im/freechat/media/audio/b;)V

    iput-object p1, p0, Lcom/im/freechat/media/audio/b;->g:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public static synthetic h(Lkotlin/jvm/functions/Function3;Landroid/media/MediaRecorder;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/im/freechat/media/audio/b;->i(Lkotlin/jvm/functions/Function3;Landroid/media/MediaRecorder;II)V

    return-void
.end method

.method private static final i(Lkotlin/jvm/functions/Function3;Landroid/media/MediaRecorder;II)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final j()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/media/audio/b;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 2
    iget-object v0, p0, Lcom/im/freechat/media/audio/b;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/im/freechat/media/audio/b;->d:Ljava/lang/String;

    const-string v1, "Recorder stop failure. File may be corrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/io/File;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/media/audio/b;->i:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public b(Ljava/io/File;)V
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "outputFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/im/freechat/media/audio/b;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/media/audio/b;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/im/freechat/media/audio/b;->d:Ljava/lang/String;

    const-string v1, "reset failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/im/freechat/media/audio/b;->a:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 9
    iget v1, p0, Lcom/im/freechat/media/audio/b;->b:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/im/freechat/media/audio/b;->g:Lkotlin/jvm/functions/Function3;

    new-instance v2, Lcom/im/freechat/media/audio/a;

    invoke-direct {v2, v1}, Lcom/im/freechat/media/audio/a;-><init>(Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 12
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 13
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/im/freechat/media/audio/b;->e:J

    .line 15
    iput-object p1, p0, Lcom/im/freechat/media/audio/b;->f:Ljava/io/File;

    return-void

    .line 16
    :catch_1
    :try_start_3
    iget-object p1, p0, Lcom/im/freechat/media/audio/b;->d:Ljava/lang/String;

    const-string v0, "start record failed !"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    .line 17
    :catch_2
    iget-object p1, p0, Lcom/im/freechat/media/audio/b;->d:Ljava/lang/String;

    const-string v0, "set audio source failed !"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/media/audio/b;->c:I

    return v0
.end method

.method public d()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/media/audio/b;->j:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public e(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/media/audio/b;->j:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public f(Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function4;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/media/audio/b;->i:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public g(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/im/freechat/media/audio/b;->h:Z

    .line 2
    invoke-direct {p0}, Lcom/im/freechat/media/audio/b;->j()V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/im/freechat/media/audio/b;->e:J

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/im/freechat/media/audio/b;->f:Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/media/audio/b;->a()Lkotlin/jvm/functions/Function4;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v4

    div-long/2addr v1, v6

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v5, v3, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lcom/im/freechat/media/audio/b;->c:I

    int-to-long v5, p1

    cmp-long p1, v1, v5

    if-gez p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/im/freechat/media/audio/b;->a()Lkotlin/jvm/functions/Function4;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v4

    div-long/2addr v1, v6

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v5, v3, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/im/freechat/media/audio/b;->f:Ljava/io/File;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/im/freechat/media/audio/b;->a()Lkotlin/jvm/functions/Function4;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 12
    iget-object v5, p0, Lcom/im/freechat/media/audio/b;->f:Ljava/io/File;

    int-to-long v6, v4

    .line 13
    div-long/2addr v1, v6

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 14
    invoke-interface {p1, v3, v0, v5, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "currentAudioFile is null"

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/im/freechat/media/audio/b;->f(Lkotlin/jvm/functions/Function4;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/im/freechat/media/audio/b;->e(Lkotlin/jvm/functions/Function0;)V

    .line 3
    invoke-direct {p0}, Lcom/im/freechat/media/audio/b;->j()V

    .line 4
    iget-object v0, p0, Lcom/im/freechat/media/audio/b;->a:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    return-void
.end method
