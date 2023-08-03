.class public Lcom/facebook/cache/disk/a;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/d;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/a$g;,
        Lcom/facebook/cache/disk/a$d;,
        Lcom/facebook/cache/disk/a$e;,
        Lcom/facebook/cache/disk/a$c;,
        Lcom/facebook/cache/disk/a$h;,
        Lcom/facebook/cache/disk/a$b;,
        Lcom/facebook/cache/disk/a$f;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/String; = ".cnt"

.field private static final h:Ljava/lang/String; = ".tmp"

.field private static final i:Ljava/lang/String; = "v2"

.field private static final j:I = 0x64

.field static final k:J


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Z

.field private final c:Ljava/io/File;

.field private final d:Lcom/facebook/cache/common/CacheErrorLogger;

.field private final e:Ls0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/cache/disk/a;

    sput-object v0, Lcom/facebook/cache/disk/a;->f:Ljava/lang/Class;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/a;->k:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILcom/facebook/cache/common/CacheErrorLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootDirectory",
            "version",
            "cacheErrorLogger"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/facebook/cache/disk/a;->a:Ljava/io/File;

    .line 4
    invoke-static {p1, p3}, Lcom/facebook/cache/disk/a;->C(Ljava/io/File;Lcom/facebook/cache/common/CacheErrorLogger;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cache/disk/a;->b:Z

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/facebook/cache/disk/a;->B(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/cache/disk/a;->c:Ljava/io/File;

    .line 6
    iput-object p3, p0, Lcom/facebook/cache/disk/a;->d:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 7
    invoke-direct {p0}, Lcom/facebook/cache/disk/a;->F()V

    .line 8
    invoke-static {}, Ls0/e;->a()Ls0/e;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/cache/disk/a;->e:Ls0/a;

    return-void
.end method

.method private A(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/cache/disk/a;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static B(I)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "v2"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 p0, 0x0

    const-string v1, "%s.ols%d.%d"

    .line 3
    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static C(Ljava/io/File;Lcom/facebook/cache/common/CacheErrorLogger;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "directory",
            "cacheErrorLogger"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, p0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 p0, 0x0

    .line 5
    :goto_0
    :try_start_3
    sget-object v2, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v3, Lcom/facebook/cache/disk/a;->f:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to read folder to check if external: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, v3, p0, v1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 6
    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->OTHER:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/a;->f:Ljava/lang/Class;

    const-string v3, "failed to get the external storage directory!"

    invoke-interface {p1, v1, v2, v3, p0}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return v0
.end method

.method private D(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "directory",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/file/FileUtils;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/facebook/cache/disk/a;->d:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/a;->f:Ljava/lang/Class;

    invoke-interface {v0, v1, v2, p2, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    throw p1
.end method

.method private E(Ljava/lang/String;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "touch"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/a;->u(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Lcom/facebook/cache/disk/a;->e:Ls0/a;

    invoke-interface {p2}, Ls0/a;->now()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    :cond_0
    return v0
.end method

.method private F()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/facebook/cache/disk/a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/facebook/cache/disk/a;->a:Ljava/io/File;

    invoke-static {v0}, Ln0/a;->b(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cache/disk/a;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/file/FileUtils;->a(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/facebook/common/file/FileUtils$CreateDirectoryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/facebook/cache/disk/a;->d:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_DIR:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v2, Lcom/facebook/cache/disk/a;->f:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version directory could not be created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/facebook/cache/disk/a;->c:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private G([B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    .line 2
    aget-byte v1, p1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/16 v2, -0x28

    if-ne v1, v2, :cond_0

    const-string p1, "jpg"

    return-object p1

    .line 3
    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, -0x77

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    const-string p1, "png"

    return-object p1

    .line 4
    :cond_1
    aget-byte v1, p1, v0

    const/16 v2, 0x52

    const/16 v4, 0x49

    if-ne v1, v2, :cond_2

    aget-byte v1, p1, v3

    if-ne v1, v4, :cond_2

    const-string p1, "webp"

    return-object p1

    .line 5
    :cond_2
    aget-byte v0, p1, v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_3

    aget-byte p1, p1, v3

    if-ne p1, v4, :cond_3

    const-string p1, "gif"

    return-object p1

    :cond_3
    const-string p1, "undefined"

    return-object p1
.end method

.method static synthetic l(Lcom/facebook/cache/disk/a;Ljava/io/File;)Lcom/facebook/cache/disk/a$d;
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/a;->y(Ljava/io/File;)Lcom/facebook/cache/disk/a$d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/facebook/cache/disk/a;)Lcom/facebook/cache/common/CacheErrorLogger;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/a;->d:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method

.method static synthetic n(Lcom/facebook/cache/disk/a;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/a;->c:Ljava/io/File;

    return-object p0
.end method

.method static synthetic o(Lcom/facebook/cache/disk/a;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/a;->a:Ljava/io/File;

    return-object p0
.end method

.method static synthetic p(Lcom/facebook/cache/disk/a;)Ls0/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/cache/disk/a;->e:Ls0/a;

    return-object p0
.end method

.method static synthetic q(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/facebook/cache/disk/a;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/facebook/cache/disk/a;->f:Ljava/lang/Class;

    return-object v0
.end method

.method private s(Ljava/io/File;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contentFile"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private t(Lcom/facebook/cache/disk/d$c;)Lcom/facebook/cache/disk/d$b;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/cache/disk/a$c;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/cache/disk/a$c;->c()Lk0/c;

    move-result-object v0

    invoke-virtual {v0}, Lk0/c;->read()[B

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/facebook/cache/disk/a;->G([B)Ljava/lang/String;

    move-result-object v4

    const-string v1, "undefined"

    .line 4
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 5
    aget-byte v5, v0, v3

    .line 6
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aget-byte v5, v0, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aget-byte v5, v0, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "0x%02X 0x%02X 0x%02X 0x%02X"

    .line 7
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v6, v0

    .line 8
    invoke-virtual {p1}, Lcom/facebook/cache/disk/a$c;->c()Lk0/c;

    move-result-object v0

    invoke-virtual {v0}, Lk0/c;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 9
    new-instance v0, Lcom/facebook/cache/disk/d$b;

    invoke-virtual {p1}, Lcom/facebook/cache/disk/a$c;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/cache/disk/a$c;->getSize()J

    move-result-wide v7

    long-to-float v5, v7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/cache/disk/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    return-object v0
.end method

.method private static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/facebook/cache/disk/a$e;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    const-string v0, ".cnt"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, ".tmp"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private x(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/cache/disk/a$d;

    const-string v1, ".cnt"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/facebook/cache/disk/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/cache/disk/a$a;)V

    .line 2
    iget-object p1, v0, Lcom/facebook/cache/disk/a$d;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/a;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/a$d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private y(Ljava/io/File;)Lcom/facebook/cache/disk/a$d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/cache/disk/a$d;->b(Ljava/io/File;)Lcom/facebook/cache/disk/a$d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, v0, Lcom/facebook/cache/disk/a$d;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/facebook/cache/disk/a;->z(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private z(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/a;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/cache/disk/a;->a:Ljava/io/File;

    invoke-static {v0}, Ln0/a;->a(Ljava/io/File;)Z

    return-void
.end method

.method public b()Lcom/facebook/cache/disk/d$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/cache/disk/a;->v()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/facebook/cache/disk/d$a;

    invoke-direct {v1}, Lcom/facebook/cache/disk/d$a;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/cache/disk/d$c;

    .line 4
    invoke-direct {p0, v2}, Lcom/facebook/cache/disk/a;->t(Lcom/facebook/cache/disk/d$c;)Lcom/facebook/cache/disk/d$b;

    move-result-object v2

    .line 5
    iget-object v3, v2, Lcom/facebook/cache/disk/d$b;->c:Ljava/lang/String;

    .line 6
    iget-object v4, v1, Lcom/facebook/cache/disk/d$a;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 7
    iget-object v4, v1, Lcom/facebook/cache/disk/d$a;->b:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_0
    iget-object v6, v1, Lcom/facebook/cache/disk/d$a;->b:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_1
    iget-object v3, v1, Lcom/facebook/cache/disk/d$a;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public c(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resourceId"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/a;->u(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/a;->s(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/cache/disk/a;->a:Ljava/io/File;

    new-instance v1, Lcom/facebook/cache/disk/a$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/cache/disk/a$h;-><init>(Lcom/facebook/cache/disk/a;Lcom/facebook/cache/disk/a$a;)V

    invoke-static {v0, v1}, Ln0/a;->c(Ljava/io/File;Ln0/b;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "debugInfo"
        }
    .end annotation

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/facebook/cache/disk/a;->E(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/facebook/cache/disk/d$c;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/cache/disk/a$c;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/cache/disk/a$c;->c()Lk0/c;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lk0/c;->d()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/a;->s(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/d$d;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "debugInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/facebook/cache/disk/a$d;

    const-string v0, ".tmp"

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/facebook/cache/disk/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/cache/disk/a$a;)V

    .line 2
    iget-object v0, p2, Lcom/facebook/cache/disk/a$d;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/cache/disk/a;->z(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "insert"

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0, v0, v2}, Lcom/facebook/cache/disk/a;->D(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p2, v0}, Lcom/facebook/cache/disk/a$d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 6
    new-instance v0, Lcom/facebook/cache/disk/a$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/cache/disk/a$g;-><init>(Lcom/facebook/cache/disk/a;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 7
    iget-object p2, p0, Lcom/facebook/cache/disk/a;->d:Lcom/facebook/cache/common/CacheErrorLogger;

    sget-object v0, Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_CREATE_TEMPFILE:Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;

    sget-object v1, Lcom/facebook/cache/disk/a;->f:Ljava/lang/Class;

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/facebook/cache/common/CacheErrorLogger;->a(Lcom/facebook/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    throw p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "debugInfo"
        }
    .end annotation

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/facebook/cache/disk/a;->E(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/Object;)Lk0/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "debugInfo"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/cache/disk/a;->u(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/facebook/cache/disk/a;->e:Ls0/a;

    invoke-interface {p2}, Ls0/a;->now()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 4
    invoke-static {p1}, Lk0/c;->c(Ljava/io/File;)Lk0/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isExternal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/cache/disk/a;->b:Z

    return v0
.end method

.method public bridge synthetic j()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/cache/disk/a;->v()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/a;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/cache/disk/d$c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/cache/disk/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cache/disk/a$b;-><init>(Lcom/facebook/cache/disk/a;Lcom/facebook/cache/disk/a$a;)V

    .line 2
    iget-object v1, p0, Lcom/facebook/cache/disk/a;->c:Ljava/io/File;

    invoke-static {v1, v0}, Ln0/a;->c(Ljava/io/File;Ln0/b;)V

    .line 3
    invoke-virtual {v0}, Lcom/facebook/cache/disk/a$b;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
