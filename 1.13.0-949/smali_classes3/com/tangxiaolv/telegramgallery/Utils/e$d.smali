.class Lcom/tangxiaolv/telegramgallery/Utils/e$d;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;->F(Lcom/tangxiaolv/telegramgallery/k;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/k;

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;ILcom/tangxiaolv/telegramgallery/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$d;->a:I

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$d;->b:Lcom/tangxiaolv/telegramgallery/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$d;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    .line 2
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$d;->b:Lcom/tangxiaolv/telegramgallery/k;

    if-nez v0, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lcom/tangxiaolv/telegramgallery/k;->B(Z)Ljava/lang/Integer;

    move-result-object v4

    if-nez v0, :cond_3

    .line 3
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v5, v4}, Lcom/tangxiaolv/telegramgallery/Utils/e;->v(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/Integer;)V

    :cond_3
    if-eqz v4, :cond_4

    .line 4
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$d;->c:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v5}, Lcom/tangxiaolv/telegramgallery/Utils/e;->i(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    if-eqz v4, :cond_4

    .line 5
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$d;->b:Lcom/tangxiaolv/telegramgallery/k;

    invoke-virtual {v4, v5}, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b(Lcom/tangxiaolv/telegramgallery/k;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
