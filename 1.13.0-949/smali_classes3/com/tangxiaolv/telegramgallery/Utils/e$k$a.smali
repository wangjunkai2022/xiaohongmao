.class Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c(Landroid/graphics/drawable/BitmapDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Utils/e$k;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$k;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->C(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->a(Lcom/tangxiaolv/telegramgallery/Utils/e$k;)Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    move-result-object v1

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/l;->d(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->C(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/l;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->a(Lcom/tangxiaolv/telegramgallery/Utils/e$k;)Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    move-result-object v1

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/l;->g(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->B(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/d;

    move-result-object v1

    new-instance v2, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a$a;

    invoke-direct {v2, p0, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method
