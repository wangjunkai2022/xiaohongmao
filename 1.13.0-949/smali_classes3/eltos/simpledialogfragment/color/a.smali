.class public Leltos/simpledialogfragment/color/a;
.super Leltos/simpledialogfragment/list/c;
.source "SimpleColorDialog.java"

# interfaces
.implements Leltos/simpledialogfragment/f$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/color/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/list/c<",
        "Leltos/simpledialogfragment/color/a;",
        ">;",
        "Leltos/simpledialogfragment/f$c;"
    }
.end annotation


# static fields
.field private static final E2:Ljava/lang/String; = "SimpleColorDialog.selected"

.field private static final F2:Ljava/lang/String; = "SimpleColorDialog.outline"

.field public static final R:Ljava/lang/String; = "SimpleColorDialog.color"

.field public static final S:Ljava/lang/String; = "SimpleColorDialog.colors"

.field public static final T:I
    .annotation build Landroidx/annotation/ArrayRes;
    .end annotation
.end field

.field protected static final T1:Ljava/lang/String; = "SimpleColorDialog.picker"

.field public static final TAG:Ljava/lang/String; = "SimpleColorDialog."

.field public static final U:I
    .annotation build Landroidx/annotation/ArrayRes;
    .end annotation
.end field

.field public static final V:I
    .annotation build Landroidx/annotation/ArrayRes;
    .end annotation
.end field

.field protected static final V1:Ljava/lang/String; = "SimpleColorDialog.custom"

.field public static final W:I
    .annotation build Landroidx/annotation/ArrayRes;
    .end annotation
.end field

.field public static final b1:I
    .annotation build Landroidx/annotation/ArrayRes;
    .end annotation
.end field

.field protected static final b2:Ljava/lang/String; = "SimpleColorDialog.custom_alpha"

.field public static final g1:I = 0x0

.field protected static final g2:Ljava/lang/String; = "SimpleColorDialog.custom_hide_hex"

.field public static final p1:I = 0xffffff

.field protected static final p2:Ljava/lang/String; = "SimpleColorDialog.custom_title"

.field public static final x1:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field protected static final x2:Ljava/lang/String; = "SimpleColorDialog.custom_pos"

.field protected static final y1:I = 0xbada55

.field protected static final y2:Ljava/lang/String; = "SimpleColorDialog.custom_neut"


