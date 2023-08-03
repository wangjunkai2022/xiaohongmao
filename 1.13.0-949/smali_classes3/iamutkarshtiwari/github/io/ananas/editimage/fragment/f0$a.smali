.class Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0$a;
.super Ljava/lang/Object;
.source "SaturationFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;


# direct methods
.method constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    int-to-float p1, p2

    .line 2
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/f0;

    iget-object p2, p2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/h;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget-object p2, p2, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->p:Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;

    const/high16 p3, 0x41200000    # 10.0f

    div-float/2addr p1, p3

    invoke-virtual {p2, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->setSaturation(F)V

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
