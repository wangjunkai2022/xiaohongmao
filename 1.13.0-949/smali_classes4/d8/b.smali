.class public Ld8/b;
.super Ljava/lang/Object;
.source "BiliDanmakuLoader.java"

# interfaces
.implements Lc8/a;


# static fields
.field private static b:Ld8/b;


# instance fields
.field private a:Le8/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Ld8/b;
    .locals 1

    .line 1
    sget-object v0, Ld8/b;->b:Ld8/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld8/b;

    invoke-direct {v0}, Ld8/b;-><init>()V

    sput-object v0, Ld8/b;->b:Ld8/b;

    .line 3
    :cond_0
    sget-object v0, Ld8/b;->b:Ld8/b;

    return-object v0
.end method


# virtual methods
.method public a()Le8/a;
    .locals 1

    iget-object v0, p0, Ld8/b;->a:Le8/a;

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
    new-instance v0, Le8/a;

    invoke-direct {v0, p1}, Le8/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ld8/b;->a:Le8/a;
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

    new-instance v0, Le8/a;

    invoke-direct {v0, p1}, Le8/a;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ld8/b;->a:Le8/a;

    return-void
.end method

.method public bridge synthetic getDataSource()Lmaster/flame/danmaku/danmaku/parser/b;
    .locals 1

    invoke-virtual {p0}, Ld8/b;->a()Le8/a;

    move-result-object v0

    return-object v0
.end method
