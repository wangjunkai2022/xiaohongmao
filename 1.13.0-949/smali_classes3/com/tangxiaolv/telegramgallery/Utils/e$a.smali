.class Lcom/tangxiaolv/telegramgallery/Utils/e$a;
.super Lcom/tangxiaolv/telegramgallery/l;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;I)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$a;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {p0, p2}, Lcom/tangxiaolv/telegramgallery/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected b(ZLjava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$a;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->p(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$a;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->p(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$a;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->q(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method protected k(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)I
    .locals 0

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method
