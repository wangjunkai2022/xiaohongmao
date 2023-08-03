.class Lcom/tangxiaolv/telegramgallery/Components/i$a;
.super Ljava/lang/Object;
.source "SizeNotifierFrameLayoutPhoto.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/Components/i;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tangxiaolv/telegramgallery/Components/i;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/Components/i;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/i$a;->b:Lcom/tangxiaolv/telegramgallery/Components/i;

    iput-boolean p2, p0, Lcom/tangxiaolv/telegramgallery/Components/i$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/i$a;->b:Lcom/tangxiaolv/telegramgallery/Components/i;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/i;->a(Lcom/tangxiaolv/telegramgallery/Components/i;)Lcom/tangxiaolv/telegramgallery/Components/i$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/i$a;->b:Lcom/tangxiaolv/telegramgallery/Components/i;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Components/i;->a(Lcom/tangxiaolv/telegramgallery/Components/i;)Lcom/tangxiaolv/telegramgallery/Components/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/i$a;->b:Lcom/tangxiaolv/telegramgallery/Components/i;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Components/i;->b(Lcom/tangxiaolv/telegramgallery/Components/i;)I

    move-result v1

    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Components/i$a;->a:Z

    invoke-interface {v0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Components/i$b;->a(IZ)V

    :cond_0
    return-void
.end method
