.class Lcom/tangxiaolv/telegramgallery/Utils/c$c;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Utils/c;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Utils/c;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$c;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$c;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/c;->a(Lcom/tangxiaolv/telegramgallery/Utils/c;)Lcom/tangxiaolv/telegramgallery/Utils/c$i;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/c$c;->a:Lcom/tangxiaolv/telegramgallery/Utils/c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/c$i;->a(Lcom/tangxiaolv/telegramgallery/Utils/c;I)V

    return-void
.end method
