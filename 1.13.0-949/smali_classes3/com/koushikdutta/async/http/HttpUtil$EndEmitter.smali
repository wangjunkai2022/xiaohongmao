.class Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndEmitter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    return-void
.end method

.method static synthetic w0(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    return-void
.end method

.method public static x0(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
    .locals 2

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;-><init>()V

    .line 2
    new-instance v1, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;

    invoke-direct {v1, v0, p1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;-><init>(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/AsyncServer;->c0(Ljava/lang/Runnable;)Lcom/koushikdutta/async/future/Cancellable;

    return-object v0
.end method
