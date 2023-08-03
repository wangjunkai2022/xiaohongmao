.class Lcom/tangxiaolv/telegramgallery/Utils/e$b$b;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$b;->c(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/Utils/e$b;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$b;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$b;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$b;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$b;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$b;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$b;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$b;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$b;->a:Ljava/lang/String;

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$b;->b:I

    invoke-static {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/e;->s(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v0

    sget v1, Lcom/tangxiaolv/telegramgallery/Utils/h;->C:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$b;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$b$b;->b:I

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/h;->d(I[Ljava/lang/Object;)V

    return-void
.end method
