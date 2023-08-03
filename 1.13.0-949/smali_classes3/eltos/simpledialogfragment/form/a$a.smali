.class Leltos/simpledialogfragment/form/a$a;
.super Ljava/lang/Object;
.source "CheckViewHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/a;->f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/g$b;

.field final synthetic b:Leltos/simpledialogfragment/form/a;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/a;Leltos/simpledialogfragment/form/g$b;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/a$a;->b:Leltos/simpledialogfragment/form/a;

    iput-object p2, p0, Leltos/simpledialogfragment/form/a$a;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Leltos/simpledialogfragment/form/a$a;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-virtual {p1}, Leltos/simpledialogfragment/form/g$b;->h()V

    return-void
.end method
