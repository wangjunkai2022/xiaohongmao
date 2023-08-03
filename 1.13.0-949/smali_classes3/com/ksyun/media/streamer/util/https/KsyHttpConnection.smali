.class public Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;
.super Ljava/lang/Object;
.source "KsyHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/net/HttpURLConnection;

.field private f:Ljavax/net/ssl/HttpsURLConnection;

.field private g:Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

.field private h:Ljava/lang/Thread;

.field private i:Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

.field private final j:Ljava/lang/Object;

.field private final k:Ljava/lang/Object;

.field private volatile l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KsyHttpClient"

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->c:I

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->e:Ljava/net/HttpURLConnection;

    .line 6
    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f:Ljavax/net/ssl/HttpsURLConnection;

    .line 7
    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    .line 8
    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->h:Ljava/lang/Thread;

    .line 9
    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i:Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    .line 10
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->j:Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->k:Ljava/lang/Object;

    .line 12
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->l:Z

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->a:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->m:Ljava/util/List;

    .line 15
    new-instance v0, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->e:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f:Ljavax/net/ssl/HttpsURLConnection;

    return-object p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->l:Z

    return p0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d:I

    return p0
.end method

.method static synthetic d(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->e:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method static synthetic e(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->c:I

    return p0
.end method

.method static synthetic f(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->g:Lcom/ksyun/media/streamer/util/https/KsyHttpResponse;

    return-object p0
.end method

.method static synthetic g(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Lcom/ksyun/media/streamer/util/https/HttpResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i:Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    return-object p0
.end method

.method static synthetic h(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->k:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic i(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->f:Ljavax/net/ssl/HttpsURLConnection;

    return-object p0
.end method


# virtual methods
.method public addHostName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cancelHttpRequest()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->l:Z

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public otherHostName(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public performHttpRequest(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$1;-><init>(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->h:Ljava/lang/Thread;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public performHttpsRequest(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection$2;-><init>(Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->h:Ljava/lang/Thread;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->d:I

    return-void
.end method

.method public setListener(Lcom/ksyun/media/streamer/util/https/HttpResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->i:Lcom/ksyun/media/streamer/util/https/HttpResponseListener;

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/util/https/KsyHttpConnection;->c:I

    return-void
.end method
