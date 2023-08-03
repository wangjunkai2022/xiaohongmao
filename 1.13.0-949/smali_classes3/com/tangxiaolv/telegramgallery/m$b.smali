.class Lcom/tangxiaolv/telegramgallery/m$b;
.super Ljava/lang/Object;
.source "PhotoAlbumPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/m;->r(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/m;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/m;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$b;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/m$b;->a:Lcom/tangxiaolv/telegramgallery/m;

    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/m;->q0(Lcom/tangxiaolv/telegramgallery/m;)Lcom/tangxiaolv/telegramgallery/Actionbar/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/d;->u()V

    return-void
.end method
