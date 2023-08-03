.class Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c(Landroid/graphics/drawable/BitmapDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$j;Landroid/graphics/drawable/BitmapDrawable;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v1, v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 4
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tangxiaolv/telegramgallery/k;

    if-nez v1, :cond_0

    move-object v5, v0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->B()Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    move-result-object v5

    :goto_1
    iget-object v6, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v7, v6, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    iget-boolean v6, v6, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    .line 6
    invoke-virtual {v4, v5, v7, v6, v2}, Lcom/tangxiaolv/telegramgallery/k;->g0(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_4

    .line 7
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;->D()V

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 8
    :goto_2
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tangxiaolv/telegramgallery/k;

    .line 10
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->a:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$j$a;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v5, v4, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->a:Ljava/lang/String;

    iget-boolean v4, v4, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    invoke-virtual {v1, v3, v5, v4, v2}, Lcom/tangxiaolv/telegramgallery/k;->g0(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method
