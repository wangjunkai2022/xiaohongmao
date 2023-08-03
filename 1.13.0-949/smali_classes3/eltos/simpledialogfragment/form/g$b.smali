.class public Leltos/simpledialogfragment/form/g$b;
.super Leltos/simpledialogfragment/form/g$c;
.source "SimpleFormDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/form/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private b:I

.field private c:I

.field final synthetic d:Leltos/simpledialogfragment/form/g;


# direct methods
.method private constructor <init>(Leltos/simpledialogfragment/form/g;II)V
    .locals 0

    .line 2
    iput-object p1, p0, Leltos/simpledialogfragment/form/g$b;->d:Leltos/simpledialogfragment/form/g;

    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/g$c;-><init>(Leltos/simpledialogfragment/form/g;)V

    .line 3
    iput p2, p0, Leltos/simpledialogfragment/form/g$b;->b:I

    .line 4
    iput p3, p0, Leltos/simpledialogfragment/form/g$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Leltos/simpledialogfragment/form/g;IILeltos/simpledialogfragment/form/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Leltos/simpledialogfragment/form/g$b;-><init>(Leltos/simpledialogfragment/form/g;II)V

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/g$b;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/form/g$b;->d:Leltos/simpledialogfragment/form/g;

    invoke-static {p1}, Leltos/simpledialogfragment/form/g;->Y0(Leltos/simpledialogfragment/form/g;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/form/g$b;->d:Leltos/simpledialogfragment/form/g;

    iget v0, p0, Leltos/simpledialogfragment/form/g$b;->b:I

    invoke-static {p1, v0}, Leltos/simpledialogfragment/form/g;->Z0(Leltos/simpledialogfragment/form/g;I)I

    move-result v0

    invoke-virtual {p1, v0}, Leltos/simpledialogfragment/form/g;->s1(I)V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/form/g$b;->d:Leltos/simpledialogfragment/form/g;

    iget v1, p0, Leltos/simpledialogfragment/form/g$b;->b:I

    invoke-static {v0, v1}, Leltos/simpledialogfragment/form/g;->X0(Leltos/simpledialogfragment/form/g;I)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/form/g$b;->d:Leltos/simpledialogfragment/form/g;

    iget v1, p0, Leltos/simpledialogfragment/form/g$b;->b:I

    invoke-static {v0, v1}, Leltos/simpledialogfragment/form/g;->W0(Leltos/simpledialogfragment/form/g;I)Z

    move-result v0

    return v0
.end method

.method public g(Leltos/simpledialogfragment/f;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Leltos/simpledialogfragment/form/g$b;->d:Leltos/simpledialogfragment/form/g;

    invoke-virtual {p1, v0, p2}, Leltos/simpledialogfragment/f;->y0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Leltos/simpledialogfragment/form/g$b;->d:Leltos/simpledialogfragment/form/g;

    invoke-virtual {v0}, Leltos/simpledialogfragment/form/g;->r1()Z

    move-result v1

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/b;->V0(Z)V

    return-void
.end method
