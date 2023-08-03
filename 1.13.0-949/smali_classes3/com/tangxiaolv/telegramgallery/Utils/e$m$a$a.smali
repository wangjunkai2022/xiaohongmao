.class Lcom/tangxiaolv/telegramgallery/Utils/e$m$a$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a$a;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/h;->A:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a$a;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;

    iget-object v3, v3, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    .line 2
    invoke-static {v3}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a(Lcom/tangxiaolv/telegramgallery/Utils/e$m;)Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    move-result-object v3

    iget-object v3, v3, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a$a;->a:Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;

    iget v3, v3, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;->a:F

    .line 3
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/h;->d(I[Ljava/lang/Object;)V

    return-void
.end method
