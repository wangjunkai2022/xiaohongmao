.class Lcom/tangxiaolv/telegramgallery/Utils/e$e;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;->d0(Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/tangxiaolv/telegramgallery/TL/d;

.field final synthetic d:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$e;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$e;->c:Lcom/tangxiaolv/telegramgallery/TL/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$e;->d:Lcom/tangxiaolv/telegramgallery/Utils/e;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$e;->c:Lcom/tangxiaolv/telegramgallery/TL/d;

    invoke-static {v0, v1, v2, v3}, Lcom/tangxiaolv/telegramgallery/Utils/e;->w(Lcom/tangxiaolv/telegramgallery/Utils/e;Ljava/lang/String;Ljava/lang/String;Lcom/tangxiaolv/telegramgallery/TL/d;)V

    return-void
.end method
