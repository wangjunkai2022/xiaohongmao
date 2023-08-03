.class Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$4;
.super Ljava/lang/Object;
.source "ImgTexPreview.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$4;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReleased()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview$4;->a:Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;

    invoke-static {v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;->e(Lcom/ksyun/media/streamer/filter/imgtex/ImgTexPreview;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
