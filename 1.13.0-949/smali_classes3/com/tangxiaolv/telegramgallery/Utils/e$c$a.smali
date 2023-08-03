.class Lcom/tangxiaolv/telegramgallery/Utils/e$c$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Utils/e$c;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e$c;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$c$a;->b:Lcom/tangxiaolv/telegramgallery/Utils/e$c;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$c$a;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$c$a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/d;->N(Ljava/util/HashMap;)V

    return-void
.end method
