.class public final synthetic Lcom/koushikdutta/async/dns/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/future/SimpleFuture;

.field public final synthetic b:Lcom/koushikdutta/async/AsyncServer;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/koushikdutta/async/future/FutureCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/dns/a;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p2, p0, Lcom/koushikdutta/async/dns/a;->b:Lcom/koushikdutta/async/AsyncServer;

    iput-object p3, p0, Lcom/koushikdutta/async/dns/a;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/koushikdutta/async/dns/a;->d:Z

    iput-object p5, p0, Lcom/koushikdutta/async/dns/a;->e:Lcom/koushikdutta/async/future/FutureCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/koushikdutta/async/dns/a;->a:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v1, p0, Lcom/koushikdutta/async/dns/a;->b:Lcom/koushikdutta/async/AsyncServer;

    iget-object v2, p0, Lcom/koushikdutta/async/dns/a;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/koushikdutta/async/dns/a;->d:Z

    iget-object v4, p0, Lcom/koushikdutta/async/dns/a;->e:Lcom/koushikdutta/async/future/FutureCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/async/dns/Dns;->a(Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;ZLcom/koushikdutta/async/future/FutureCallback;)V

    return-void
.end method
