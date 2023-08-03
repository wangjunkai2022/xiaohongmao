.class public Leltos/simpledialogfragment/SimpleImageDialog;
.super Leltos/simpledialogfragment/b;
.source "SimpleImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/SimpleImageDialog$e;,
        Leltos/simpledialogfragment/SimpleImageDialog$Scale;,
        Leltos/simpledialogfragment/SimpleImageDialog$d;,
        Leltos/simpledialogfragment/SimpleImageDialog$c;,
        Leltos/simpledialogfragment/SimpleImageDialog$a;,
        Leltos/simpledialogfragment/SimpleImageDialog$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/b<",
        "Leltos/simpledialogfragment/SimpleImageDialog;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleImageDialog."

.field protected static final s:Ljava/lang/String; = "SimpleImageDialog.drawableRes"

.field protected static final t:Ljava/lang/String; = "SimpleImageDialog.bitmap"

.field protected static final u:Ljava/lang/String; = "SimpleImageDialog.uri"

.field protected static final v:Ljava/lang/String; = "SimpleImageDialog.scale"

.field private static final w:Ljava/lang/String; = "SimpleImageDialog.creatorClass"


# instance fields
.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Leltos/simpledialogfragment/SimpleImageDialog;->r:Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/f;->s0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    return-void
.end method

.method public static W0()Leltos/simpledialogfragment/SimpleImageDialog;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/SimpleImageDialog;

    invoke-direct {v0}, Leltos/simpledialogfragment/SimpleImageDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic E0(I)Leltos/simpledialogfragment/f;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/SimpleImageDialog;->c1(I)Leltos/simpledialogfragment/SimpleImageDialog;

    move-result-object p1

    return-object p1
.end method

.method protected M0(Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->FIT:Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    iget v1, v0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->a:I

    const-string v2, "SimpleImageDialog.scale"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 2
    iget v0, v0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->a:I

    if-ne p1, v0, :cond_0

    .line 3
    sget p1, Leltos/simpledialogfragment/c$l;->T0:I

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->SCROLL_VERTICAL:Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    iget v0, v0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->a:I

    if-ne p1, v0, :cond_1

    .line 5
    sget p1, Leltos/simpledialogfragment/c$l;->V0:I

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->SCROLL_HORIZONTAL:Leltos/simpledialogfragment/SimpleImageDialog$Scale;

    iget v0, v0, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->a:I

    if-ne p1, v0, :cond_6

    .line 7
    sget p1, Leltos/simpledialogfragment/c$l;->U0:I

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object p1

    .line 8
    :goto_0
    sget v0, Leltos/simpledialogfragment/c$i;->h2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 9
    sget v1, Leltos/simpledialogfragment/c$i;->G3:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 10
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SimpleImageDialog.uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SimpleImageDialog.drawableRes"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SimpleImageDialog.creatorClass"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimpleImageDialog."

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v3, Leltos/simpledialogfragment/SimpleImageDialog$e;

    invoke-direct {v3, v0, v1}, Leltos/simpledialogfragment/SimpleImageDialog$e;-><init>(Landroid/widget/ImageView;Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SimpleImageDialog.bitmap"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_1
    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public X0(I)Leltos/simpledialogfragment/SimpleImageDialog;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const-string v0, "SimpleImageDialog.drawableRes"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/SimpleImageDialog;

    return-object p1
.end method

.method public Y0(Landroid/graphics/Bitmap;)Leltos/simpledialogfragment/SimpleImageDialog;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleImageDialog.bitmap"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public Z0(Landroid/net/Uri;)Leltos/simpledialogfragment/SimpleImageDialog;
    .locals 2

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleImageDialog.uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public a1(Ljava/lang/Class;)Leltos/simpledialogfragment/SimpleImageDialog;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Leltos/simpledialogfragment/SimpleImageDialog$b;",
            ">;)",
            "Leltos/simpledialogfragment/SimpleImageDialog;"
        }
    .end annotation

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleImageDialog.creatorClass"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public b1(Leltos/simpledialogfragment/SimpleImageDialog$Scale;)Leltos/simpledialogfragment/SimpleImageDialog;
    .locals 1

    iget p1, p1, Leltos/simpledialogfragment/SimpleImageDialog$Scale;->a:I

    const-string v0, "SimpleImageDialog.scale"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/SimpleImageDialog;

    return-object p1
.end method

.method public c1(I)Leltos/simpledialogfragment/SimpleImageDialog;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Leltos/simpledialogfragment/SimpleImageDialog;->r:Z

    .line 2
    invoke-super {p0, p1}, Leltos/simpledialogfragment/f;->E0(I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/SimpleImageDialog;

    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Leltos/simpledialogfragment/SimpleImageDialog;->r:Z

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Leltos/simpledialogfragment/c$d;->A6:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    iget v1, v0, Landroid/util/TypedValue;->type:I

    if-ne v1, v3, :cond_0

    .line 5
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/SimpleImageDialog;->c1(I)Leltos/simpledialogfragment/SimpleImageDialog;

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Leltos/simpledialogfragment/c$o;->u3:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/SimpleImageDialog;->c1(I)Leltos/simpledialogfragment/SimpleImageDialog;

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Leltos/simpledialogfragment/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
