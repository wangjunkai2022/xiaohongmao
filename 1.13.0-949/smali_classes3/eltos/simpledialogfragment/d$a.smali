.class Leltos/simpledialogfragment/d$a;
.super Ljava/lang/Object;
.source "SimpleCheckDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/d;->M0(Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/d;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/d;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/d$a;->a:Leltos/simpledialogfragment/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Leltos/simpledialogfragment/d$a;->a:Leltos/simpledialogfragment/d;

    invoke-static {p1}, Leltos/simpledialogfragment/d;->W0(Leltos/simpledialogfragment/d;)Z

    move-result p2

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/b;->V0(Z)V

    return-void
.end method
