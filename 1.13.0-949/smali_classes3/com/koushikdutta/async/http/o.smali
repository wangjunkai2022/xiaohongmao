.class public final synthetic Lcom/koushikdutta/async/http/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/http/WebSocketImpl;

.field public final synthetic b:[B

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/WebSocketImpl;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/o;->a:Lcom/koushikdutta/async/http/WebSocketImpl;

    iput-object p2, p0, Lcom/koushikdutta/async/http/o;->b:[B

    iput p3, p0, Lcom/koushikdutta/async/http/o;->c:I

    iput p4, p0, Lcom/koushikdutta/async/http/o;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/koushikdutta/async/http/o;->a:Lcom/koushikdutta/async/http/WebSocketImpl;

    iget-object v1, p0, Lcom/koushikdutta/async/http/o;->b:[B

    iget v2, p0, Lcom/koushikdutta/async/http/o;->c:I

    iget v3, p0, Lcom/koushikdutta/async/http/o;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/WebSocketImpl;->E(Lcom/koushikdutta/async/http/WebSocketImpl;[BII)V

    return-void
.end method
