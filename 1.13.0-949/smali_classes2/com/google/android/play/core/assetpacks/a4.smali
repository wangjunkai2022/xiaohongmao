.class final Lcom/google/android/play/core/assetpacks/a4;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-9]+-(NAM|LFH)\\.dat"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/assetpacks/a4;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method static a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/play/core/assetpacks/z3;->a:Lcom/google/android/play/core/assetpacks/z3;

    .line 3
    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/io/File;

    goto :goto_1

    .line 4
    :cond_0
    array-length v2, p1

    new-array v3, v2, [Ljava/io/File;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 5
    aget-object v5, p1, v4

    .line 6
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    array-length v7, p1

    if-gt v6, v7, :cond_1

    .line 7
    aget-object v7, v3, v6

    if-nez v7, :cond_1

    .line 8
    aput-object v5, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Lcom/google/android/play/core/assetpacks/t1;

    const-string p1, "Metadata folder ordering corrupt."

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/t1;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-object p1, v3

    .line 11
    :goto_1
    array-length v2, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    .line 12
    aget-object v4, p1, v3

    .line 13
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LFH"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/io/FileInputStream;

    .line 15
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5, v4}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v4

    :try_start_0
    new-instance v5, Lcom/google/android/play/core/assetpacks/e1;

    .line 16
    invoke-direct {v5, v4}, Lcom/google/android/play/core/assetpacks/e1;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/e1;->b()Lcom/google/android/play/core/assetpacks/e4;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/e4;->c()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 17
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/e4;->c()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-direct {v6, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_3

    .line 22
    :cond_3
    :try_start_1
    new-instance p0, Lcom/google/android/play/core/assetpacks/t1;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Missing asset file %s during slice reconstruction."

    .line 24
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/t1;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_4
    new-instance p0, Lcom/google/android/play/core/assetpacks/t1;

    const-string p1, "Metadata files corrupt. Could not read local file header."

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/t1;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 27
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    throw p0

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method static synthetic b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/google/android/play/core/assetpacks/a4;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
