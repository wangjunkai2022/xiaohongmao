.class public final synthetic Lcom/koushikdutta/async/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/callback/ValueFunction;


# instance fields
.field public final synthetic a:Ljava/net/InetAddress;


# direct methods
.method public synthetic constructor <init>(Ljava/net/InetAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/i;->a:Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/i;->a:Ljava/net/InetAddress;

    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
