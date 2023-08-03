.class public final synthetic Lcom/tangxiaolv/telegramgallery/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/tangxiaolv/telegramgallery/GalleryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tangxiaolv/telegramgallery/GalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/f;->a:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/f;->a:Lcom/tangxiaolv/telegramgallery/GalleryActivity;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/tangxiaolv/telegramgallery/GalleryActivity;->G(Lcom/tangxiaolv/telegramgallery/GalleryActivity;Landroid/content/Intent;)V

    return-void
.end method
