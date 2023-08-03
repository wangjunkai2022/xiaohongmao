.class Lcom/tangxiaolv/telegramgallery/Utils/e$g;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;->U(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$g;->b:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$g;->b:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->m(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->k:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    .line 3
    new-instance v2, Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$g;->b:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->a(Lcom/tangxiaolv/telegramgallery/Utils/e$m;)Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    move-result-object v4

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;->b(Lcom/tangxiaolv/telegramgallery/Utils/e$m;)I

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lcom/tangxiaolv/telegramgallery/Utils/e$m;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Lcom/tangxiaolv/telegramgallery/Utils/e$j;I)V

    iput-object v2, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->k:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    .line 4
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$g;->b:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->l(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->k:Lcom/tangxiaolv/telegramgallery/Utils/e$m;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
