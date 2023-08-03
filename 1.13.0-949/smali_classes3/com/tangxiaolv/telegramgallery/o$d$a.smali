.class Lcom/tangxiaolv/telegramgallery/o$d$a;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o$d;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/o$d;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o$d;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$d$a;->a:Lcom/tangxiaolv/telegramgallery/o$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/h;->h(Z)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$d$a;->a:Lcom/tangxiaolv/telegramgallery/o$d;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/o$d;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->d0(Lcom/tangxiaolv/telegramgallery/o;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$d$a;->a:Lcom/tangxiaolv/telegramgallery/o$d;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/o$d;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->d0(Lcom/tangxiaolv/telegramgallery/o;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$d$a;->a:Lcom/tangxiaolv/telegramgallery/o$d;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/o$d;->a:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/o;->e0(Lcom/tangxiaolv/telegramgallery/o;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
