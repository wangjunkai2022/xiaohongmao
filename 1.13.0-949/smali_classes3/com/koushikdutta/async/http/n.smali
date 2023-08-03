.class public final synthetic Lcom/koushikdutta/async/http/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/http/WebSocketImpl;

.field public final synthetic b:[B


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/WebSocketImpl;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/WebSocketImpl;

    iput-object p2, p0, Lcom/koushikdutta/async/http/n;->b:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/n;->a:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v1, p0, Lcom/koushikdutta/async/http/n;->b:[B

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/WebSocketImpl;->y(Lcom/koushikdutta/async/http/WebSocketImpl;[B)V

    return-void
.end method
