.class final Lcom/tangxiaolv/telegramgallery/Utils/g$m;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "m"
.end annotation


# instance fields
.field public a:I

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Utils/g;


# direct methods
.method private constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$m;->b:Lcom/tangxiaolv/telegramgallery/Utils/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$m;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$m;->a:I

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$m;->b:Lcom/tangxiaolv/telegramgallery/Utils/g;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/g;->c(Lcom/tangxiaolv/telegramgallery/Utils/g;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$m;->b:Lcom/tangxiaolv/telegramgallery/Utils/g;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/g;->d(Lcom/tangxiaolv/telegramgallery/Utils/g;)Lcom/tangxiaolv/telegramgallery/Utils/g$j;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$m;->b:Lcom/tangxiaolv/telegramgallery/Utils/g;

    .line 4
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/g;->d(Lcom/tangxiaolv/telegramgallery/Utils/g;)Lcom/tangxiaolv/telegramgallery/Utils/g$j;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 5
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$m;->b:Lcom/tangxiaolv/telegramgallery/Utils/g;

    invoke-static {v1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/g;->e(Lcom/tangxiaolv/telegramgallery/Utils/g;Lcom/tangxiaolv/telegramgallery/Utils/g$j;)Lcom/tangxiaolv/telegramgallery/Utils/g$j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$m;->b:Lcom/tangxiaolv/telegramgallery/Utils/g;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/g;->f(Lcom/tangxiaolv/telegramgallery/Utils/g;)Lcom/tangxiaolv/telegramgallery/Utils/g$f;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    sget-object v1, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$m;->b:Lcom/tangxiaolv/telegramgallery/Utils/g;

    .line 9
    invoke-static {v2}, Lcom/tangxiaolv/telegramgallery/Utils/g;->f(Lcom/tangxiaolv/telegramgallery/Utils/g;)Lcom/tangxiaolv/telegramgallery/Utils/g$f;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 10
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$m;->b:Lcom/tangxiaolv/telegramgallery/Utils/g;

    invoke-static {v1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/g;->g(Lcom/tangxiaolv/telegramgallery/Utils/g;Lcom/tangxiaolv/telegramgallery/Utils/g$f;)Lcom/tangxiaolv/telegramgallery/Utils/g$f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
