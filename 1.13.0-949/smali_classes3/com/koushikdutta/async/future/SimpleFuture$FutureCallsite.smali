.class Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;
.super Ljava/lang/Object;
.source "SimpleFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/SimpleFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureCallsite"
.end annotation


# instance fields
.field a:Ljava/lang/Exception;

.field b:Ljava/lang/Object;

.field c:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->c:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->a:Ljava/lang/Exception;

    .line 3
    iget-object v2, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    iput-object v3, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->c:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    .line 5
    iput-object v3, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->a:Ljava/lang/Exception;

    .line 6
    iput-object v3, p0, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->b:Ljava/lang/Object;

    .line 7
    invoke-interface {v0, v1, v2, p0}, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;->a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    goto :goto_0

    :cond_0
    return-void
.end method
