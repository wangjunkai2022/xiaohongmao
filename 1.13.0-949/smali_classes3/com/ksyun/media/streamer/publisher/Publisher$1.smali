.class Lcom/ksyun/media/streamer/publisher/Publisher$1;
.super Ljava/lang/Object;
.source "Publisher.java"

# interfaces
.implements Lcom/ksyun/media/streamer/publisher/PublisherWrapper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/publisher/Publisher;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/publisher/Publisher;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/publisher/Publisher;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$1;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$1;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ksyun/media/streamer/publisher/Publisher;->postInfo(IJ)V

    return-void
.end method
