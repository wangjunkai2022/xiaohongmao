.class public final synthetic Lcom/koushikdutta/async/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/AsyncServer;

.field public final synthetic b:Lcom/koushikdutta/async/callback/ValueFunction;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/SimpleFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/m;->a:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/m;->b:Lcom/koushikdutta/async/callback/ValueFunction;

    iput p3, p0, Lcom/koushikdutta/async/m;->c:I

    iput-boolean p4, p0, Lcom/koushikdutta/async/m;->d:Z

    iput-object p5, p0, Lcom/koushikdutta/async/m;->e:Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/koushikdutta/async/m;->a:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, p0, Lcom/koushikdutta/async/m;->b:Lcom/koushikdutta/async/callback/ValueFunction;

    iget v2, p0, Lcom/koushikdutta/async/m;->c:I

    iget-boolean v3, p0, Lcom/koushikdutta/async/m;->d:Z

    iget-object v4, p0, Lcom/koushikdutta/async/m;->e:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/async/AsyncServer;->i(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/callback/ValueFunction;IZLcom/koushikdutta/async/future/SimpleFuture;)V

    return-void
.end method
