.class public Lcom/ksyun/media/streamer/util/gles/FboManager;
.super Ljava/lang/Object;
.source "FboManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/util/gles/FboManager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FboManager"

.field private static b:Z = true

.field private static c:Z = false


# instance fields
.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/ksyun/media/streamer/util/gles/FboManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->d:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    return-void
.end method

.method private a(II)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/ksyun/media/streamer/util/gles/FboManager$a;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 3
    iget v2, p1, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->d:I

    const/4 v3, 0x0

    aput v2, v1, v3

    new-array v2, v0, [I

    .line 4
    iget p1, p1, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->c:I

    aput p1, v2, v3

    .line 5
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 6
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ksyun/media/streamer/util/gles/FboManager;->c:Z

    return v0
.end method

.method private b(II)Lcom/ksyun/media/streamer/util/gles/FboManager$a;
    .locals 14

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 1
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 2
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v2, v3

    const/16 v4, 0xde1

    .line 3
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    const/4 v13, 0x0

    move v8, p1

    move/from16 v9, p2

    .line 4
    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v0, 0x2800

    const v5, 0x46180400    # 9729.0f

    .line 5
    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    .line 6
    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v5, 0x47012f00    # 33071.0f

    .line 7
    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    .line 8
    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v0, v1, v3

    const v5, 0x8d40

    .line 9
    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    aget v0, v2, v3

    const v6, 0x8ce0

    .line 10
    invoke-static {v5, v6, v4, v0, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 11
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 12
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 13
    new-instance v0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;

    aget v11, v1, v3

    aget v12, v2, v3

    move-object v7, v0

    move-object v8, p0

    move v9, p1

    move/from16 v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/ksyun/media/streamer/util/gles/FboManager$a;-><init>(Lcom/ksyun/media/streamer/util/gles/FboManager;IIII)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getFramebuffer(I)I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ksyun/media/streamer/util/gles/FboManager$a;

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, -0x1

    .line 3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTextureAndLock(II)I
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/util/gles/FboManager;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ksyun/media/streamer/util/gles/FboManager$a;

    .line 7
    invoke-virtual {v3}, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->a()Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {v3}, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->b()V

    .line 9
    sget-boolean p1, Lcom/ksyun/media/streamer/util/gles/FboManager;->c:Z

    if-eqz p1, :cond_2

    const-string p1, "FboManager"

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reuse and lock "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    monitor-exit p0

    return v2

    .line 12
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/ksyun/media/streamer/util/gles/FboManager;->b(II)Lcom/ksyun/media/streamer/util/gles/FboManager$a;

    move-result-object v0

    .line 13
    iget v2, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->f:I

    .line 14
    sget-boolean v2, Lcom/ksyun/media/streamer/util/gles/FboManager;->b:Z

    if-eqz v2, :cond_4

    const-string v2, "FboManager"

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create and lock a new fbo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " total:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->f:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_4
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->b()V

    .line 17
    iget-object p1, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    iget p2, v0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget p1, v0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget p1, v0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTextureCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/ksyun/media/streamer/util/gles/FboManager;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "FboManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lock(I)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/ksyun/media/streamer/util/gles/FboManager;->lock(II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized lock(II)Z
    .locals 4

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;

    .line 3
    sget-boolean v1, Lcom/ksyun/media/streamer/util/gles/FboManager;->c:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "FboManager"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " times"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return p1

    .line 6
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 7
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove()V
    .locals 8

    monitor-enter p0

    .line 10
    :try_start_0
    sget-boolean v0, Lcom/ksyun/media/streamer/util/gles/FboManager;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "FboManager"

    const-string v1, "remove all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->f:I

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v2, v1, [I

    .line 15
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v4, v3, [I

    .line 16
    iget-object v5, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ksyun/media/streamer/util/gles/FboManager$a;

    .line 17
    iget v7, v6, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->d:I

    aput v7, v2, v0

    .line 18
    iget v6, v6, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->c:I

    aput v6, v4, v0

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 20
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->f:I

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v1, v0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->a:I

    iget v2, v0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->b:I

    invoke-direct {p0, v1, v2}, Lcom/ksyun/media/streamer/util/gles/FboManager;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/util/gles/FboManager;->a(Lcom/ksyun/media/streamer/util/gles/FboManager$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unlock(I)Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/FboManager;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/media/streamer/util/gles/FboManager$a;

    .line 2
    sget-boolean v1, Lcom/ksyun/media/streamer/util/gles/FboManager;->c:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "FboManager"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/gles/FboManager$a;->c()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
