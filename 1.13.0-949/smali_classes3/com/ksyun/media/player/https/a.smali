.class public Lcom/ksyun/media/player/https/a;
.super Ljava/lang/Object;
.source "KsyHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/player/https/a$a;
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

.field private e:Lcom/ksyun/media/player/https/HttpResponseListener;

.field private final f:Ljava/lang/Object;

.field private volatile g:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KsyHttpClient"

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/player/https/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ksyun/media/player/https/a;->c:I

    .line 4
    iput v0, p0, Lcom/ksyun/media/player/https/a;->d:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/ksyun/media/player/https/a;->e:Lcom/ksyun/media/player/https/HttpResponseListener;

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/player/https/a;->f:Ljava/lang/Object;

    .line 7
    iput-boolean v0, p0, Lcom/ksyun/media/player/https/a;->g:Z

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ksyun/media/player/https/a;->a:Ljava/util/HashMap;

    .line 9
    iput-boolean v0, p0, Lcom/ksyun/media/player/https/a;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/player/https/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ksyun/media/player/https/a;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/ksyun/media/player/https/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ksyun/media/player/https/a;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/ksyun/media/player/https/a;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/https/a;->d:I

    return p0
.end method

.method static synthetic d(Lcom/ksyun/media/player/https/a;)I
    .locals 0

    iget p0, p0, Lcom/ksyun/media/player/https/a;->c:I

    return p0
.end method

.method static synthetic e(Lcom/ksyun/media/player/https/a;)Lcom/ksyun/media/player/https/HttpResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/ksyun/media/player/https/a;->e:Lcom/ksyun/media/player/https/HttpResponseListener;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/https/a;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 6
    :try_start_0
    iput-boolean v1, p0, Lcom/ksyun/media/player/https/a;->g:Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/player/https/a;->c:I

    return-void
.end method

.method a(Lcom/ksyun/media/player/https/HttpResponseListener;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/player/https/a;->e:Lcom/ksyun/media/player/https/HttpResponseListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ksyun/media/player/https/a$1;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/player/https/a$1;-><init>(Lcom/ksyun/media/player/https/a;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/player/https/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/player/https/a;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ksyun/media/player/https/a$2;

    invoke-direct {v1, p0, p1}, Lcom/ksyun/media/player/https/a$2;-><init>(Lcom/ksyun/media/player/https/a;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
