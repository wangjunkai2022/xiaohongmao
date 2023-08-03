.class Leltos/simpledialogfragment/input/c$a;
.super Ljava/lang/Object;
.source "SimplePinDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/input/c;->M0(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/input/c;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/input/c;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/input/c$a;->a:Leltos/simpledialogfragment/input/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Leltos/simpledialogfragment/input/c$a;->a:Leltos/simpledialogfragment/input/c;

    invoke-virtual {p1}, Leltos/simpledialogfragment/input/c;->f1()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/input/c$a;->a:Leltos/simpledialogfragment/input/c;

    invoke-static {p1}, Leltos/simpledialogfragment/input/c;->W0(Leltos/simpledialogfragment/input/c;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
