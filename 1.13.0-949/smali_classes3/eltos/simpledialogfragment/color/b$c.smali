.class Leltos/simpledialogfragment/color/b$c;
.super Ljava/lang/Object;
.source "SimpleColorWheelDialog.java"

# interfaces
.implements Leltos/simpledialogfragment/color/ColorWheelView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/color/b;->M0(Landroid/os/Bundle;)Landroid/view/View;
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

    iput-object p1, p0, Leltos/simpledialogfragment/color/b$c;->a:Leltos/simpledialogfragment/color/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/color/b$c;->a:Leltos/simpledialogfragment/color/b;

    invoke-static {v0}, Leltos/simpledialogfragment/color/b;->a1(Leltos/simpledialogfragment/color/b;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Leltos/simpledialogfragment/color/b$c;->a:Leltos/simpledialogfragment/color/b;

    invoke-static {v1}, Leltos/simpledialogfragment/color/b;->Z0(Leltos/simpledialogfragment/color/b;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/color/b$c;->a:Leltos/simpledialogfragment/color/b;

    invoke-static {v0}, Leltos/simpledialogfragment/color/b;->a1(Leltos/simpledialogfragment/color/b;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0xffffff

    and-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%06X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Leltos/simpledialogfragment/color/b$c;->a:Leltos/simpledialogfragment/color/b;

    invoke-static {v0}, Leltos/simpledialogfragment/color/b;->a1(Leltos/simpledialogfragment/color/b;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Leltos/simpledialogfragment/color/b$c;->a:Leltos/simpledialogfragment/color/b;

    invoke-static {v1}, Leltos/simpledialogfragment/color/b;->Z0(Leltos/simpledialogfragment/color/b;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object v0, p0, Leltos/simpledialogfragment/color/b$c;->a:Leltos/simpledialogfragment/color/b;

    invoke-static {v0}, Leltos/simpledialogfragment/color/b;->Y0(Leltos/simpledialogfragment/color/b;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
