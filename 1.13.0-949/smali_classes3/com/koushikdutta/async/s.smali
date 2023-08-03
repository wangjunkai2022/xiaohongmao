.class public final synthetic Lcom/koushikdutta/async/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# instance fields
.field public final synthetic a:Lcom/koushikdutta/async/BufferedDataSink;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/BufferedDataSink;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/s;->a:Lcom/koushikdutta/async/BufferedDataSink;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/s;->a:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-static {v0}, Lcom/koushikdutta/async/BufferedDataSink;->f(Lcom/koushikdutta/async/BufferedDataSink;)V

    return-void
.end method
