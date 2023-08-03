.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionInfo"
.end annotation


# instance fields
.field a:I

.field b:Lcom/koushikdutta/async/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/util/ArrayDeque<",
            "Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/koushikdutta/async/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/util/ArrayDeque<",
            "Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->b:Lcom/koushikdutta/async/util/ArrayDeque;

    .line 3
    new-instance v0, Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$ConnectionInfo;->c:Lcom/koushikdutta/async/util/ArrayDeque;

    return-void
.end method
