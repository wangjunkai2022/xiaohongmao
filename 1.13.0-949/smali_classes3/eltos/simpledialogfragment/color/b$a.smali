.class Leltos/simpledialogfragment/color/b$a;
.super Ljava/lang/Object;
.source "SimpleColorWheelDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/color/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/color/b;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/color/b;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/color/b$a;->a:Leltos/simpledialogfragment/color/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Leltos/simpledialogfragment/color/b$a;->a:Leltos/simpledialogfragment/color/b;

    invoke-static {v0}, Leltos/simpledialogfragment/color/b;->W0(Leltos/simpledialogfragment/color/b;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    rsub-int v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int p1, v1

    add-int/2addr v0, p1

    .line 3
    iget-object p1, p0, Leltos/simpledialogfragment/color/b$a;->a:Leltos/simpledialogfragment/color/b;

    invoke-static {p1}, Leltos/simpledialogfragment/color/b;->X0(Leltos/simpledialogfragment/color/b;)Leltos/simpledialogfragment/color/ColorWheelView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->g(IZ)V

    .line 4
    iget-object p1, p0, Leltos/simpledialogfragment/color/b$a;->a:Leltos/simpledialogfragment/color/b;

    invoke-static {p1}, Leltos/simpledialogfragment/color/b;->Y0(Leltos/simpledialogfragment/color/b;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
