.class public final synthetic Lcom/koushikdutta/async/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/callback/ValueFunction;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/h;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/koushikdutta/async/AsyncServer;->b(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
