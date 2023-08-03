.class public final Lcom/tangxiaolv/telegramgallery/ImageEditorActivity;
.super Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;
.source "ImageEditorActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/tangxiaolv/telegramgallery/ImageEditorActivity;",
        "Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;",
        "",
        "L0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "onBackPressed",
        "<init>",
        "()V",
        "telegramgallery_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;-><init>()V

    return-void
.end method

.method public static synthetic H0(Lcom/tangxiaolv/telegramgallery/ImageEditorActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/tangxiaolv/telegramgallery/ImageEditorActivity;->J0(Lcom/tangxiaolv/telegramgallery/ImageEditorActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic I0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tangxiaolv/telegramgallery/ImageEditorActivity;->K0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final J0(Lcom/tangxiaolv/telegramgallery/ImageEditorActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/ImageEditorActivity;->L0()V

    return-void
.end method

.method private static final K0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private final L0()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "cancel_edit"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 1
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->i:I

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p0}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/ImageEditorActivity;->L0()V

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->A:Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;->U()V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->z:Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/o;->U()V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->y:Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n;->U()V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->x:Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/paint/j;->U()V

    goto :goto_0

    .line 8
    :pswitch_4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->w:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->U()V

    goto :goto_0

    .line 9
    :pswitch_5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->v:Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->U()V

    goto :goto_0

    .line 10
    :pswitch_6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->u:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->U()V

    goto :goto_0

    .line 11
    :pswitch_7
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->t:Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/v;->U()V

    goto :goto_0

    .line 12
    :pswitch_8
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->s:Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    invoke-virtual {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->U()V

    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    sget v1, Lcom/tangxiaolv/telegramgallery/q$o;->N0:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 16
    sget v1, Lcom/tangxiaolv/telegramgallery/q$o;->I0:I

    new-instance v2, Lcom/tangxiaolv/telegramgallery/g;

    invoke-direct {v2, p0}, Lcom/tangxiaolv/telegramgallery/g;-><init>(Lcom/tangxiaolv/telegramgallery/ImageEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 17
    sget v1, Lcom/tangxiaolv/telegramgallery/q$o;->H0:I

    sget-object v2, Lcom/tangxiaolv/telegramgallery/h;->a:Lcom/tangxiaolv/telegramgallery/h;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    invoke-super {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
