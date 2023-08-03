.class Leltos/simpledialogfragment/color/b$d;
.super Ljava/lang/Object;
.source "SimpleColorWheelDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Leltos/simpledialogfragment/color/b$d;->a:Leltos/simpledialogfragment/color/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Leltos/simpledialogfragment/color/b$d;->a:Leltos/simpledialogfragment/color/b;

    invoke-static {p1}, Leltos/simpledialogfragment/color/b;->X0(Leltos/simpledialogfragment/color/b;)Leltos/simpledialogfragment/color/ColorWheelView;

    move-result-object p1

    rsub-int p2, p2, 0xff

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/color/ColorWheelView;->i(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