# instance fields
.field private P:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private Q:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Leltos/simpledialogfragment/c$c;->c:I

    sput v0, Leltos/simpledialogfragment/color/a;->T:I

    .line 2
    sget v0, Leltos/simpledialogfragment/c$c;->e:I

    sput v0, Leltos/simpledialogfragment/color/a;->U:I

    .line 3
    sget v0, Leltos/simpledialogfragment/c$c;->d:I

    sput v0, Leltos/simpledialogfragment/color/a;->V:I

    .line 4
    sget v0, Leltos/simpledialogfragment/c$c;->a:I

    sput v0, Leltos/simpledialogfragment/color/a;->W:I

    .line 5
    sget v0, Leltos/simpledialogfragment/c$c;->b:I

    sput v0, Leltos/simpledialogfragment/color/a;->b1:I

    const/16 v0, 0x13

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    sput-object v0, Leltos/simpledialogfragment/color/a;->x1:[I

    return-void

    :array_0
    .array-data 4
        -0xbbcca
        -0x16e19d
        -0x63d850
        -0x98c549
        -0xc0ae4b
        -0xde690d
        -0xfc560c
        -0xff432c
        -0xff6978
        -0xb350b0
        -0x743cb6
        -0x3223c7
        -0x14c5
        -0x3ef9
        -0x6800
        -0xa8de
        -0x86aab8
        -0x616162
        -0x9f8275
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/list/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Leltos/simpledialogfragment/color/a;->P:I

    .line 3
    iput v0, p0, Leltos/simpledialogfragment/color/a;->Q:I

    .line 4
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/c;->o1()Leltos/simpledialogfragment/list/c;

    .line 5
    sget v0, Leltos/simpledialogfragment/c$g;->J1:I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/c;->p1(I)Leltos/simpledialogfragment/list/c;

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/c;->f1(I)Leltos/simpledialogfragment/list/c;

    .line 7
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/c;->e1(I)Leltos/simpledialogfragment/list/c;

    .line 8
    sget-object v0, Leltos/simpledialogfragment/color/a;->x1:[I

    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/color/a;->C1([I)Leltos/simpledialogfragment/color/a;

    const-string v0, "SimpleColorDialog.custom_pos"

    const v1, 0x104000a

    .line 9
    invoke-virtual {p0, v0, v1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    return-void
.end method

.method private D1([II)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2
    aget v1, p1, v0

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic w1(Leltos/simpledialogfragment/color/a;)I
    .locals 0

    iget p0, p0, Leltos/simpledialogfragment/color/a;->P:I

    return p0
.end method

.method static synthetic x1(Leltos/simpledialogfragment/color/a;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static z1()Leltos/simpledialogfragment/color/a;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/color/a;

    invoke-direct {v0}, Leltos/simpledialogfragment/color/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public A1(I)Leltos/simpledialogfragment/color/a;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleColorDialog.color"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public B1(Landroid/content/Context;I)Leltos/simpledialogfragment/color/a;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/color/a;->C1([I)Leltos/simpledialogfragment/color/a;

    move-result-object p1

    return-object p1
.end method

.method public C1([I)Leltos/simpledialogfragment/color/a;
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleColorDialog.colors"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public E1(Z)Leltos/simpledialogfragment/color/a;
    .locals 1

    const-string v0, "SimpleColorDialog.custom_alpha"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/a;

    return-object p1
.end method

.method public F1(Z)Leltos/simpledialogfragment/color/a;
    .locals 1

    const-string v0, "SimpleColorDialog.custom_hide_hex"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/a;

    return-object p1
.end method

.method public G1(Ljava/lang/String;)Leltos/simpledialogfragment/color/a;
    .locals 1

    const-string v0, "SimpleColorDialog.custom_neut"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/a;

    return-object p1
.end method

.method protected H0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CustomListDialogchoiceMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    .line 2
    iget v0, p0, Leltos/simpledialogfragment/color/a;->Q:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public H1(Ljava/lang/String;)Leltos/simpledialogfragment/color/a;
    .locals 1

    const-string v0, "SimpleColorDialog.custom_pos"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/a;

    return-object p1
.end method

.method public I1(Ljava/lang/String;)Leltos/simpledialogfragment/color/a;
    .locals 1

    const-string v0, "SimpleColorDialog.custom_title"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->v0(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/a;

    return-object p1
.end method

.method public J1(I)Leltos/simpledialogfragment/color/a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const-string v0, "SimpleColorDialog.outline"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/a;

    return-object p1
.end method

.method public R(Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SimpleColorDialog.picker"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "SimpleColorWheelDialog.color"

    .line 2
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Leltos/simpledialogfragment/color/a;->P:I

    iput p1, p0, Leltos/simpledialogfragment/color/a;->Q:I

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/c;->r1()V

    .line 4
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "CustomListDialogchoiceMode"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    .line 5
    invoke-virtual {p0}, Leltos/simpledialogfragment/b;->S0()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected R0(I)Landroid/os/Bundle;
    .locals 8

    .line 1
    invoke-super {p0, p1}, Leltos/simpledialogfragment/list/c;->R0(I)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CustomListDialogselectedSingleId"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "SimpleColorDialog.color"

    const v2, 0xbada55

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, Leltos/simpledialogfragment/color/a;->P:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    const-string v0, "CustomListDialogselectedIds"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 7
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 8
    aget-wide v3, v0, v2

    const-wide/32 v5, 0xbada55

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 9
    iget v3, p0, Leltos/simpledialogfragment/color/a;->P:I

    aput v3, v1, v2

    goto :goto_2

    .line 10
    :cond_1
    aget-wide v3, v0, v2

    long-to-int v4, v3

    aput v4, v1, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "SimpleColorDialog.colors"

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_3
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Leltos/simpledialogfragment/b;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Leltos/simpledialogfragment/color/a;->P:I

    const-string v1, "SimpleColorDialog.custom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Leltos/simpledialogfragment/color/a;->P:I

    const-string v1, "SimpleColorDialog.selected"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Leltos/simpledialogfragment/color/a;->Q:I

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    const-wide/32 p1, 0xbada55

    cmp-long p3, p4, p1

    if-nez p3, :cond_2

    .line 1
    invoke-static {}, Leltos/simpledialogfragment/color/b;->c1()Leltos/simpledialogfragment/color/b;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result p2

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/f;->E0(I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/b;

    const-string p2, "SimpleColorDialog.custom_title"

    .line 3
    invoke-virtual {p0, p2}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/f;->G0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/b;

    const-string p2, "SimpleColorDialog.custom_pos"

    .line 4
    invoke-virtual {p0, p2}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/f;->s0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/b;

    const-string p2, "SimpleColorDialog.custom_neut"

    .line 5
    invoke-virtual {p0, p2}, Leltos/simpledialogfragment/f;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/f;->q0(Ljava/lang/String;)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/b;

    .line 6
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "SimpleColorDialog.custom_alpha"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/color/b;->b1(Z)Leltos/simpledialogfragment/color/b;

    move-result-object p1

    .line 7
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "SimpleColorDialog.custom_hide_hex"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/color/b;->e1(Z)Leltos/simpledialogfragment/color/b;

    move-result-object p1

    .line 8
    iget p2, p0, Leltos/simpledialogfragment/color/a;->P:I

    if-eqz p2, :cond_0

    .line 9
    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/color/b;->d1(I)Leltos/simpledialogfragment/color/b;

    goto :goto_0

    .line 10
    :cond_0
    iget p2, p0, Leltos/simpledialogfragment/color/a;->Q:I

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p1, p2}, Leltos/simpledialogfragment/color/b;->d1(I)Leltos/simpledialogfragment/color/b;

    .line 12
    iget p2, p0, Leltos/simpledialogfragment/color/a;->Q:I

    iput p2, p0, Leltos/simpledialogfragment/color/a;->P:I

    :cond_1
    :goto_0
    const-string p2, "SimpleColorDialog.picker"

    .line 13
    invoke-virtual {p1, p0, p2}, Leltos/simpledialogfragment/f;->y0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Leltos/simpledialogfragment/color/a;->Q:I

    goto :goto_1

    :cond_2
    long-to-int p1, p4

    .line 15
    iput p1, p0, Leltos/simpledialogfragment/color/a;->Q:I

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Leltos/simpledialogfragment/color/a;->P:I

    const-string v1, "SimpleColorDialog.custom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget v0, p0, Leltos/simpledialogfragment/color/a;->Q:I

    const-string v1, "SimpleColorDialog.selected"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    invoke-super {p0, p1}, Leltos/simpledialogfragment/list/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected s1()Leltos/simpledialogfragment/list/a;
    .locals 5

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SimpleColorDialog.colors"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 2
    :cond_0
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "SimpleColorDialog.custom"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3
    iget v3, p0, Leltos/simpledialogfragment/color/a;->Q:I

    if-nez v3, :cond_2

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "SimpleColorDialog.color"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 5
    invoke-direct {p0, v0, v3}, Leltos/simpledialogfragment/color/a;->D1([II)I

    move-result v4

    if-gez v4, :cond_1

    .line 6
    iput v3, p0, Leltos/simpledialogfragment/color/a;->P:I

    iput v3, p0, Leltos/simpledialogfragment/color/a;->Q:I

    if-eqz v2, :cond_2

    .line 7
    array-length v3, v0

    invoke-virtual {p0, v3}, Leltos/simpledialogfragment/list/c;->g1(I)Leltos/simpledialogfragment/list/c;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v4}, Leltos/simpledialogfragment/list/c;->g1(I)Leltos/simpledialogfragment/list/c;

    .line 9
    iput v3, p0, Leltos/simpledialogfragment/color/a;->Q:I

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/c;->n1()Landroid/widget/AbsListView;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 11
    new-instance v1, Leltos/simpledialogfragment/color/a$a;

    invoke-direct {v1, p0, v0, v2}, Leltos/simpledialogfragment/color/a$a;-><init>(Leltos/simpledialogfragment/color/a;[IZ)V

    return-object v1
.end method

.method public y1(Z)Leltos/simpledialogfragment/color/a;
    .locals 1

    const-string v0, "SimpleColorDialog.custom"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/a;

    return-object p1
.end method
