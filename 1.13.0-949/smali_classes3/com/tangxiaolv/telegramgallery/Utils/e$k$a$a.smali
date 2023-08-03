.class Lcom/tangxiaolv/telegramgallery/Utils/e$k$a$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$k;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->a(Lcom/tangxiaolv/telegramgallery/Utils/e$k;)Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
