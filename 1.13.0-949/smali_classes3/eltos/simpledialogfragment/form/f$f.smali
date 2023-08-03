.class Leltos/simpledialogfragment/form/f$f;
.super Ljava/lang/Object;
.source "InputViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/f;->f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/g$b;

.field final synthetic b:Leltos/simpledialogfragment/form/f;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/f;Leltos/simpledialogfragment/form/g$b;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/f$f;->b:Leltos/simpledialogfragment/form/f;

    iput-object p2, p0, Leltos/simpledialogfragment/form/f$f;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Leltos/simpledialogfragment/form/f$f;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/form/g$c;->b()V

    return-void
.end method
