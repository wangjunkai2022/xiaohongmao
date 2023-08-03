.class Lcom/qennnsad/aknkaksd/util/dialog/d$a;
.super Ljava/lang/Object;
.source "MenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/dialog/d;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/util/dialog/d;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/util/dialog/d;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d$a;->a:Lcom/qennnsad/aknkaksd/util/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/dialog/d$a;->a:Lcom/qennnsad/aknkaksd/util/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
