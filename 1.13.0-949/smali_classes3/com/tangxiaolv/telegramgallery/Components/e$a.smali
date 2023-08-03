.class Lcom/tangxiaolv/telegramgallery/Components/e$a;
.super Ljava/lang/Object;
.source "PhotoPickerAlbumsCell.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Components/e;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Components/e;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Components/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/e$a;->a:Lcom/tangxiaolv/telegramgallery/Components/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/e$a;->a:Lcom/tangxiaolv/telegramgallery/Components/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/e;->a(Lcom/tangxiaolv/telegramgallery/Components/e;)Lcom/tangxiaolv/telegramgallery/Components/e$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/e$a;->a:Lcom/tangxiaolv/telegramgallery/Components/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/e;->a(Lcom/tangxiaolv/telegramgallery/Components/e;)Lcom/tangxiaolv/telegramgallery/Components/e$c;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/e$a;->a:Lcom/tangxiaolv/telegramgallery/Components/e;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Components/e;->b(Lcom/tangxiaolv/telegramgallery/Components/e;)[Lcom/tangxiaolv/telegramgallery/Utils/g$d;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lcom/tangxiaolv/telegramgallery/Components/e$c;->a(Lcom/tangxiaolv/telegramgallery/Utils/g$d;)V

    :cond_0
    return-void
.end method
