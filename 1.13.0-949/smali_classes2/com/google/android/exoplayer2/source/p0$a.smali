.class final Lcom/google/android/exoplayer2/source/p0$a;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;
.implements Lcom/google/android/exoplayer2/source/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/google/android/exoplayer2/upstream/m0;

.field private final d:Lcom/google/android/exoplayer2/source/l0;

.field private final e:Lcom/google/android/exoplayer2/extractor/m;

.field private final f:Lcom/google/android/exoplayer2/util/g;

.field private final g:Lcom/google/android/exoplayer2/extractor/z;

.field private volatile h:Z

.field private i:Z

.field private j:J

.field private k:Lcom/google/android/exoplayer2/upstream/o;

.field private l:J

.field private m:Lcom/google/android/exoplayer2/extractor/e0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:Z

.field final synthetic o:Lcom/google/android/exoplayer2/source/p0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/p0;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/source/l0;Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/util/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p0$a;->b:Landroid/net/Uri;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/upstream/m0;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/upstream/m0;-><init>(Lcom/google/android/exoplayer2/upstream/m;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p0$a;->c:Lcom/google/android/exoplayer2/upstream/m0;

    .line 4
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/p0$a;->d:Lcom/google/android/exoplayer2/source/l0;

    .line 5
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/p0$a;->e:Lcom/google/android/exoplayer2/extractor/m;

    .line 6
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/p0$a;->f:Lcom/google/android/exoplayer2/util/g;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/z;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/z;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p0$a;->g:Lcom/google/android/exoplayer2/extractor/z;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/p0$a;->i:Z

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/p0$a;->l:J

    .line 10
    invoke-static {}, Lcom/google/android/exoplayer2/source/o;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/p0$a;->a:J

    const-wide/16 p1, 0x0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/p0$a;->j(J)Lcom/google/android/exoplayer2/upstream/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p0$a;->k:Lcom/google/android/exoplayer2/upstream/o;

    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/source/p0$a;)Lcom/google/android/exoplayer2/upstream/m0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/p0$a;->c:Lcom/google/android/exoplayer2/upstream/m0;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/source/p0$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p0$a;->a:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/p0$a;)Lcom/google/android/exoplayer2/upstream/o;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/p0$a;->k:Lcom/google/android/exoplayer2/upstream/o;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/p0$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p0$a;->j:J

    return-wide v0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/p0$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p0$a;->l:J

    return-wide v0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/source/p0$a;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/p0$a;->k(JJ)V

    return-void
.end method

