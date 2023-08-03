.class Lcom/tangxiaolv/telegramgallery/Utils/e$o$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Utils/e$o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$o;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$o;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$o;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/e;->A(Lcom/tangxiaolv/telegramgallery/Utils/e;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
