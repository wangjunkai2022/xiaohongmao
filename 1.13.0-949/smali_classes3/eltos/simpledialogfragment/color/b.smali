.class public Leltos/simpledialogfragment/color/b;
.super Leltos/simpledialogfragment/b;
.source "SimpleColorWheelDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/b<",
        "Leltos/simpledialogfragment/color/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "SimpleColorWheelDialog.noHex"

.field public static final TAG:Ljava/lang/String; = "SimpleColorWheelDialog."

.field public static final y:Ljava/lang/String; = "SimpleColorWheelDialog.color"

.field protected static final z:Ljava/lang/String; = "SimpleColorWheelDialog.alpha"


# instance fields
.field private r:Leltos/simpledialogfragment/color/ColorWheelView;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/SeekBar;

.field private w:Landroid/view/View;

.field private final x:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Leltos/simpledialogfragment/b;-><init>()V

    .line 2
    new-instance v0, Leltos/simpledialogfragment/color/b$a;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/color/b$a;-><init>(Leltos/simpledialogfragment/color/b;)V

    iput-object v0, p0, Leltos/simpledialogfragment/color/b;->x:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic W0(Leltos/simpledialogfragment/color/b;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/color/b;->v:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic X0(Leltos/simpledialogfragment/color/b;)Leltos/simpledialogfragment/color/ColorWheelView;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/color/b;->r:Leltos/simpledialogfragment/color/ColorWheelView;

    return-object p0
.end method

.method static synthetic Y0(Leltos/simpledialogfragment/color/b;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/color/b;->t:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic Z0(Leltos/simpledialogfragment/color/b;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/color/b;->x:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic a1(Leltos/simpledialogfragment/color/b;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/color/b;->s:Landroid/widget/EditText;

    return-object p0
.end method

.method public static c1()Leltos/simpledialogfragment/color/b;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/color/b;

    invoke-direct {v0}, Leltos/simpledialogfragment/color/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected M0(Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 1
    sget p1, Leltos/simpledialogfragment/c$l;->J0:I

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/b;->K0(I)Landroid/view/View;

    move-result-object p1

    .line 2
    sget v0, Leltos/simpledialogfragment/c$i;->S0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Leltos/simpledialogfragment/color/ColorWheelView;

    iput-object v0, p0, Leltos/simpledialogfragment/color/b;->r:Leltos/simpledialogfragment/color/ColorWheelView;

    .line 3
    sget v0, Leltos/simpledialogfragment/c$i;->z5:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/color/b;->w:Landroid/view/View;

    .line 4
    sget v0, Leltos/simpledialogfragment/c$i;->m0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Leltos/simpledialogfragment/color/b;->v:Landroid/widget/SeekBar;

    .line 5
    sget v0, Leltos/simpledialogfragment/c$i;->Y1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Leltos/simpledialogfragment/color/b;->s:Landroid/widget/EditText;

    .line 6
    sget v0, Leltos/simpledialogfragment/c$i;->Q0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Leltos/simpledialogfragment/color/b;->t:Landroid/widget/ImageView;

    .line 7
    sget v0, Leltos/simpledialogfragment/c$i;->R0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Leltos/simpledialogfragment/color/b;->u:Landroid/widget/ImageView;

    .line 8
    sget v0, Leltos/simpledialogfragment/c$i;->a2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    sget v2, Leltos/simpledialogfragment/color/ColorWheelView;->i:I

    const-string v3, "SimpleColorWheelDialog.color"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 10
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 11
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "SimpleColorWheelDialog.alpha"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/high16 v4, -0x1000000

    or-int/2addr v1, v4

    or-int/2addr v2, v4

    .line 12
    :cond_0
    iget-object v4, p0, Leltos/simpledialogfragment/color/b;->r:Leltos/simpledialogfragment/color/ColorWheelView;

    invoke-virtual {v4, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->setColor(I)V

    .line 13
    iget-object v4, p0, Leltos/simpledialogfragment/color/b;->t:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v4, p0, Leltos/simpledialogfragment/color/b;->v:Landroid/widget/SeekBar;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 15
    iget-object v4, p0, Leltos/simpledialogfragment/color/b;->v:Landroid/widget/SeekBar;

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 16
    iget-object v4, p0, Leltos/simpledialogfragment/color/b;->s:Landroid/widget/EditText;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0xffffff

    and-int/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const-string v1, "%06X"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "SimpleColorWheelDialog.noHex"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Leltos/simpledialogfragment/color/b;->u:Landroid/widget/ImageView;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Leltos/simpledialogfragment/color/b;->u:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v0, p0, Leltos/simpledialogfragment/color/b;->u:Landroid/widget/ImageView;

    new-instance v1, Leltos/simpledialogfragment/color/b$b;

    invoke-direct {v1, p0, v2}, Leltos/simpledialogfragment/color/b$b;-><init>(Leltos/simpledialogfragment/color/b;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Leltos/simpledialogfragment/color/b;->s:Landroid/widget/EditText;

    iget-object v1, p0, Leltos/simpledialogfragment/color/b;->x:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 22
    iget-object v0, p0, Leltos/simpledialogfragment/color/b;->r:Leltos/simpledialogfragment/color/ColorWheelView;

    new-instance v1, Leltos/simpledialogfragment/color/b$c;

    invoke-direct {v1, p0}, Leltos/simpledialogfragment/color/b$c;-><init>(Leltos/simpledialogfragment/color/b;)V

    invoke-virtual {v0, v1}, Leltos/simpledialogfragment/color/ColorWheelView;->setOnColorChangeListener(Leltos/simpledialogfragment/color/ColorWheelView$c;)V

    .line 23
    iget-object v0, p0, Leltos/simpledialogfragment/color/b;->w:Landroid/view/View;

    invoke-virtual {p0}, Leltos/simpledialogfragment/f;->Z()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Leltos/simpledialogfragment/color/b;->v:Landroid/widget/SeekBar;

    new-instance v1, Leltos/simpledialogfragment/color/b$d;

    invoke-direct {v1, p0}, Leltos/simpledialogfragment/color/b$d;-><init>(Leltos/simpledialogfragment/color/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-object p1
.end method

.method protected R0(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/color/b;->r:Leltos/simpledialogfragment/color/ColorWheelView;

    invoke-virtual {v0}, Leltos/simpledialogfragment/color/ColorWheelView;->getColor()I

    move-result v0

    const-string v1, "SimpleColorWheelDialog.color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public b1(Z)Leltos/simpledialogfragment/color/b;
    .locals 1

    const-string v0, "SimpleColorWheelDialog.alpha"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/b;

    return-object p1
.end method

.method public d1(I)Leltos/simpledialogfragment/color/b;
    .locals 1

    const-string v0, "SimpleColorWheelDialog.color"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->t0(Ljava/lang/String;I)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/b;

    return-object p1
.end method

.method public e1(Z)Leltos/simpledialogfragment/color/b;
    .locals 1

    const-string v0, "SimpleColorWheelDialog.noHex"

    invoke-virtual {p0, v0, p1}, Leltos/simpledialogfragment/f;->w0(Ljava/lang/String;Z)Leltos/simpledialogfragment/f;

    move-result-object p1

    check-cast p1, Leltos/simpledialogfragment/color/b;

    return-object p1
.end method
