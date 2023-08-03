.class Lcom/tangxiaolv/telegramgallery/Utils/e$c;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$c;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$c;->a:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-virtual {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->J()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/tangxiaolv/telegramgallery/Utils/e$c$a;

    invoke-direct {v1, p0, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e$c$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$c;Ljava/util/HashMap;)V

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    return-void
.end method
