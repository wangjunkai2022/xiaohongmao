.class public Lcom/ksyun/media/streamer/util/StringWrapper;
.super Ljava/lang/Object;
.source "StringWrapper.java"


# static fields
.field public static COUNT_ACCESS_KEY:I = 0x2

.field public static COUNT_SECRET_KEY:I = 0x3

.field public static LOG_ACCESS_KEY:I = 0x0

.field public static LOG_SECRET_KEY:I = 0x1

.field private static b:I

.field private static c:Lcom/ksyun/media/streamer/util/StringWrapper;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ksyun/media/streamer/util/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/StringWrapper;->getStringList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/StringWrapper;->a:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/ksyun/media/streamer/util/StringWrapper;
    .locals 2

    .line 1
    const-class v0, Lcom/ksyun/media/streamer/util/CredtpWrapper;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/ksyun/media/streamer/util/StringWrapper;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/ksyun/media/streamer/util/StringWrapper;->b:I

    .line 3
    sget-object v1, Lcom/ksyun/media/streamer/util/StringWrapper;->c:Lcom/ksyun/media/streamer/util/StringWrapper;

    if-nez v1, :cond_1

    .line 4
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    sget-object v1, Lcom/ksyun/media/streamer/util/StringWrapper;->c:Lcom/ksyun/media/streamer/util/StringWrapper;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/ksyun/media/streamer/util/StringWrapper;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/util/StringWrapper;-><init>()V

    sput-object v1, Lcom/ksyun/media/streamer/util/StringWrapper;->c:Lcom/ksyun/media/streamer/util/StringWrapper;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v1, Lcom/ksyun/media/streamer/util/StringWrapper;->c:Lcom/ksyun/media/streamer/util/StringWrapper;

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private native getStringList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static unInitInstance()V
    .locals 3

    .line 1
    const-class v0, Lcom/ksyun/media/streamer/util/CredtpWrapper;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/ksyun/media/streamer/util/StringWrapper;->b:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/ksyun/media/streamer/util/StringWrapper;->b:I

    .line 3
    sget-object v2, Lcom/ksyun/media/streamer/util/StringWrapper;->c:Lcom/ksyun/media/streamer/util/StringWrapper;

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcom/ksyun/media/streamer/util/StringWrapper;->c:Lcom/ksyun/media/streamer/util/StringWrapper;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getStringInfo(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/StringWrapper;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
