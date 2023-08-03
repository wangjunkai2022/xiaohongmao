.class Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;
.super Ljava/lang/Object;
.source "AsyncSocketMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncSocketMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleSocketHolder"
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/AsyncSocket;

.field b:J

.field final synthetic c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncSocketMiddleware;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->c:Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->b:J

    .line 3
    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncSocketMiddleware$IdleSocketHolder;->a:Lcom/koushikdutta/async/AsyncSocket;

    return-void
.end method
