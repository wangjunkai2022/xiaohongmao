.class Lcom/tangxiaolv/telegramgallery/Utils/e$m$b$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$b$a;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$b$a;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v3, Lcom/tangxiaolv/telegramgallery/Utils/h;->B:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$b$a;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;

    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    .line 3
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a(Lcom/tangxiaolv/telegramgallery/Utils/e$m;)Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    move-result-object v4

    iget-object v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 4
    invoke-virtual {v0, v3, v1}, Lcom/tangxiaolv/telegramgallery/Utils/h;->d(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v3, Lcom/tangxiaolv/telegramgallery/Utils/h;->C:I

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$b$a;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;

    iget-object v6, v6, Lcom/tangxiaolv/telegramgallery/Utils/e$m$b;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    .line 6
    invoke-static {v6}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a(Lcom/tangxiaolv/telegramgallery/Utils/e$m;)Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    move-result-object v6

    iget-object v6, v6, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    .line 7
    invoke-virtual {v0, v3, v5}, Lcom/tangxiaolv/telegramgallery/Utils/h;->d(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
