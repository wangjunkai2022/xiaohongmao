.class Leltos/simpledialogfragment/color/b$b;
.super Ljava/lang/Object;
.source "SimpleColorWheelDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/color/b;->M0(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Leltos/simpledialogfragment/color/b;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/color/b;I)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/color/b$b;->b:Leltos/simpledialogfragment/color/b;

    iput p2, p0, Leltos/simpledialogfragment/color/b$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Leltos/simpledialogfragment/color/b$b;->b:Leltos/simpledialogfragment/color/b;

    invoke-static {p1}, Leltos/simpledialogfragment/color/b;->X0(Leltos/simpledialogfragment/color/b;)Leltos/simpledialogfragment/color/ColorWheelView;

    move-result-object p1

    iget v0, p0, Leltos/simpledialogfragment/color/b$b;->a:I

    invoke-virtual {p1, v0}, Leltos/simpledialogfragment/color/ColorWheelView;->setColor(I)V

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/color/b$b;->b:Leltos/simpledialogfragment/color/b;

    invoke-static {p1}, Leltos/simpledialogfragment/color/b;->W0(Leltos/simpledialogfragment/color/b;)Landroid/widget/SeekBar;

    move-result-object p1

    iget v0, p0, Leltos/simpledialogfragment/color/b$b;->a:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    rsub-int v0, v0, 0xff

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
