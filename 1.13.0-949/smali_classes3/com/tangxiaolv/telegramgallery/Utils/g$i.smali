.class Lcom/tangxiaolv/telegramgallery/Utils/g$i;
.super Landroid/database/ContentObserver;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Utils/g;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$i;->a:Lcom/tangxiaolv/telegramgallery/Utils/g;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$i;->a:Lcom/tangxiaolv/telegramgallery/Utils/g;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/g;->a(Lcom/tangxiaolv/telegramgallery/Utils/g;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$i;->a:Lcom/tangxiaolv/telegramgallery/Utils/g;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/g;->a(Lcom/tangxiaolv/telegramgallery/Utils/g;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->c(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$i;->a:Lcom/tangxiaolv/telegramgallery/Utils/g;

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/g$i$a;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/Utils/g$i$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/g$i;)V

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/g;->b(Lcom/tangxiaolv/telegramgallery/Utils/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->E(Ljava/lang/Runnable;J)V

    return-void
.end method
