.class Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/Utils/e$o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$o;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$o;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->a(Lcom/tangxiaolv/telegramgallery/Utils/e$o;)V

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$o;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->b(Lcom/tangxiaolv/telegramgallery/Utils/e$o;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->b(Lcom/tangxiaolv/telegramgallery/Utils/e$o;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/h;->b()Lcom/tangxiaolv/telegramgallery/Utils/h;

    move-result-object v1

    sget v2, Lcom/tangxiaolv/telegramgallery/Utils/h;->v:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;->b:Landroid/graphics/drawable/BitmapDrawable;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tangxiaolv/telegramgallery/Utils/h;->d(I[Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$o;

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->C(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/l;

    move-result-object v1

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v0, v2}, Lcom/tangxiaolv/telegramgallery/l;->g(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method
