.class Lcom/tangxiaolv/telegramgallery/Components/d$a;
.super Ljava/lang/Object;
.source "PhotoCropView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Components/d;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Components/d;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Components/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/d$a;->a:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d$a;->a:Lcom/tangxiaolv/telegramgallery/Components/d;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/d;->a(Lcom/tangxiaolv/telegramgallery/Components/d;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d$a;->a:Lcom/tangxiaolv/telegramgallery/Components/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/d;->b(Lcom/tangxiaolv/telegramgallery/Components/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/d$a;->a:Lcom/tangxiaolv/telegramgallery/Components/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Components/d;->e(Z)V

    :cond_0
    return-void
.end method
