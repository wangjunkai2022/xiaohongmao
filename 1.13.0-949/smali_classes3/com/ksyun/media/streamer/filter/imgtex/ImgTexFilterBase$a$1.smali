.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;
.super Ljava/lang/Object;
.source "ImgTexFilterBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->onDisconnect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    iget-object v0, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    iget-object v0, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    iget-object v0, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->unref()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    iget-object v0, v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->c(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;)[Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a$1;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;

    invoke-static {v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;->a(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase$a;)I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method
