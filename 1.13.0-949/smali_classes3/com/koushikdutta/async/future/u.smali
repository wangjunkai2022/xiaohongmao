.class public final synthetic Lcom/koushikdutta/async/future/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/future/MultiFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/MultiFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/u;->a:Lcom/koushikdutta/async/future/MultiFuture;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/future/u;->a:Lcom/koushikdutta/async/future/MultiFuture;

    invoke-static {v0, p1, p2, p3}, Lcom/koushikdutta/async/future/MultiFuture;->i0(Lcom/koushikdutta/async/future/MultiFuture;Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    return-void
.end method
