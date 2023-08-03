.class public Ld8/a;
.super Ljava/lang/Object;
.source "AcFunDanmakuLoader.java"

# interfaces
.implements Lc8/a;


# static fields
.field private static volatile b:Ld8/a;


# instance fields
.field private a:Le8/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lc8/a;
    .locals 2

    .line 1
    sget-object v0, Ld8/a;->b:Ld8/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Ld8/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ld8/a;->b:Ld8/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ld8/a;

    invoke-direct {v1}, Ld8/a;-><init>()V

    sput-object v1, Ld8/a;->b:Ld8/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Ld8/a;->b:Ld8/a;

    return-object v0
.end method


# virtual methods
.method public a()Le8/b;
    .locals 1

    iget-object v0, p0, Ld8/a;->a:Le8/b;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Le8/b;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1}, Le8/b;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Ld8/a;->a:Le8/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Le8/b;

    invoke-direct {v0, p1}, Le8/b;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ld8/a;->a:Le8/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;

    invoke-direct {v0, p1}, Lmaster/flame/danmaku/danmaku/loader/IllegalDataException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic getDataSource()Lmaster/flame/danmaku/danmaku/parser/b;
    .locals 1

    invoke-virtual {p0}, Ld8/a;->a()Le8/b;

    move-result-object v0

    return-object v0
.end method
