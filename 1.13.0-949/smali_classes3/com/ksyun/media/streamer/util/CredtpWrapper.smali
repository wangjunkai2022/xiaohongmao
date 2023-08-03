.class public Lcom/ksyun/media/streamer/util/CredtpWrapper;
.super Ljava/lang/Object;
.source "CredtpWrapper.java"


# static fields
.field private static a:Ljava/lang/String; = "CredtpWrapper"

.field private static b:Lcom/ksyun/media/streamer/util/CredtpWrapper;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ksyun/media/streamer/framework/CredtpModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ksyun/media/streamer/framework/CredtpModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
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

.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/util/CredtpWrapper;->getContentList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->d:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->e:Ljava/util/Map;

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/framework/CredtpModel;

    .line 8
    iget-object v3, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->d:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/framework/CredtpModel;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()Lcom/ksyun/media/streamer/util/CredtpWrapper;
    .locals 2

    .line 1
    sget-object v0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->b:Lcom/ksyun/media/streamer/util/CredtpWrapper;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ksyun/media/streamer/util/CredtpWrapper;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ksyun/media/streamer/util/CredtpWrapper;->b:Lcom/ksyun/media/streamer/util/CredtpWrapper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ksyun/media/streamer/util/CredtpWrapper;

    invoke-direct {v1}, Lcom/ksyun/media/streamer/util/CredtpWrapper;-><init>()V

    sput-object v1, Lcom/ksyun/media/streamer/util/CredtpWrapper;->b:Lcom/ksyun/media/streamer/util/CredtpWrapper;

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
    sget-object v0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->b:Lcom/ksyun/media/streamer/util/CredtpWrapper;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private native getContentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ksyun/media/streamer/framework/CredtpModel;",
            ">;"
        }
    .end annotation
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 7
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/framework/CredtpModel;

    .line 11
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/framework/CredtpModel;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/d;->a([C)[B

    move-result-object v2

    .line 12
    :try_start_0
    invoke-virtual {v1}, Lcom/ksyun/media/streamer/framework/CredtpModel;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 13
    invoke-static {v2, v1}, Lcom/ksyun/media/streamer/util/b;->a([B[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 16
    invoke-direct {p0, p1, v1}, Lcom/ksyun/media/streamer/util/CredtpWrapper;->a(ILjava/lang/String;)V

    return-object v1

    .line 17
    :cond_1
    sget-object v0, Lcom/ksyun/media/streamer/util/CredtpWrapper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do not have the filter shader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
