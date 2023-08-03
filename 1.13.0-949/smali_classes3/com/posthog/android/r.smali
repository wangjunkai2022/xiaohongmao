.class Lcom/posthog/android/r;
.super Lcom/posthog/android/g;
.source "PostHogIntegration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/r$f;,
        Lcom/posthog/android/r$d;,
        Lcom/posthog/android/r$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/posthog/android/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final n:Lcom/posthog/android/g$a;

.field static final o:I = 0x3e8

.field static final p:I = 0x7d00

.field static final q:I = 0x73f78

.field static final r:Ljava/nio/charset/Charset;

.field private static final s:Ljava/lang/String; = "PostHog-PostHogDispatcher"

.field static final t:Ljava/lang/String; = "PostHog"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/posthog/android/l;

.field private final c:Lcom/posthog/android/c;

.field private final d:I

.field private final e:Lcom/posthog/android/v;

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/os/HandlerThread;

.field private final h:Lcom/posthog/android/i;

.field private final i:Lcom/posthog/android/b;

.field private final j:Ljava/util/concurrent/ExecutorService;

.field private final k:Ljava/util/concurrent/ScheduledExecutorService;

.field final l:Ljava/lang/Object;

.field private final m:Lcom/posthog/android/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/posthog/android/r$a;

    invoke-direct {v0}, Lcom/posthog/android/r$a;-><init>()V

    sput-object v0, Lcom/posthog/android/r;->n:Lcom/posthog/android/g$a;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/posthog/android/r;->r:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/posthog/android/c;Lcom/posthog/android/b;Ljava/util/concurrent/ExecutorService;Lcom/posthog/android/l;Lcom/posthog/android/v;JILcom/posthog/android/i;Lcom/posthog/android/e;)V
    .locals 12

    move-object v0, p0

    move/from16 v1, p9

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/g;-><init>()V

    .line 2
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/posthog/android/r;->l:Ljava/lang/Object;

    move-object v2, p1

    .line 3
    iput-object v2, v0, Lcom/posthog/android/r;->a:Landroid/content/Context;

    move-object v2, p2

    .line 4
    iput-object v2, v0, Lcom/posthog/android/r;->c:Lcom/posthog/android/c;

    move-object/from16 v2, p4

    .line 5
    iput-object v2, v0, Lcom/posthog/android/r;->j:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v2, p5

    .line 6
    iput-object v2, v0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    move-object/from16 v3, p6

    .line 7
    iput-object v3, v0, Lcom/posthog/android/r;->e:Lcom/posthog/android/v;

    move-object/from16 v3, p10

    .line 8
    iput-object v3, v0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    move-object v3, p3

    .line 9
    iput-object v3, v0, Lcom/posthog/android/r;->i:Lcom/posthog/android/b;

    .line 10
    iput v1, v0, Lcom/posthog/android/r;->d:I

    .line 11
    new-instance v3, Lcom/posthog/android/internal/Utils$c;

    invoke-direct {v3}, Lcom/posthog/android/internal/Utils$c;-><init>()V

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    iput-object v5, v0, Lcom/posthog/android/r;->k:Ljava/util/concurrent/ScheduledExecutorService;

    move-object/from16 v3, p11

    .line 12
    iput-object v3, v0, Lcom/posthog/android/r;->m:Lcom/posthog/android/e;

    .line 13
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "PostHog-PostHogDispatcher"

    const/16 v6, 0xa

    invoke-direct {v3, v4, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lcom/posthog/android/r;->g:Landroid/os/HandlerThread;

    .line 14
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 15
    new-instance v4, Lcom/posthog/android/r$f;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, v3, p0}, Lcom/posthog/android/r$f;-><init>(Landroid/os/Looper;Lcom/posthog/android/r;)V

    iput-object v4, v0, Lcom/posthog/android/r;->f:Landroid/os/Handler;

    .line 16
    invoke-virtual/range {p5 .. p5}, Lcom/posthog/android/l;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v7, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p7

    .line 17
    :goto_0
    new-instance v6, Lcom/posthog/android/r$b;

    invoke-direct {v6, p0}, Lcom/posthog/android/r$b;-><init>(Lcom/posthog/android/r;)V

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v9, p7

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static declared-synchronized o(Landroid/content/Context;Lcom/posthog/android/c;Lcom/posthog/android/b;Ljava/util/concurrent/ExecutorService;Lcom/posthog/android/v;Ljava/lang/String;JILcom/posthog/android/i;Lcom/posthog/android/e;)Lcom/posthog/android/r;
    .locals 15

    const-class v1, Lcom/posthog/android/r;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "posthog-disk-queue"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, p0

    .line 1
    :try_start_1
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    move-object/from16 v3, p5

    .line 2
    invoke-static {v0, v3}, Lcom/posthog/android/r;->p(Ljava/io/File;Ljava/lang/String;)Lcom/posthog/android/t;

    move-result-object v0

    .line 3
    new-instance v3, Lcom/posthog/android/l$c;

    invoke-direct {v3, v0}, Lcom/posthog/android/l$c;-><init>(Lcom/posthog/android/t;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v13, p9

    move-object v8, v3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, p0

    :goto_0
    :try_start_2
    const-string v3, "Could not create disk queue. Falling back to memory queue."

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v13, p9

    .line 4
    invoke-virtual {v13, v0, v3, v2}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lcom/posthog/android/l$b;

    invoke-direct {v0}, Lcom/posthog/android/l$b;-><init>()V

    move-object v8, v0

    .line 6
    :goto_1
    new-instance v0, Lcom/posthog/android/r;

    move-object v3, v0

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v3 .. v14}, Lcom/posthog/android/r;-><init>(Landroid/content/Context;Lcom/posthog/android/c;Lcom/posthog/android/b;Ljava/util/concurrent/ExecutorService;Lcom/posthog/android/l;Lcom/posthog/android/v;JILcom/posthog/android/i;Lcom/posthog/android/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1

    throw v0
.end method

.method static p(Ljava/io/File;Ljava/lang/String;)Lcom/posthog/android/t;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/posthog/android/internal/Utils;->h(Ljava/io/File;)V

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v1, Lcom/posthog/android/t;

    invoke-direct {v1, v0}, Lcom/posthog/android/t;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    nop

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance p0, Lcom/posthog/android/t;

    invoke-direct {p0, v0}, Lcom/posthog/android/t;-><init>(Ljava/io/File;)V

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create queue file ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private q(Lcom/posthog/android/payloads/BasePayload;)V
    .locals 2

    iget-object v0, p0, Lcom/posthog/android/r;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private t()Z
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {v0}, Lcom/posthog/android/l;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/posthog/android/r;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/posthog/android/payloads/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/posthog/android/r;->q(Lcom/posthog/android/payloads/BasePayload;)V

    return-void
.end method

.method public b(Lcom/posthog/android/payloads/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/posthog/android/r;->q(Lcom/posthog/android/payloads/BasePayload;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/posthog/android/r;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public e(Lcom/posthog/android/payloads/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/posthog/android/r;->q(Lcom/posthog/android/payloads/BasePayload;)V

    return-void
.end method

.method public n(Lcom/posthog/android/payloads/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/posthog/android/r;->q(Lcom/posthog/android/payloads/BasePayload;)V

    return-void
.end method

.method r(Lcom/posthog/android/payloads/BasePayload;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/posthog/android/x;

    invoke-direct {v0}, Lcom/posthog/android/x;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/posthog/android/x;->putAll(Ljava/util/Map;)V

    .line 3
    iget-object v1, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {v1}, Lcom/posthog/android/l;->size()I

    move-result v1

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/posthog/android/r;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v5, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {v5}, Lcom/posthog/android/l;->size()I

    move-result v5

    if-lt v5, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    const-string v5, "Queue is at max capacity (%s), removing oldest payload."

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    .line 7
    invoke-virtual {v7}, Lcom/posthog/android/l;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    .line 8
    invoke-virtual {v2, v5, v6}, Lcom/posthog/android/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {v2, v3}, Lcom/posthog/android/l;->d(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    iget-object v0, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    const-string v2, "Unable to remove oldest payload from queue."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2, v3}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    monitor-exit v1

    return-void

    .line 12
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    const/4 v1, 0x2

    .line 13
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14
    iget-object v5, p0, Lcom/posthog/android/r;->m:Lcom/posthog/android/e;

    invoke-virtual {v5, v2}, Lcom/posthog/android/e;->b(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    .line 15
    iget-object v6, p0, Lcom/posthog/android/r;->i:Lcom/posthog/android/b;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, v0, v7}, Lcom/posthog/android/b;->j(Ljava/util/Map;Ljava/io/Writer;)V

    .line 16
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 17
    array-length v5, v2

    if-eqz v5, :cond_3

    array-length v5, v2

    const/16 v6, 0x7d00

    if-gt v5, v6, :cond_3

    .line 18
    iget-object v5, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {v5, v2}, Lcom/posthog/android/l;->a([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 19
    iget-object v0, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    const-string v2, "Enqueued %s payload. %s elements in the queue."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    iget-object p1, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {p1}, Lcom/posthog/android/l;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/posthog/android/i;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {p1}, Lcom/posthog/android/l;->size()I

    move-result p1

    iget v0, p0, Lcom/posthog/android/r;->d:I

    if-lt p1, v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/posthog/android/r;->v()V

    :cond_2
    return-void

    .line 22
    :cond_3
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not serialize payload "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 23
    iget-object v2, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    const-string v5, "Could not add payload %s to queue: %s."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    aput-object v0, v1, v3

    invoke-virtual {v2, p1, v5, v1}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method s()V
    .locals 9

    const-string v0, " payload(s) from queue."

    const-string v1, "Unable to remove "

    const-string v2, "Error while uploading payloads"

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/r;->t()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Uploading payloads in queue."

    invoke-virtual {v3, v6, v5}, Lcom/posthog/android/i;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 3
    :try_start_0
    iget-object v5, p0, Lcom/posthog/android/r;->c:Lcom/posthog/android/c;

    invoke-virtual {v5}, Lcom/posthog/android/c;->a()Lcom/posthog/android/c$c;

    move-result-object v3

    .line 4
    new-instance v5, Lcom/posthog/android/r$d;

    iget-object v6, v3, Lcom/posthog/android/c$c;->c:Ljava/io/OutputStream;

    invoke-direct {v5, v6}, Lcom/posthog/android/r$d;-><init>(Ljava/io/OutputStream;)V

    .line 5
    invoke-virtual {v5}, Lcom/posthog/android/r$d;->b()Lcom/posthog/android/r$d;

    move-result-object v5

    iget-object v6, p0, Lcom/posthog/android/r;->c:Lcom/posthog/android/c;

    iget-object v6, v6, Lcom/posthog/android/c;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v5, v6}, Lcom/posthog/android/r$d;->k(Ljava/lang/String;)Lcom/posthog/android/r$d;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Lcom/posthog/android/r$d;->a()Lcom/posthog/android/r$d;

    move-result-object v5

    .line 8
    new-instance v6, Lcom/posthog/android/r$e;

    iget-object v7, p0, Lcom/posthog/android/r;->m:Lcom/posthog/android/e;

    invoke-direct {v6, v5, v7}, Lcom/posthog/android/r$e;-><init>(Lcom/posthog/android/r$d;Lcom/posthog/android/e;)V

    .line 9
    iget-object v7, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {v7, v6}, Lcom/posthog/android/l;->b(Lcom/posthog/android/l$a;)V

    .line 10
    invoke-virtual {v5}, Lcom/posthog/android/r$d;->h()Lcom/posthog/android/r$d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/posthog/android/r$d;->i()Lcom/posthog/android/r$d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/posthog/android/r$d;->close()V

    .line 11
    iget v5, v6, Lcom/posthog/android/r$e;->d:I
    :try_end_0
    .catch Lcom/posthog/android/c$d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-virtual {v3}, Lcom/posthog/android/c$c;->close()V
    :try_end_1
    .catch Lcom/posthog/android/c$d; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {v3}, Lcom/posthog/android/internal/Utils;->e(Ljava/io/Closeable;)V

    .line 14
    :try_start_2
    iget-object v2, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {v2, v5}, Lcom/posthog/android/l;->d(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 15
    iget-object v0, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {v3}, Lcom/posthog/android/l;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Uploaded %s payloads. %s remain in the queue."

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/posthog/android/i;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/posthog/android/r;->e:Lcom/posthog/android/v;

    invoke-virtual {v0, v5}, Lcom/posthog/android/v;->b(I)V

    .line 19
    iget-object v0, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {v0}, Lcom/posthog/android/l;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/posthog/android/r;->s()V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    .line 21
    iget-object v3, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v0, v1}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 22
    :try_start_3
    iget-object v1, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v4}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    invoke-static {v3}, Lcom/posthog/android/internal/Utils;->e(Ljava/io/Closeable;)V

    return-void

    :catch_3
    move-exception v6

    const/4 v5, 0x0

    .line 24
    :goto_0
    :try_start_4
    invoke-virtual {v6}, Lcom/posthog/android/c$d;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v6, Lcom/posthog/android/c$d;->a:I

    const/16 v8, 0x1ad

    if-eq v7, v8, :cond_2

    .line 25
    iget-object v2, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    const-string v7, "Payloads were rejected by server. Marked for removal."

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7, v8}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 26
    :try_start_5
    iget-object v2, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-virtual {v2, v5}, Lcom/posthog/android/l;->d(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 27
    :catch_4
    :try_start_6
    iget-object v2, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v0, v1}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 28
    :goto_1
    invoke-static {v3}, Lcom/posthog/android/internal/Utils;->e(Ljava/io/Closeable;)V

    return-void

    .line 29
    :cond_2
    :try_start_7
    iget-object v0, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v2, v1}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 30
    invoke-static {v3}, Lcom/posthog/android/internal/Utils;->e(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static {v3}, Lcom/posthog/android/internal/Utils;->e(Ljava/io/Closeable;)V

    .line 31
    throw v0
.end method

.method u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/android/r;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/posthog/android/r;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 3
    iget-object v0, p0, Lcom/posthog/android/r;->b:Lcom/posthog/android/l;

    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->e(Ljava/io/Closeable;)V

    return-void
.end method

.method v()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/r;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/posthog/android/r;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/posthog/android/r;->h:Lcom/posthog/android/i;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "A call to flush() was made after shutdown() has been called.  In-flight events may not be uploaded right away."

    invoke-virtual {v0, v2, v1}, Lcom/posthog/android/i;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/posthog/android/r;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/posthog/android/r$c;

    invoke-direct {v1, p0}, Lcom/posthog/android/r$c;-><init>(Lcom/posthog/android/r;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
