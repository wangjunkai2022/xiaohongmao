.class Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$a;
.super Ljava/lang/Object;
.source "SaturationView.java"

# interfaces
.implements Ln7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln7/g<",
        "Landroid/graphics/ColorMatrixColorFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;


# direct methods
.method constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/ColorMatrixColorFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$a;->a(Landroid/graphics/ColorMatrixColorFilter;)V

    return-void
.end method
