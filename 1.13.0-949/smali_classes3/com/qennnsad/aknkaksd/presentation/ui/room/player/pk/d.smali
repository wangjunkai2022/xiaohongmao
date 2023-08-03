.class public Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;
.super Landroid/app/Dialog;
.source "PkAcceptDialog.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lf5/d;

    invoke-static {p1, v0}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/d;

    invoke-interface {p1}, Lf5/d;->c()Lf5/e;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lf5/e;->g()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lf5/e;->g()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/qennnsad/aknkaksd/data/repository/m;->j(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, ""

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->a:Ljava/lang/String;

    if-nez p1, :cond_1

    move-object p1, p3

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->b:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->c:Ljava/lang/String;

    const-string p1, ","

    .line 8
    invoke-virtual {p5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    .line 9
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->d:Ljava/lang/String;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p5, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const-string p4, "\n"

    .line 11
    invoke-virtual {p5, p1, p4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->d:Ljava/lang/String;

    .line 12
    :goto_2
    iput-object p6, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->e:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->f(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->f:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method private d()V
    .locals 11

    const v0, 0x7f0a00e2

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f0a00e3

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f0a0723

    .line 3
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0144

    .line 4
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/TextView;

    const v3, 0x7f0a0142

    .line 5
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 6
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 10
    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f060295

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f060294

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 11
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v1

    const/16 v6, 0x21

    invoke-interface {v0, v4, v1, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 12
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/b;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d$a;

    const-wide/16 v6, 0x7530

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;JJLandroid/widget/TextView;)V

    .line 16
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->f:Landroid/os/CountDownTimer;

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->f:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d017c

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d;->d()V

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/util/h1;->g(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x9

    .line 5
    div-int/lit8 v2, v2, 0xa

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 6
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x106000d

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 9
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
