.class Lcom/ksyun/media/player/misc/d$1;
.super Ljava/lang/Object;
.source "KSYListSourceMgr.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/player/misc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/player/misc/d;


# direct methods
.method constructor <init>(Lcom/ksyun/media/player/misc/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/player/misc/d$1;->a:Lcom/ksyun/media/player/misc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/ksyun/media/player/misc/d$1;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {p1}, Lcom/ksyun/media/player/misc/d;->d(Lcom/ksyun/media/player/misc/d;)V

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/ksyun/media/player/misc/d$1;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {p1}, Lcom/ksyun/media/player/misc/d;->a(Lcom/ksyun/media/player/misc/d;)I

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d$1;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v0}, Lcom/ksyun/media/player/misc/d;->a(Lcom/ksyun/media/player/misc/d;)I

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d$1;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v0}, Lcom/ksyun/media/player/misc/d;->b(Lcom/ksyun/media/player/misc/d;)I

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/player/misc/d$1;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v0}, Lcom/ksyun/media/player/misc/d;->c(Lcom/ksyun/media/player/misc/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/player/misc/d$1;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {p1}, Lcom/ksyun/media/player/misc/d;->e(Lcom/ksyun/media/player/misc/d;)I

    move-result p1

    iget-object v0, p0, Lcom/ksyun/media/player/misc/d$1;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {v0}, Lcom/ksyun/media/player/misc/d;->f(Lcom/ksyun/media/player/misc/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/player/misc/d$1;->a:Lcom/ksyun/media/player/misc/d;

    invoke-static {p1}, Lcom/ksyun/media/player/misc/d;->d(Lcom/ksyun/media/player/misc/d;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
