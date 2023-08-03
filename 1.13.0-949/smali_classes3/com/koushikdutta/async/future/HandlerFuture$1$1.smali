.class Lcom/koushikdutta/async/future/HandlerFuture$1$1;
.super Ljava/lang/Object;
.source "HandlerFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/HandlerFuture$1;->c(Ljava/lang/Exception;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/koushikdutta/async/future/HandlerFuture$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/HandlerFuture$1;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->c:Lcom/koushikdutta/async/future/HandlerFuture$1;

    iput-object p2, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->a:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->c:Lcom/koushikdutta/async/future/HandlerFuture$1;

    iget-object v1, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->a:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/koushikdutta/async/future/HandlerFuture$1$1;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/future/HandlerFuture$1;->c(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
