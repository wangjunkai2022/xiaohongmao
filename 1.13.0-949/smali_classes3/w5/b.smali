.class public Lw5/b;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw5/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/tao/admin/loglib/TLogApplication;->getAPP()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "tlog.log"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lw5/c;->c()Lw5/c;

    move-result-object v3

    invoke-virtual {v3}, Lw5/c;->b()J

    move-result-wide v3

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    sub-long v7, v5, v3

    .line 5
    new-instance v9, Lio/sentry/instrumentation/file/m;

    invoke-direct {v9, v2}, Lio/sentry/instrumentation/file/m;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v1, 0x0

    .line 6
    :try_start_1
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Ljava/io/InputStreamReader;->skip(J)J

    .line 7
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    new-array v1, v2, [C

    .line 8
    invoke-virtual {v9, v1}, Ljava/io/InputStreamReader;->read([C)I

    .line 9
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v9, v1

    move-object v1, v2

    .line 12
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v9, :cond_1

    .line 13
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-object v0

    :catchall_2
    move-exception v0

    if-eqz v9, :cond_2

    .line 15
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 16
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    :cond_2
    :goto_3
    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lw5/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/tao/admin/loglib/TLogApplication;->getAPP()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "tlog.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {}, Lw5/c;->c()Lw5/c;

    move-result-object v2

    invoke-virtual {v2}, Lw5/c;->b()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_0

    .line 5
    new-instance v2, Lio/sentry/instrumentation/file/n;

    invoke-direct {v2, v1, v4}, Lio/sentry/instrumentation/file/n;-><init>(Ljava/io/File;Z)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lio/sentry/instrumentation/file/n;

    invoke-direct {v2, v1, v3}, Lio/sentry/instrumentation/file/n;-><init>(Ljava/io/File;Z)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Lio/sentry/instrumentation/file/n;

    invoke-direct {v2, v1, v4}, Lio/sentry/instrumentation/file/n;-><init>(Ljava/io/File;Z)V

    .line 8
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 9
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "[%s] %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v4

    aput-object p0, v6, v3

    .line 11
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/16 p0, 0xd

    .line 12
    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(I)V

    const/16 p0, 0xa

    .line 13
    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 14
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 15
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
