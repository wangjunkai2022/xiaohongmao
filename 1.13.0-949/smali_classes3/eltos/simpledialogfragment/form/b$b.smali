.class Leltos/simpledialogfragment/form/b$b;
.super Ljava/lang/Object;
.source "ColorViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/b;->f(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Leltos/simpledialogfragment/form/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/g$b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Leltos/simpledialogfragment/form/b;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/b;Leltos/simpledialogfragment/form/g$b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/b$b;->c:Leltos/simpledialogfragment/form/b;

    iput-object p2, p0, Leltos/simpledialogfragment/form/b$b;->a:Leltos/simpledialogfragment/form/g$b;

    iput-object p3, p0, Leltos/simpledialogfragment/form/b$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Leltos/simpledialogfragment/form/b$b;->a:Leltos/simpledialogfragment/form/g$b;

    invoke-static {}, Leltos/simpledialogfragment/color/a;->z1()Leltos/simpledialogfragment/color/a;

    move-result-object v0

    iget-object v1, p0, Leltos/simpledialogfragment/form/b$b;->c:Leltos/simpledialogfragment/form/b;

    iget-object v1, v1, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/ColorField;

    iget-object v2, p0, Leltos/simpledialogfragment/form/b$b;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v1, v2}, Leltos/simpledialogfragment/form/FormElement;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/f;->G0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/color/a;

    iget-object v1, p0, Leltos/simpledialogfragment/form/b$b;->c:Leltos/simpledialogfragment/form/b;

    iget-object v1, v1, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/ColorField;

    iget-object v1, v1, Leltos/simpledialogfragment/form/ColorField;->colors:[I

    .line 3
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/color/a;->C1([I)Leltos/simpledialogfragment/color/a;

    move-result-object v0

    iget-object v1, p0, Leltos/simpledialogfragment/form/b$b;->c:Leltos/simpledialogfragment/form/b;

    iget-object v1, v1, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v1, Leltos/simpledialogfragment/form/ColorField;

    iget-boolean v1, v1, Leltos/simpledialogfragment/form/ColorField;->allowCustom:Z

    .line 4
    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/color/a;->y1(Z)Leltos/simpledialogfragment/color/a;

    move-result-object v0

    iget-object v1, p0, Leltos/simpledialogfragment/form/b$b;->c:Leltos/simpledialogfragment/form/b;

    .line 5
    invoke-static {v1}, Leltos/simpledialogfragment/form/b;->h(Leltos/simpledialogfragment/form/b;)Leltos/simpledialogfragment/color/ColorView;

    move-result-object v1

    invoke-virtual {v1}, Leltos/simpledialogfragment/color/ColorView;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/color/a;->A1(I)Leltos/simpledialogfragment/color/a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Leltos/simpledialogfragment/f;->o0()Leltos/simpledialogfragment/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorPickerDialogTag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Leltos/simpledialogfragment/form/b$b;->c:Leltos/simpledialogfragment/form/b;

    iget-object v2, v2, Leltos/simpledialogfragment/form/d;->a:Leltos/simpledialogfragment/form/FormElement;

    check-cast v2, Leltos/simpledialogfragment/form/ColorField;

    iget-object v2, v2, Leltos/simpledialogfragment/form/FormElement;->resultKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v0, v1}, Leltos/simpledialogfragment/form/g$b;->g(Leltos/simpledialogfragment/f;Ljava/lang/String;)V

    return-void
.end method
