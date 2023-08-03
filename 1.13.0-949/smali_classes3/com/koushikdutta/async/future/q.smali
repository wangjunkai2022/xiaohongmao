.class public final synthetic Lcom/koushikdutta/async/future/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/future/Future;

.field public final synthetic b:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/q;->a:Lcom/koushikdutta/async/future/Future;

    iput-object p2, p0, Lcom/koushikdutta/async/future/q;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/future/q;->a:Lcom/koushikdutta/async/future/Future;

    iget-object v1, p0, Lcom/koushikdutta/async/future/q;->b:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/future/r;->b(Lcom/koushikdutta/async/future/Future;Lcom/koushikdutta/async/future/SimpleFuture;)V

    return-void
.end method
