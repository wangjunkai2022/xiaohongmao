.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog$b;
.super Ljava/lang/Object;
.source "PurchaseItemListFragmentDialog.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\t\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J*\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0012\u0010\r\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog$b",
        "Landroid/text/TextWatcher;",
        "",
        "s",
        "",
        "start",
        "count",
        "after",
        "",
        "beforeTextChanged",
        "before",
        "onTextChanged",
        "Landroid/text/Editable;",
        "afterTextChanged",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1    # Landroid/text/Editable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/PurchaseItemListFragmentDialog;->n0(Landroid/text/Editable;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method
