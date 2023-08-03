.class Lcom/hbb20/e$e;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CountryCodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/LinearLayout;

.field f:Landroid/view/View;

.field final synthetic g:Lcom/hbb20/e;


# direct methods
.method public constructor <init>(Lcom/hbb20/e;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hbb20/e$e;->g:Lcom/hbb20/e;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/hbb20/e$e;->a:Landroid/widget/RelativeLayout;

    .line 4
    sget v0, Lcom/hbb20/i$h;->q3:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hbb20/e$e;->b:Landroid/widget/TextView;

    .line 5
    iget-object p2, p0, Lcom/hbb20/e$e;->a:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/i$h;->p3:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hbb20/e$e;->c:Landroid/widget/TextView;

    .line 6
    iget-object p2, p0, Lcom/hbb20/e$e;->a:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/i$h;->T1:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/hbb20/e$e;->d:Landroid/widget/ImageView;

    .line 7
    iget-object p2, p0, Lcom/hbb20/e$e;->a:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/i$h;->c2:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/hbb20/e$e;->e:Landroid/widget/LinearLayout;

    .line 8
    iget-object p2, p0, Lcom/hbb20/e$e;->a:Landroid/widget/RelativeLayout;

    sget v0, Lcom/hbb20/i$h;->p2:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/hbb20/e$e;->f:Landroid/view/View;

    .line 9
    iget-object p2, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p2}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lcom/hbb20/e$e;->b:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object p2, p0, Lcom/hbb20/e$e;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object p2, p0, Lcom/hbb20/e$e;->f:Landroid/view/View;

    iget-object v0, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 13
    :cond_0
    :try_start_0
    iget-object p2, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p2}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p2}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result p2

    const/16 v0, -0x63

    if-eq p2, v0, :cond_1

    .line 15
    iget-object p2, p0, Lcom/hbb20/e$e;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 16
    iget-object p2, p0, Lcom/hbb20/e$e;->b:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    iget-object p1, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p2, p0, Lcom/hbb20/e$e;->c:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 18
    iget-object p2, p0, Lcom/hbb20/e$e;->b:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public b()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/e$e;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public c(Lcom/hbb20/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ccpCountry"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_5

    .line 1
    iget-object v2, p0, Lcom/hbb20/e$e;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v2, p0, Lcom/hbb20/e$e;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v2, p0, Lcom/hbb20/e$e;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v2, p0, Lcom/hbb20/e$e;->g:Lcom/hbb20/e;

    iget-object v2, v2, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v2}, Lcom/hbb20/CountryCodePicker;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/hbb20/e$e;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/hbb20/e$e;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string v2, ""

    .line 7
    iget-object v3, p0, Lcom/hbb20/e$e;->g:Lcom/hbb20/e;

    iget-object v3, v3, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v3}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowFlag()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/hbb20/e$e;->g:Lcom/hbb20/e;

    iget-object v3, v3, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    iget-boolean v3, v3, Lcom/hbb20/CountryCodePicker;->M:Z

    if-eqz v3, :cond_1

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hbb20/b;->o(Lcom/hbb20/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/hbb20/e$e;->g:Lcom/hbb20/e;

    iget-object v3, v3, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v3}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowNameCode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/b;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/hbb20/e$e;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p0, Lcom/hbb20/e$e;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/b;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v2, p0, Lcom/hbb20/e$e;->g:Lcom/hbb20/e;

    iget-object v2, v2, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v2}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowFlag()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/hbb20/e$e;->g:Lcom/hbb20/e;

    iget-object v2, v2, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    iget-boolean v2, v2, Lcom/hbb20/CountryCodePicker;->M:Z

    if-eqz v2, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/hbb20/e$e;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/hbb20/e$e;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/hbb20/b;->p()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 17
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/hbb20/e$e;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/hbb20/e$e;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/hbb20/e$e;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/hbb20/e$e;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/hbb20/e$e;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method
