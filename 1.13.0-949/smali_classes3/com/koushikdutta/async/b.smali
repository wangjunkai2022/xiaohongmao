.class public final synthetic Lcom/koushikdutta/async/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/future/SimpleCancellable;

.field public final synthetic b:Lcom/koushikdutta/async/callback/ConnectCallback;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/b;->a:Lcom/koushikdutta/async/future/SimpleCancellable;

    iput-object p2, p0, Lcom/koushikdutta/async/b;->b:Lcom/koushikdutta/async/callback/ConnectCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/b;->c:Ljava/lang/String;

    iput p4, p0, Lcom/koushikdutta/async/b;->d:I

    iput-boolean p5, p0, Lcom/koushikdutta/async/b;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 7

    iget-object v0, p0, Lcom/koushikdutta/async/b;->a:Lcom/koushikdutta/async/future/SimpleCancellable;

    iget-object v1, p0, Lcom/koushikdutta/async/b;->b:Lcom/koushikdutta/async/callback/ConnectCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/b;->c:Ljava/lang/String;

    iget v3, p0, Lcom/koushikdutta/async/b;->d:I

    iget-boolean v4, p0, Lcom/koushikdutta/async/b;->e:Z

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/async/AsyncSSLSocketWrapper;->K(Lcom/koushikdutta/async/future/SimpleCancellable;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/String;IZLjava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    return-void
.end method
