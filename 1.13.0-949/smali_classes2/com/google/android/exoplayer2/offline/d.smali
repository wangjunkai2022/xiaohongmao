.class public Lcom/google/android/exoplayer2/offline/d;
.super Ljava/lang/Object;
.source "DefaultDownloaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/z;


# static fields
.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/offline/y;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/cache/b$d;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/offline/d;->c()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/offline/d;->c:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/b$d;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroidx/window/layout/d;->a:Landroidx/window/layout/d;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/d;-><init>(Lcom/google/android/exoplayer2/upstream/cache/b$d;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/b$d;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/b$d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/d;->a:Lcom/google/android/exoplayer2/upstream/cache/b$d;

    .line 4
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)Lcom/google/android/exoplayer2/offline/y;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/offline/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->streamKeys:Ljava/util/List;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b1$c;->C(Ljava/util/List;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b1$c;->j(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->keySetId:[B

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/b1$c;->l([B)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/d;->a:Lcom/google/android/exoplayer2/upstream/cache/b$d;

    aput-object v2, v1, p1

    const/4 p1, 0x2

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/d;->b:Ljava/util/concurrent/Executor;

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/offline/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const/16 v0, 0x3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to instantiate downloader for content type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const/16 v0, 0x2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Module missing for content type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static c()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/offline/y;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.android.exoplayer2.source.dash.offline.DashDownloader"

    .line 2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/d;->d(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    const-string v2, "com.google.android.exoplayer2.source.hls.offline.HlsDownloader"

    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/d;->d(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x1

    :try_start_2
    const-string v2, "com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader"

    .line 8
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/google/android/exoplayer2/offline/d;->d(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-object v0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/offline/y;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/google/android/exoplayer2/offline/y;

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/google/android/exoplayer2/b1;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/android/exoplayer2/upstream/cache/b$d;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/util/concurrent/Executor;

    aput-object v2, v0, v1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Downloader constructor missing"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/offline/DownloadRequest;)Lcom/google/android/exoplayer2/offline/y;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/z0;->z0(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/offline/d0;

    new-instance v1, Lcom/google/android/exoplayer2/b1$c;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/b1$c;-><init>()V

    iget-object v2, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->uri:Landroid/net/Uri;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/b1$c;->F(Landroid/net/Uri;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/b1$c;->j(Ljava/lang/String;)Lcom/google/android/exoplayer2/b1$c;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/b1$c;->a()Lcom/google/android/exoplayer2/b1;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/d;->a:Lcom/google/android/exoplayer2/upstream/cache/b$d;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/d;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/offline/d0;-><init>(Lcom/google/android/exoplayer2/b1;Lcom/google/android/exoplayer2/upstream/cache/b$d;Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/d;->b(Lcom/google/android/exoplayer2/offline/DownloadRequest;I)Lcom/google/android/exoplayer2/offline/y;

    move-result-object p1

    return-object p1
.end method
