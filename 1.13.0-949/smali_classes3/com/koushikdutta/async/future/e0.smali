.class public final synthetic Lcom/koushikdutta/async/future/e0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenFutureCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/future/ThenCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/ThenCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/future/e0;->a:Lcom/koushikdutta/async/future/ThenCallback;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/future/e0;->a:Lcom/koushikdutta/async/future/ThenCallback;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->u(Lcom/koushikdutta/async/future/ThenCallback;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
