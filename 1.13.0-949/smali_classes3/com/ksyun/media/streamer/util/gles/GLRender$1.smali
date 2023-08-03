.class Lcom/ksyun/media/streamer/util/gles/GLRender$1;
.super Ljava/lang/Object;
.source "GLRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/util/gles/GLRender;->addListener(Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;

.field final synthetic b:Lcom/ksyun/media/streamer/util/gles/GLRender;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$1;->b:Lcom/ksyun/media/streamer/util/gles/GLRender;

    iput-object p2, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$1;->a:Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/util/gles/GLRender$1;->a:Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;

    invoke-interface {v0}, Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;->onReady()V

    return-void
.end method
