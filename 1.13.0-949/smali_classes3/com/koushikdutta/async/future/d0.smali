.class public final synthetic Lcom/koushikdutta/async/future/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/future/SuccessCallback;

.field public final synthetic b:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SuccessCallback;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/d0;->a:Lcom/koushikdutta/async/future/SuccessCallback;

    iput-object p2, p0, Lcom/koushikdutta/async/future/d0;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/future/d0;->a:Lcom/koushikdutta/async/future/SuccessCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/future/d0;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/koushikdutta/async/future/SimpleFuture;->k(Lcom/koushikdutta/async/future/SuccessCallback;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method
