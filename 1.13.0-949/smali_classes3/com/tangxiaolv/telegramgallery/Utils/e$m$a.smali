.class Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$m;->e(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Utils/e$m;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$m;F)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->g:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->a(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a(Lcom/tangxiaolv/telegramgallery/Utils/e$m;)Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    move-result-object v1

    iget-object v1, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->b:Ljava/lang/String;

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;->a:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a$a;

    invoke-direct {v0, p0}, Lcom/tangxiaolv/telegramgallery/Utils/e$m$a$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$m$a;)V

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    return-void
.end method
