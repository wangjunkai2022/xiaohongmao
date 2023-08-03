.class Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$b;
.super Ljava/lang/Object;
.source "SaturationView.java"

# interfaces
.implements Ln7/o;


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
        "Ln7/o<",
        "Ljava/lang/Float;",
        "Lio/reactivex/e0<",
        "Landroid/graphics/ColorMatrixColorFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;


# direct methods
.method constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;)Lio/reactivex/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            ")",
            "Lio/reactivex/e0<",
            "Landroid/graphics/ColorMatrixColorFilter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;->a(Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView;F)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/SaturationView$b;->a(Ljava/lang/Float;)Lio/reactivex/e0;

    move-result-object p1

    return-object p1
.end method
