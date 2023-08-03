.class final Lcom/google/android/play/core/assetpacks/m3;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final d:Lcom/google/android/play/core/internal/h;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/p0;

.field private final b:Lcom/google/android/play/core/assetpacks/o3;

.field private final c:Lcom/google/android/play/core/common/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "PackMetadataManager"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/m3;->d:Lcom/google/android/play/core/internal/h;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/p0;Lcom/google/android/play/core/assetpacks/o3;Lcom/google/android/play/core/common/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/m3;->a:Lcom/google/android/play/core/assetpacks/p0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/m3;->b:Lcom/google/android/play/core/assetpacks/o3;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/m3;->c:Lcom/google/android/play/core/common/c;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m3;->c:Lcom/google/android/play/core/common/c;

    const-string v1, "assetOnlyUpdates"

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/common/c;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m3;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/p0;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m3;->b:Lcom/google/android/play/core/assetpacks/o3;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/o3;->a()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/m3;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 4
    invoke-virtual {v2, p1}, Lcom/google/android/play/core/assetpacks/p0;->t(Ljava/lang/String;)J

    move-result-wide v3

    .line 5
    invoke-virtual {v2, p1, v0, v3, v4}, Lcom/google/android/play/core/assetpacks/p0;->B(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v2

    .line 6
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    .line 8
    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v2}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/util/Properties;

    .line 9
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 10
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string v2, "moduleVersionTag"

    .line 12
    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    return-object p1

    :catchall_0
    move-exception v0

    .line 14
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 15
    :catch_0
    sget-object v0, Lcom/google/android/play/core/assetpacks/m3;->d:Lcom/google/android/play/core/internal/h;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Failed to read pack version tag for pack %s"

    .line 16
    invoke-virtual {v0, p1, v2}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    :goto_1
    return-object v1
.end method

.method final b(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    :cond_1
    new-instance v0, Ljava/util/Properties;

    .line 3
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "moduleVersionTag"

    .line 4
    invoke-virtual {v0, v1, p5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/m3;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 5
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/p0;->B(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 8
    invoke-direct {p5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p5, p1}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p1

    const/4 p2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    .line 11
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    throw p2
.end method
