.class Lcom/facebook/cache/disk/a$g;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/d$d;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field final b:Ljava/io/File;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final synthetic c:Lcom/facebook/cache/disk/a;


# direct methods
.method public constructor <init>(Lcom/facebook/cache/disk/a;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "resourceId",
            "temporaryFile"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/a$g;->c:Lcom/facebook/cache/disk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/facebook/cache/disk/a$g;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/facebook/cache/disk/a$g;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/cache/disk/a$g;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cache/disk/a$g;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(Lcom/facebook/cache/common/k;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "debugInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/facebook/cache/disk/a$g;->b:Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2, v0}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    new-instance v0, Lcom/facebook/common/internal/d;

    invoke-direct {v0, p2}, Lcom/facebook/common/internal/d;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-interface {p1, v0}, Lcom/facebook/cache/common/k;->a(Ljava/io/OutputStream;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/FilterOutputStream;->flush()V

    .line 5
    invoke-virtual {v0}, Lcom/facebook/common/internal/d;->a()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 7
    iget-object p1, p0, Lcom/facebook/cache/disk/a$g;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/facebook/cache/disk/a$f;

    iget-object p2, p0, Lcom/facebook/cache/disk/a$g;->b:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/facebook/cache/disk/a$f;-><init>(JJ)V

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 10
    throw p1

    :catch_0
    move-exception p1

    .line 11
    iget-object p2, p0, Lcom/facebook/cache/disk/a$g;->c:Lcom/facebook/cache/disk/a;

    invoke-static {p2}, Lcom/facebook/cache/disk/a;->m(Lcom/facebook/cache/disk/a;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object p2

    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_UPDATE_FILE_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 12
    invoke-static {}, Lcom/facebook/cache/disk/a;->r()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateResource"

    .line 13
    invoke-interface {p2, v0, v1, v2, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    throw p1
.end method

.method public e(Ljava/lang/Object;)Lk0/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debugInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/cache/disk/a$g;->c:Lcom/facebook/cache/disk/a;

    invoke-static {v0}, Lcom/facebook/cache/disk/a;->p(Lcom/facebook/cache/disk/a;)Ls0/a;

    move-result-object v0

    invoke-interface {v0}, Ls0/a;->now()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/cache/disk/a$g;->f(Ljava/lang/Object;J)Lk0/a;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;J)Lk0/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "debugInfo",
            "time"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/cache/disk/a$g;->c:Lcom/facebook/cache/disk/a;

    iget-object v0, p0, Lcom/facebook/cache/disk/a$g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/cache/disk/a;->u(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/a$g;->b:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/facebook/common/file/FileUtils;->b(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$RenameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, p2, p3}, Ljava/io/File;->setLastModified(J)Z

    .line 5
    :cond_0
    invoke-static {p1}, Lk0/c;->b(Ljava/io/File;)Lk0/c;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 7
    instance-of p3, p2, Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;

    if-nez p3, :cond_2

    .line 8
    instance-of p2, p2, Ljava/io/FileNotFoundException;

    if-eqz p2, :cond_1

    .line 9
    sget-object p2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0

    .line 10
    :cond_1
    sget-object p2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0

    .line 11
    :cond_2
    sget-object p2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0

    .line 12
    :cond_3
    sget-object p2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 13
    :goto_0
    iget-object p3, p0, Lcom/facebook/cache/disk/a$g;->c:Lcom/facebook/cache/disk/a;

    invoke-static {p3}, Lcom/facebook/cache/disk/a;->m(Lcom/facebook/cache/disk/a;)Lcom/facebook/cache/common/CacheErrorLogger;

    move-result-object p3

    invoke-static {}, Lcom/facebook/cache/disk/a;->r()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "commit"

    invoke-interface {p3, p2, v0, v1, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    throw p1
.end method
