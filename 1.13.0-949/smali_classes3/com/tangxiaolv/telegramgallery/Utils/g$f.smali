.class Lcom/tangxiaolv/telegramgallery/Utils/g$f;
.super Landroid/database/ContentObserver;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Utils/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/Utils/g;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$f;->a:Lcom/tangxiaolv/telegramgallery/Utils/g;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/g$f;->a:Lcom/tangxiaolv/telegramgallery/Utils/g;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/g;->q(Landroid/net/Uri;)V

    return-void
.end method
