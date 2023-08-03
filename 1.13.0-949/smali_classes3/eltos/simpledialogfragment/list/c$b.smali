.class Leltos/simpledialogfragment/list/c$b;
.super Ljava/lang/Object;
.source "CustomListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/list/c;->M0(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/list/c;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/list/c;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/list/c$b;->a:Leltos/simpledialogfragment/list/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/c$b;->a:Leltos/simpledialogfragment/list/c;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Leltos/simpledialogfragment/list/c;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/list/c$b;->a:Leltos/simpledialogfragment/list/c;

    invoke-static {p1}, Leltos/simpledialogfragment/list/c;->W0(Leltos/simpledialogfragment/list/c;)Leltos/simpledialogfragment/list/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Leltos/simpledialogfragment/list/a;->A(I)V

    .line 3
    iget-object p1, p0, Leltos/simpledialogfragment/list/c$b;->a:Leltos/simpledialogfragment/list/c;

    invoke-static {p1}, Leltos/simpledialogfragment/list/c;->W0(Leltos/simpledialogfragment/list/c;)Leltos/simpledialogfragment/list/a;

    move-result-object p1

    invoke-virtual {p1}, Leltos/simpledialogfragment/list/a;->notifyDataSetChanged()V

    .line 4
    iget-object p1, p0, Leltos/simpledialogfragment/list/c$b;->a:Leltos/simpledialogfragment/list/c;

    invoke-static {p1}, Leltos/simpledialogfragment/list/c;->X0(Leltos/simpledialogfragment/list/c;)V

    .line 5
    iget-object p1, p0, Leltos/simpledialogfragment/list/c$b;->a:Leltos/simpledialogfragment/list/c;

    invoke-static {p1}, Leltos/simpledialogfragment/list/c;->W0(Leltos/simpledialogfragment/list/c;)Leltos/simpledialogfragment/list/a;

    move-result-object p1

    invoke-virtual {p1}, Leltos/simpledialogfragment/list/a;->f()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Leltos/simpledialogfragment/list/c$b;->a:Leltos/simpledialogfragment/list/c;

    .line 6
    invoke-static {p1}, Leltos/simpledialogfragment/list/c;->Y0(Leltos/simpledialogfragment/list/c;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "CustomListDialogchoiceMode"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    .line 7
    iget-object p1, p0, Leltos/simpledialogfragment/list/c$b;->a:Leltos/simpledialogfragment/list/c;

    invoke-static {p1}, Leltos/simpledialogfragment/list/c;->Z0(Leltos/simpledialogfragment/list/c;)V

    :cond_0
    return-void
.end method
