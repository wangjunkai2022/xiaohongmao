.class Lcom/tangxiaolv/telegramgallery/Utils/e$b$c;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$b;->b(Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:F

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/Utils/e$b;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$b;Ljava/lang/String;F)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$c;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$b;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$c;->b:F

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

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$c;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$c;->b:F

    .line 2
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/h;->d(I[Ljava/lang/Object;)V

    return-void
.end method
