.class public Liamutkarshtiwari/github/io/ananas/editimage/ui/a;
.super Landroid/app/Dialog;
.source "ColorPicker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final p:Ljava/lang/String; = "#%02x%02x%02x"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/app/Dialog;

.field c:Landroid/view/View;

.field d:Landroid/widget/SeekBar;

.field e:Landroid/widget/SeekBar;

.field f:Landroid/widget/SeekBar;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/EditText;

.field private k:I

.field private l:I

.field private m:I

.field n:I

.field o:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->a:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    .line 4
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    .line 5
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;III)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->a:Landroid/app/Activity;

    const/16 p1, 0xff

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    if-gt p2, p1, :cond_0

    .line 8
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    goto :goto_0

    .line 9
    :cond_0
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    :goto_0
    if-ltz p2, :cond_1

    if-gt p2, p1, :cond_1

    .line 10
    iput p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    goto :goto_1

    .line 11
    :cond_1
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    :goto_1
    if-ltz p2, :cond_2

    if-gt p2, p1, :cond_2

    .line 12
    iput p4, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    goto :goto_2

    .line 13
    :cond_2
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    :goto_2
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "-?[0-9a-fA-F]+"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int p1, v0

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 3
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 4
    iput v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    shr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    .line 5
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    .line 6
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->c:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->d:Landroid/widget/SeekBar;

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 8
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->e:Landroid/widget/SeekBar;

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 9
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->f:Landroid/widget/SeekBar;

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->j:Landroid/widget/EditText;

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lf7/b$o;->q1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    return v0
.end method

.method public b()I
    .locals 3

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    sget v0, Lf7/b$l;->C0:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget v0, Lf7/b$i;->K1:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->c:Landroid/view/View;

    .line 5
    sget v0, Lf7/b$i;->m6:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->d:Landroid/widget/SeekBar;

    .line 6
    sget v0, Lf7/b$i;->v3:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->e:Landroid/widget/SeekBar;

    .line 7
    sget v0, Lf7/b$i;->U0:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->f:Landroid/widget/SeekBar;

    .line 8
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->n:I

    .line 9
    sget v0, Lf7/b$i;->n6:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->g:Landroid/widget/TextView;

    .line 10
    sget v0, Lf7/b$i;->w3:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->h:Landroid/widget/TextView;

    .line 11
    sget v0, Lf7/b$i;->V0:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->i:Landroid/widget/TextView;

    .line 12
    sget v0, Lf7/b$i;->G1:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->j:Landroid/widget/EditText;

    .line 13
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 14
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 15
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->f:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 16
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->d:Landroid/widget/SeekBar;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 17
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->e:Landroid/widget/SeekBar;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 18
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->f:Landroid/widget/SeekBar;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 19
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->c:Landroid/view/View;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    iget v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->j:Landroid/widget/EditText;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "#%02x%02x%02x"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->j:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    sget v0, Lf7/b$i;->m6:I

    const-string v1, " "

    const-string v2, ""

    const-string v3, "  "

    const/16 v4, 0x64

    const/16 v5, 0xa

    if-ne p3, v0, :cond_2

    .line 2
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    .line 3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->o:Landroid/graphics/Rect;

    .line 4
    iget-object p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->g:Landroid/widget/TextView;

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->n:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setX(F)V

    if-ge p2, v5, :cond_0

    .line 5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->g:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    if-ge p2, v4, :cond_1

    .line 6
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->g:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->g:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    sget v0, Lf7/b$i;->v3:I

    if-ne p3, v0, :cond_5

    .line 9
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    .line 10
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iput-object p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->o:Landroid/graphics/Rect;

    .line 11
    iget-object p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result p1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setX(F)V

    if-ge p2, v5, :cond_3

    .line 12
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->h:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    if-ge p2, v4, :cond_4

    .line 13
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->h:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 14
    :cond_4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->h:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    sget v0, Lf7/b$i;->U0:I

    if-ne p3, v0, :cond_8

    .line 16
    iput p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    .line 17
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->o:Landroid/graphics/Rect;

    .line 18
    iget-object p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->i:Landroid/widget/TextView;

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->n:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setX(F)V

    if-ge p2, v5, :cond_6

    .line 19
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->i:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    if-ge p2, v4, :cond_7

    .line 20
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->i:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 21
    :cond_7
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->i:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_8
    :goto_0
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->c:Landroid/view/View;

    iget p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    iget p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-static {p2, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->j:Landroid/widget/EditText;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x2

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, p3

    const-string p3, "#%02x%02x%02x"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7

    .line 1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->d:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->o:Landroid/graphics/Rect;

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->g:Landroid/widget/TextView;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->n:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setX(F)V

    .line 3
    iget p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    const-string v0, " "

    const-string v1, ""

    const-string v2, "  "

    const/16 v3, 0x64

    const/16 v4, 0xa

    if-ge p1, v4, :cond_0

    .line 4
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->g:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ge p1, v3, :cond_1

    .line 5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->g:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->g:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->e:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->o:Landroid/graphics/Rect;

    .line 8
    iget-object v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->h:Landroid/widget/TextView;

    iget v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->n:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, p1

    int-to-float p1, v6

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setX(F)V

    .line 9
    iget p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    if-ge p1, v4, :cond_2

    .line 10
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->h:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_2
    iget p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->k:I

    if-ge p1, v3, :cond_3

    .line 12
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->h:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->h:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->l:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->f:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->o:Landroid/graphics/Rect;

    .line 15
    iget-object v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->i:Landroid/widget/TextView;

    iget v6, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->n:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, p1

    int-to-float p1, v6

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setX(F)V

    .line 16
    iget p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    if-ge p1, v4, :cond_4

    .line 17
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->i:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    if-ge p1, v3, :cond_5

    .line 18
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->i:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/ui/a;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
