.class final Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;


# direct methods
.method private constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->c0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->e0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;Landroid/widget/TextView;Z)V

    .line 2
    check-cast p1, Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->e0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;Landroid/widget/TextView;Z)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-static {v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->d0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    .line 6
    sget-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->FREE:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    if-ne p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->f0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)Lcom/theartofdev/edmodo/cropper/CropImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/theartofdev/edmodo/cropper/CropImageView;->setFixedAspectRatio(Z)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->FIT_IMAGE:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->g0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    move-result-object p1

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->h0()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->f0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)Lcom/theartofdev/edmodo/cropper/CropImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->F(II)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/RatioText;->getAspectRatio()Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;

    move-result-object p1

    .line 12
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g$c;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;->f0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/g;)Lcom/theartofdev/edmodo/cropper/CropImageView;

    move-result-object v0

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;->e()I

    move-result v1

    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/crop/a;->f()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/theartofdev/edmodo/cropper/CropImageView;->F(II)V

    :goto_0
    return-void
.end method
