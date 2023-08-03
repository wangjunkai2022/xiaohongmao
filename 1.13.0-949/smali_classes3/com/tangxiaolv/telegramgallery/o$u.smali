.class Lcom/tangxiaolv/telegramgallery/o$u;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tangxiaolv/telegramgallery/o;->a1(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method constructor <init>(Lcom/tangxiaolv/telegramgallery/o;)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$u;->a:Lcom/tangxiaolv/telegramgallery/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$u;->a:Lcom/tangxiaolv/telegramgallery/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tangxiaolv/telegramgallery/o;->w(Lcom/tangxiaolv/telegramgallery/o;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
