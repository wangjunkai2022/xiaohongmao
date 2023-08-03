.class Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$a;
.super Ljava/lang/Object;
.source "AddTextFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;


# direct methods
.method constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->d0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)Liamutkarshtiwari/github/io/ananas/editimage/view/TextStickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->e0(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)V

    return-void
.end method
