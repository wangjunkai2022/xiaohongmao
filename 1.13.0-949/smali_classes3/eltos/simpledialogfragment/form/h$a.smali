.class Leltos/simpledialogfragment/form/h$a;
.super Ljava/lang/Object;
.source "SpinnerViewHolder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/h;->f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/g$b;

.field final synthetic b:Leltos/simpledialogfragment/form/h;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/h;Leltos/simpledialogfragment/form/g$b;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/h$a;->b:Leltos/simpledialogfragment/form/h;

    iput-object p2, p0, Leltos/simpledialogfragment/form/h$a;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Leltos/simpledialogfragment/form/h$a;->a:Leltos/simpledialogfragment/form/g$b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/form/g$b;->d(Z)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
