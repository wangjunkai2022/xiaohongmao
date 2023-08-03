.class Leltos/simpledialogfragment/form/c$a;
.super Ljava/lang/Object;
.source "DateTimeViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/c;->f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/g$b;

.field final synthetic b:Leltos/simpledialogfragment/form/c;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/c;Leltos/simpledialogfragment/form/g$b;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/c$a;->b:Leltos/simpledialogfragment/form/c;

    iput-object p2, p0, Leltos/simpledialogfragment/form/c$a;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Leltos/simpledialogfragment/form/c$a;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/form/g$c;->b()V

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/form/c$a;->b:Leltos/simpledialogfragment/form/c;

    invoke-static {p1}, Leltos/simpledialogfragment/form/c;->h(Leltos/simpledialogfragment/form/c;)V

    return-void
.end method
