.class public final synthetic Lscreenstreamer/filters/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lscreenstreamer/filters/d$a;

.field public final synthetic b:Lcom/ksyun/media/streamer/framework/ImgTexFrame;


# direct methods
.method public synthetic constructor <init>(Lscreenstreamer/filters/d$a;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lscreenstreamer/filters/c;->a:Lscreenstreamer/filters/d$a;

    iput-object p2, p0, Lscreenstreamer/filters/c;->b:Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lscreenstreamer/filters/c;->a:Lscreenstreamer/filters/d$a;

    iget-object v1, p0, Lscreenstreamer/filters/c;->b:Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    invoke-static {v0, v1}, Lscreenstreamer/filters/d$a;->a(Lscreenstreamer/filters/d$a;Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method
