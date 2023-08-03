.class Leltos/simpledialogfragment/input/b$a;
.super Ljava/lang/Object;
.source "SimpleInputDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/input/b;->M0(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/input/b;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/input/b;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/input/b$a;->a:Leltos/simpledialogfragment/input/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Leltos/simpledialogfragment/input/b$a;->a:Leltos/simpledialogfragment/input/b;

    invoke-static {p1}, Leltos/simpledialogfragment/input/b;->W0(Leltos/simpledialogfragment/input/b;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
