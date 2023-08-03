.class Lcom/koushikdutta/async/future/Continuation$2;
.super Ljava/lang/Object;
.source "Continuation.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/future/Continuation;->J()Lcom/koushikdutta/async/callback/CompletedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/koushikdutta/async/future/Continuation;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/future/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/future/Continuation$2;->b:Lcom/koushikdutta/async/future/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->a:Z

    .line 3
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->b:Lcom/koushikdutta/async/future/Continuation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/koushikdutta/async/future/Continuation;->j(Lcom/koushikdutta/async/future/Continuation;Z)Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/koushikdutta/async/future/Continuation$2;->b:Lcom/koushikdutta/async/future/Continuation;

    invoke-static {p1}, Lcom/koushikdutta/async/future/Continuation;->k(Lcom/koushikdutta/async/future/Continuation;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/future/Continuation$2;->b:Lcom/koushikdutta/async/future/Continuation;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/Continuation;->z(Ljava/lang/Exception;)V

    return-void
.end method
