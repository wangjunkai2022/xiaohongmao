.class public Lcom/lljjcoder/style/citylist/widget/CleanableEditView;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "CleanableEditView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private hasFocus:Z

.field private left:Landroid/graphics/drawable/Drawable;

.field private right:Landroid/graphics/drawable/Drawable;

.field private xUp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->hasFocus:Z

    .line 5
    iput p1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->xUp:I

    .line 6
    invoke-direct {p0, p2}, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->initWedgits(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addListeners()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2
    invoke-virtual {p0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initDatas()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->left:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-direct {p0}, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->addListeners()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initWedgits(Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->left:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->right:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-direct {p0}, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->initDatas()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    :try_start_0
    iput-boolean p2, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->hasFocus:Z

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, ""

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->left:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->left:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->right:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, v1, v0}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->left:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->hasFocus:Z

    if-eqz p2, :cond_2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->left:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p2, p2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->right:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p3, 0x2

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->right:Landroid/graphics/drawable/Drawable;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->left:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->right:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, p2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->xUp:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;->xUp:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public text_String()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