.method private j(J)Lcom/google/android/exoplayer2/upstream/o;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/o$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/o$b;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p0$a;->b:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/o$b;->j(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/o$b;->i(J)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    .line 4
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/p0;->D(Lcom/google/android/exoplayer2/source/p0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/o$b;->g(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p1

    const/4 p2, 0x6

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/o$b;->c(I)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/exoplayer2/source/p0;->C()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/upstream/o$b;->f(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/o$b;->a()Lcom/google/android/exoplayer2/upstream/o;

    move-result-object p1

    return-object p1
.end method

.method private k(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p0$a;->g:Lcom/google/android/exoplayer2/extractor/z;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/extractor/z;->a:J

    .line 2
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/p0$a;->j:J

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/p0$a;->i:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/p0$a;->n:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_9

    .line 1
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/p0$a;->h:Z

    if-nez v3, :cond_9

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    .line 2
    :try_start_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->g:Lcom/google/android/exoplayer2/extractor/z;

    iget-wide v13, v6, Lcom/google/android/exoplayer2/extractor/z;->a:J

    .line 3
    invoke-direct {v1, v13, v14}, Lcom/google/android/exoplayer2/source/p0$a;->j(J)Lcom/google/android/exoplayer2/upstream/o;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->k:Lcom/google/android/exoplayer2/upstream/o;

    .line 4
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/p0$a;->c:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/upstream/m0;->a(Lcom/google/android/exoplayer2/upstream/o;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->l:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    add-long/2addr v6, v13

    .line 5
    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->l:J

    .line 6
    :cond_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/p0$a;->c:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/m0;->b()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/source/p0;->F(Lcom/google/android/exoplayer2/source/p0;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 7
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->c:Lcom/google/android/exoplayer2/upstream/m0;

    .line 8
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/p0;->E(Lcom/google/android/exoplayer2/source/p0;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/p0;->E(Lcom/google/android/exoplayer2/source/p0;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 9
    new-instance v6, Lcom/google/android/exoplayer2/source/n;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/p0$a;->c:Lcom/google/android/exoplayer2/upstream/m0;

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/p0;->E(Lcom/google/android/exoplayer2/source/p0;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v8

    iget v8, v8, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-direct {v6, v7, v8, v1}, Lcom/google/android/exoplayer2/source/n;-><init>(Lcom/google/android/exoplayer2/upstream/m;ILcom/google/android/exoplayer2/source/n$a;)V

    .line 10
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/p0;->O()Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/exoplayer2/source/p0$a;->m:Lcom/google/android/exoplayer2/extractor/e0;

    .line 11
    invoke-static {}, Lcom/google/android/exoplayer2/source/p0;->G()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    move-object v8, v6

    .line 12
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/p0$a;->d:Lcom/google/android/exoplayer2/source/l0;

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/p0$a;->b:Landroid/net/Uri;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->c:Lcom/google/android/exoplayer2/upstream/m0;

    .line 13
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/m0;->b()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/p0$a;->l:J

    iget-object v15, v1, Lcom/google/android/exoplayer2/source/p0$a;->e:Lcom/google/android/exoplayer2/extractor/m;

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide v4, v13

    move-wide/from16 v13, v16

    .line 14
    invoke-interface/range {v7 .. v15}, Lcom/google/android/exoplayer2/source/l0;->d(Lcom/google/android/exoplayer2/upstream/i;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/m;)V

    .line 15
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/p0;->E(Lcom/google/android/exoplayer2/source/p0;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 16
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->d:Lcom/google/android/exoplayer2/source/l0;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/l0;->c()V

    .line 17
    :cond_2
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->i:Z

    if-eqz v6, :cond_3

    .line 18
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->d:Lcom/google/android/exoplayer2/source/l0;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/p0$a;->j:J

    invoke-interface {v6, v4, v5, v7, v8}, Lcom/google/android/exoplayer2/source/l0;->a(JJ)V

    .line 19
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/p0$a;->i:Z

    :cond_3
    :goto_1
    move-wide v13, v4

    :cond_4
    if-nez v2, :cond_5

    .line 20
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/source/p0$a;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 21
    :try_start_1
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/p0$a;->f:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/g;->a()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/p0$a;->d:Lcom/google/android/exoplayer2/source/l0;

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/p0$a;->g:Lcom/google/android/exoplayer2/extractor/z;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer2/source/l0;->b(Lcom/google/android/exoplayer2/extractor/z;)I

    move-result v2

    .line 23
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/p0$a;->d:Lcom/google/android/exoplayer2/source/l0;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/l0;->e()J

    move-result-wide v4

    .line 24
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/p0;->H(Lcom/google/android/exoplayer2/source/p0;)J

    move-result-wide v6

    add-long/2addr v6, v13

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 25
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->f:Lcom/google/android/exoplayer2/util/g;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/g;->d()Z

    .line 26
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/p0;->A(Lcom/google/android/exoplayer2/source/p0;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/p0;->z(Lcom/google/android/exoplayer2/source/p0;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 27
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    .line 28
    :cond_6
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/p0$a;->d:Lcom/google/android/exoplayer2/source/l0;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/l0;->e()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_7

    .line 29
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/p0$a;->g:Lcom/google/android/exoplayer2/extractor/z;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/p0$a;->d:Lcom/google/android/exoplayer2/source/l0;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/l0;->e()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/z;->a:J

    .line 30
    :cond_7
    :goto_2
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/p0$a;->c:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/z0;->p(Lcom/google/android/exoplayer2/upstream/m;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eq v2, v3, :cond_8

    .line 31
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p0$a;->d:Lcom/google/android/exoplayer2/source/l0;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/l0;->e()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    .line 32
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p0$a;->g:Lcom/google/android/exoplayer2/extractor/z;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/p0$a;->d:Lcom/google/android/exoplayer2/source/l0;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/l0;->e()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/z;->a:J

    .line 33
    :cond_8
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p0$a;->c:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/z0;->p(Lcom/google/android/exoplayer2/upstream/m;)V

    .line 34
    throw v0

    :cond_9
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/p0$a;->n:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p0$a;->j:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p0$a;->o:Lcom/google/android/exoplayer2/source/p0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/p0;->B(Lcom/google/android/exoplayer2/source/p0;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/p0$a;->j:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v6

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p0$a;->m:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/extractor/e0;

    .line 4
    invoke-interface {v2, p1, v6}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/p0$a;->n:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/p0$a;->h:Z

    return-void
.end method
