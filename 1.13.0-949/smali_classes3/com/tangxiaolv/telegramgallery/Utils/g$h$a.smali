.class Lcom/tangxiaolv/telegramgallery/Utils/g$h$a;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/g$h;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Utils/g$h;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/g$h;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$h$a;->a:Lcom/tangxiaolv/telegramgallery/Utils/g$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$h$a;->a:Lcom/tangxiaolv/telegramgallery/Utils/g$h;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/g$h;->a:Lcom/tangxiaolv/telegramgallery/Utils/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/g;->b(Lcom/tangxiaolv/telegramgallery/Utils/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/tangxiaolv/telegramgallery/Utils/g;->o(I[Ljava/lang/String;)V

    return-void
.end method
