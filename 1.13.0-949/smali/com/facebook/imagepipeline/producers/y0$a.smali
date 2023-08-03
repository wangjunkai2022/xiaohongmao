.class Lcom/facebook/imagepipeline/producers/y0$a;
.super Lcom/facebook/imagepipeline/producers/p;
.source "ResizeAndRotateProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/p<",
        "Lcom/facebook/imagepipeline/image/e;",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Z

.field private final j:Ls1/d;

.field private final k:Lcom/facebook/imagepipeline/producers/s0;

.field private l:Z

.field private final m:Lcom/facebook/imagepipeline/producers/a0;

.field final synthetic n:Lcom/facebook/imagepipeline/producers/y0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/y0;Lcom/facebook/imagepipeline/producers/l;Lcom/facebook/imagepipeline/producers/s0;ZLs1/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "consumer",
            "producerContext",
            "isResizingEnabled",
            "imageTranscoderFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/l<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/s0;",
            "Z",
            "Ls1/d;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/y0$a;->n:Lcom/facebook/imagepipeline/producers/y0;

    .line 2
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/p;-><init>(Lcom/facebook/imagepipeline/producers/l;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->l:Z

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    .line 5
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->t()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    :cond_0
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/producers/y0$a;->i:Z

    .line 7
    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/y0$a;->j:Ls1/d;

    .line 8
    new-instance p4, Lcom/facebook/imagepipeline/producers/y0$a$a;

    invoke-direct {p4, p0, p1}, Lcom/facebook/imagepipeline/producers/y0$a$a;-><init>(Lcom/facebook/imagepipeline/producers/y0$a;Lcom/facebook/imagepipeline/producers/y0;)V

    .line 9
    new-instance p5, Lcom/facebook/imagepipeline/producers/a0;

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/y0;->c(Lcom/facebook/imagepipeline/producers/y0;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const/16 v1, 0x64

    invoke-direct {p5, v0, p4, v1}, Lcom/facebook/imagepipeline/producers/a0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/a0$d;I)V

    iput-object p5, p0, Lcom/facebook/imagepipeline/producers/y0$a;->m:Lcom/facebook/imagepipeline/producers/a0;

    .line 10
    new-instance p4, Lcom/facebook/imagepipeline/producers/y0$a$b;

    invoke-direct {p4, p0, p1, p2}, Lcom/facebook/imagepipeline/producers/y0$a$b;-><init>(Lcom/facebook/imagepipeline/producers/y0$a;Lcom/facebook/imagepipeline/producers/y0;Lcom/facebook/imagepipeline/producers/l;)V

    invoke-interface {p3, p4}, Lcom/facebook/imagepipeline/producers/s0;->f(Lcom/facebook/imagepipeline/producers/t0;)V

    return-void
.end method

.method private A(Lcom/facebook/imagepipeline/image/e;I)Lcom/facebook/imagepipeline/image/e;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "angle"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/image/e;->b(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/imagepipeline/image/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/image/e;->r0(I)V

    :cond_0
    return-object p1
.end method

.method private B(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/d;Ls1/b;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p2    # Lcom/facebook/imagepipeline/common/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p3    # Ls1/b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "resizeOptions",
            "transcodeResult",
            "transcoderId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/e;",
            "Lcom/facebook/imagepipeline/common/d;",
            "Ls1/b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    .line 2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    const-string v2, "ResizeAndRotateProducer"

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->f(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->J()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->s()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/facebook/imagepipeline/common/d;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/facebook/imagepipeline/common/d;->b:I

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "Unspecified"

    .line 6
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->y()Lcom/facebook/imageformat/c;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Image format"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Original size"

    .line 8
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Requested size"

    .line 9
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/y0$a;->m:Lcom/facebook/imagepipeline/producers/a0;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/a0;->f()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "queueTime"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Transcoder id"

    .line 11
    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Transcoding result"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v1}, Lcom/facebook/common/internal/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method private C(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/imagepipeline/image/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImage"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Lcom/facebook/imagepipeline/common/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/e;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/e;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/e;->f()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/y0$a;->A(Lcom/facebook/imagepipeline/image/e;I)Lcom/facebook/imagepipeline/image/e;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private D(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/imagepipeline/image/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedImage"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Lcom/facebook/imagepipeline/common/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->E()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->E()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/producers/y0$a;->A(Lcom/facebook/imagepipeline/image/e;I)Lcom/facebook/imagepipeline/image/e;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/producers/y0$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->i:Z

    return p0
.end method

.method static synthetic t(Lcom/facebook/imagepipeline/producers/y0$a;)Ls1/d;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->j:Ls1/d;

    return-object p0
.end method

.method static synthetic u(Lcom/facebook/imagepipeline/producers/y0$a;Lcom/facebook/imagepipeline/image/e;ILs1/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/y0$a;->y(Lcom/facebook/imagepipeline/image/e;ILs1/c;)V

    return-void
.end method

.method static synthetic v(Lcom/facebook/imagepipeline/producers/y0$a;)Lcom/facebook/imagepipeline/producers/s0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    return-object p0
.end method

.method static synthetic w(Lcom/facebook/imagepipeline/producers/y0$a;)Lcom/facebook/imagepipeline/producers/a0;
    .locals 0

    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->m:Lcom/facebook/imagepipeline/producers/a0;

    return-object p0
.end method

.method static synthetic x(Lcom/facebook/imagepipeline/producers/y0$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/producers/y0$a;->l:Z

    return p1
.end method

.method private y(Lcom/facebook/imagepipeline/image/e;ILs1/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "encodedImage",
            "status",
            "imageTranscoder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    const-string v2, "ResizeAndRotateProducer"

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/u0;->d(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/y0$a;->n:Lcom/facebook/imagepipeline/producers/y0;

    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/y0;->e(Lcom/facebook/imagepipeline/producers/y0;)Lcom/facebook/common/memory/g;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/common/memory/g;->c()Lcom/facebook/common/memory/i;

    move-result-object v1

    const/4 v10, 0x0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->u()Lcom/facebook/imagepipeline/common/e;

    move-result-object v6

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Lcom/facebook/imagepipeline/common/d;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v3, 0x55

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v3, p3

    move-object v4, p1

    move-object v5, v1

    .line 7
    invoke-interface/range {v3 .. v9}, Ls1/c;->c(Lcom/facebook/imagepipeline/image/e;Ljava/io/OutputStream;Lcom/facebook/imagepipeline/common/e;Lcom/facebook/imagepipeline/common/d;Lcom/facebook/imageformat/c;Ljava/lang/Integer;)Ls1/b;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ls1/b;->a()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Lcom/facebook/imagepipeline/common/d;

    move-result-object v0

    .line 10
    invoke-interface {p3}, Ls1/c;->a()Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-direct {p0, p1, v0, v3, p3}, Lcom/facebook/imagepipeline/producers/y0$a;->B(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/d;Ls1/b;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 12
    invoke-virtual {v1}, Lcom/facebook/common/memory/i;->a()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/common/references/a;->D(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    new-instance p3, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {p3, p1}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/a;)V

    .line 14
    sget-object v0, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    invoke-virtual {p3, v0}, Lcom/facebook/imagepipeline/image/e;->q0(Lcom/facebook/imageformat/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/image/e;->d0()V

    .line 16
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    .line 17
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    .line 18
    invoke-interface {v0, v4, v2, v10}, Lcom/facebook/imagepipeline/producers/u0;->j(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    invoke-virtual {v3}, Ls1/b;->a()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    or-int/lit8 p2, p2, 0x10

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object v0

    invoke-interface {v0, p3, p2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :try_start_3
    invoke-static {p3}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    :try_start_4
    invoke-static {p1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 23
    invoke-virtual {v1}, Lcom/facebook/common/memory/i;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 24
    :try_start_5
    invoke-static {p3}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 25
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p3

    .line 26
    :try_start_6
    invoke-static {p1}, Lcom/facebook/common/references/a;->k(Lcom/facebook/common/references/a;)V

    .line 27
    throw p3

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "Error while transcoding the image"

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    :try_start_7
    iget-object p3, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    .line 30
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/s0;->k()Lcom/facebook/imagepipeline/producers/u0;

    move-result-object p3

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    .line 31
    invoke-interface {p3, v0, v2, p1, v10}, Lcom/facebook/imagepipeline/producers/u0;->k(Lcom/facebook/imagepipeline/producers/s0;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 32
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->f(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/l;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 34
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/common/memory/i;->close()V

    return-void

    :goto_0
    invoke-virtual {v1}, Lcom/facebook/common/memory/i;->close()V

    .line 35
    throw p1
.end method

.method private z(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imageformat/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newResult",
            "status",
            "imageFormat"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/b;->k:Lcom/facebook/imageformat/c;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/y0$a;->C(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/imagepipeline/image/e;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/y0$a;->D(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/imagepipeline/image/e;

    move-result-object p1

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method protected E(Lcom/facebook/imagepipeline/image/e;I)V
    .locals 5
    .param p1    # Lcom/facebook/imagepipeline/image/e;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/y0$a;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/b;->f(I)Z

    move-result v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/p;->r()Lcom/facebook/imagepipeline/producers/l;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/facebook/imagepipeline/producers/l;->c(Ljava/lang/Object;I)V

    :cond_1
    return-void

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->y()Lcom/facebook/imageformat/c;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    .line 6
    invoke-interface {v2}, Lcom/facebook/imagepipeline/producers/s0;->c()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/producers/y0$a;->j:Ls1/d;

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/producers/y0$a;->i:Z

    .line 7
    invoke-interface {v3, v1, v4}, Ls1/d;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Ls1/c;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/c;

    .line 9
    invoke-static {v2, p1, v3}, Lcom/facebook/imagepipeline/producers/y0;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/image/e;Ls1/c;)Lcom/facebook/common/util/TriState;

    move-result-object v2

    if-nez v0, :cond_3

    .line 10
    sget-object v3, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-ne v2, v3, :cond_3

    return-void

    .line 11
    :cond_3
    sget-object v3, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-eq v2, v3, :cond_4

    .line 12
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/imagepipeline/producers/y0$a;->z(Lcom/facebook/imagepipeline/image/e;ILcom/facebook/imageformat/c;)V

    return-void

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/y0$a;->m:Lcom/facebook/imagepipeline/producers/a0;

    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/producers/a0;->k(Lcom/facebook/imagepipeline/image/e;I)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_6

    .line 14
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/y0$a;->k:Lcom/facebook/imagepipeline/producers/s0;

    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/s0;->l()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/y0$a;->m:Lcom/facebook/imagepipeline/producers/a0;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/a0;->h()Z

    :cond_7
    return-void
.end method

.method protected bridge synthetic j(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "newResult",
            "status"
        }
    .end annotation

    check-cast p1, Lcom/facebook/imagepipeline/image/e;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/y0$a;->E(Lcom/facebook/imagepipeline/image/e;I)V

    return-void
.end method
