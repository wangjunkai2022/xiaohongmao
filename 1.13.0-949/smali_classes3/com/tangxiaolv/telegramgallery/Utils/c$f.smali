.class Lcom/tangxiaolv/telegramgallery/Utils/c$f;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/c;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Utils/c;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$f;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$f;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->b(Lcom/tangxiaolv/telegramgallery/Utils/c;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$f;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->c(Lcom/tangxiaolv/telegramgallery/Utils/c;)I

    move-result v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$f;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/c;->b(Lcom/tangxiaolv/telegramgallery/Utils/c;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$f;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->d(Lcom/tangxiaolv/telegramgallery/Utils/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$f;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->a(Lcom/tangxiaolv/telegramgallery/Utils/c;)Lcom/tangxiaolv/telegramgallery/Utils/c$i;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$f;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/c$i;->a(Lcom/tangxiaolv/telegramgallery/Utils/c;I)V

    :cond_0
    :goto_0
    return-void
.end method
