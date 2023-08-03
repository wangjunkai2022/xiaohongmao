.class public final Lcom/google/android/exoplayer2/upstream/s;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/m;


# static fields
.field private static final m:Ljava/lang/String; = "DefaultDataSource"

.field private static final n:Ljava/lang/String; = "asset"

.field private static final o:Ljava/lang/String; = "content"

.field private static final p:Ljava/lang/String; = "rtmp"

.field private static final q:Ljava/lang/String; = "udp"

.field private static final r:Ljava/lang/String; = "data"

.field private static final s:Ljava/lang/String; = "rawresource"

.field private static final t:Ljava/lang/String; = "android.resource"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/upstream/p0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/exoplayer2/upstream/m;

.field private e:Lcom/google/android/exoplayer2/upstream/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/google/android/exoplayer2/upstream/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/google/android/exoplayer2/upstream/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/google/android/exoplayer2/upstream/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/google/android/exoplayer2/upstream/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/google/android/exoplayer2/upstream/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/google/android/exoplayer2/upstream/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/google/android/exoplayer2/upstream/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/m;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/s;->b:Landroid/content/Context;

    .line 12
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/m;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/s;->d:Lcom/google/android/exoplayer2/upstream/m;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/s;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/upstream/u$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/u$b;-><init>()V

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/upstream/u$b;->k(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/u$b;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/upstream/u$b;->f(I)Lcom/google/android/exoplayer2/upstream/u$b;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p4}, Lcom/google/android/exoplayer2/upstream/u$b;->i(I)Lcom/google/android/exoplayer2/upstream/u$b;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p5}, Lcom/google/android/exoplayer2/upstream/u$b;->e(Z)Lcom/google/android/exoplayer2/upstream/u$b;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/u$b;->d()Lcom/google/android/exoplayer2/upstream/u;

    move-result-object p2

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/s;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/m;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/s;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    const/4 v2, 0x0

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/s;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private A()Lcom/google/android/exoplayer2/upstream/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->i:Lcom/google/android/exoplayer2/upstream/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->i:Lcom/google/android/exoplayer2/upstream/m;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/s;->t(Lcom/google/android/exoplayer2/upstream/m;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->i:Lcom/google/android/exoplayer2/upstream/m;

    return-object v0
.end method

.method private B(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/upstream/m;->e(Lcom/google/android/exoplayer2/upstream/p0;)V

    :cond_0
    return-void
.end method

.method private t(Lcom/google/android/exoplayer2/upstream/m;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/s;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/s;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/p0;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/upstream/m;->e(Lcom/google/android/exoplayer2/upstream/p0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private u()Lcom/google/android/exoplayer2/upstream/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->f:Lcom/google/android/exoplayer2/upstream/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/s;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->f:Lcom/google/android/exoplayer2/upstream/m;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/s;->t(Lcom/google/android/exoplayer2/upstream/m;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->f:Lcom/google/android/exoplayer2/upstream/m;

    return-object v0
.end method

.method private v()Lcom/google/android/exoplayer2/upstream/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->g:Lcom/google/android/exoplayer2/upstream/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/s;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->g:Lcom/google/android/exoplayer2/upstream/m;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/s;->t(Lcom/google/android/exoplayer2/upstream/m;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->g:Lcom/google/android/exoplayer2/upstream/m;

    return-object v0
.end method

.method private w()Lcom/google/android/exoplayer2/upstream/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->j:Lcom/google/android/exoplayer2/upstream/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->j:Lcom/google/android/exoplayer2/upstream/m;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/s;->t(Lcom/google/android/exoplayer2/upstream/m;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->j:Lcom/google/android/exoplayer2/upstream/m;

    return-object v0
.end method

.method private x()Lcom/google/android/exoplayer2/upstream/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->e:Lcom/google/android/exoplayer2/upstream/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->e:Lcom/google/android/exoplayer2/upstream/m;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/s;->t(Lcom/google/android/exoplayer2/upstream/m;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->e:Lcom/google/android/exoplayer2/upstream/m;

    return-object v0
.end method

.method private y()Lcom/google/android/exoplayer2/upstream/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->k:Lcom/google/android/exoplayer2/upstream/m;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/s;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->k:Lcom/google/android/exoplayer2/upstream/m;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/s;->t(Lcom/google/android/exoplayer2/upstream/m;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->k:Lcom/google/android/exoplayer2/upstream/m;

    return-object v0
.end method

.method private z()Lcom/google/android/exoplayer2/upstream/m;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->h:Lcom/google/android/exoplayer2/upstream/m;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/m;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->h:Lcom/google/android/exoplayer2/upstream/m;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/s;->t(Lcom/google/android/exoplayer2/upstream/m;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->h:Lcom/google/android/exoplayer2/upstream/m;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->d:Lcom/google/android/exoplayer2/upstream/m;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->h:Lcom/google/android/exoplayer2/upstream/m;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->h:Lcom/google/android/exoplayer2/upstream/m;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/o;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/o;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/o;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/z0;->E0(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/o;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/s;->u()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    goto/16 :goto_2

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/s;->x()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    goto :goto_2

    :cond_2
    const-string v1, "asset"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/s;->u()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    goto :goto_2

    :cond_3
    const-string v1, "content"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/s;->v()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    goto :goto_2

    :cond_4
    const-string v1, "rtmp"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/s;->z()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    goto :goto_2

    :cond_5
    const-string v1, "udp"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/s;->A()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    goto :goto_2

    :cond_6
    const-string v1, "data"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/s;->w()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    goto :goto_2

    :cond_7
    const-string v1, "rawresource"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->d:Lcom/google/android/exoplayer2/upstream/m;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    goto :goto_2

    .line 20
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/s;->y()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    .line 21
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/o;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m;->b()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m;->c()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    .line 4
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->d:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->e(Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->e:Lcom/google/android/exoplayer2/upstream/m;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/s;->B(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->f:Lcom/google/android/exoplayer2/upstream/m;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/s;->B(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->g:Lcom/google/android/exoplayer2/upstream/m;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/s;->B(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->h:Lcom/google/android/exoplayer2/upstream/m;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/s;->B(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->i:Lcom/google/android/exoplayer2/upstream/m;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/s;->B(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->j:Lcom/google/android/exoplayer2/upstream/m;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/s;->B(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/p0;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->k:Lcom/google/android/exoplayer2/upstream/m;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/s;->B(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/p0;)V

    return-void
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s;->l:Lcom/google/android/exoplayer2/upstream/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/i;->read([BII)I

    move-result p1

    return p1
.end method
