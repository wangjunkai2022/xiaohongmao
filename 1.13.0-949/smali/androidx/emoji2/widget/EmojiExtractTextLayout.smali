.class public Landroidx/emoji2/widget/EmojiExtractTextLayout;
.super Landroid/widget/LinearLayout;
.source "EmojiExtractTextLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/widget/EmojiExtractTextLayout$ButtonOnclickListener;
    }
.end annotation


# instance fields
.field private mButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mExtractAccessories:Landroid/view/ViewGroup;

.field private mExtractAction:Landroidx/emoji2/widget/ExtractButtonCompat;

.field private mExtractEditText:Landroidx/emoji2/widget/EmojiExtractEditText;

.field private mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1, v1}, Landroidx/emoji2/widget/EmojiExtractTextLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/emoji2/widget/EmojiExtractTextLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/emoji2/widget/EmojiExtractTextLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getButtonClickListener(Landroid/inputmethodservice/InputMethodService;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mButtonOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/emoji2/widget/EmojiExtractTextLayout$ButtonOnclickListener;

    invoke-direct {v0, p1}, Landroidx/emoji2/widget/EmojiExtractTextLayout$ButtonOnclickListener;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 3
    :cond_0
    iget-object p1, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mButtonOnClickListener:Landroid/view/View$OnClickListener;

    return-object p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mInitialized:Z

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroidx/emoji2/widget/R$layout;->input_method_extract_view:I

    .line 5
    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6
    sget v2, Landroidx/emoji2/widget/R$id;->inputExtractAccessories:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 7
    sget v2, Landroidx/emoji2/widget/R$id;->inputExtractAction:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/widget/ExtractButtonCompat;

    iput-object v2, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mExtractAction:Landroidx/emoji2/widget/ExtractButtonCompat;

    const v2, 0x1020025

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/widget/EmojiExtractEditText;

    iput-object v0, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mExtractEditText:Landroidx/emoji2/widget/EmojiExtractEditText;

    if-eqz p2, :cond_0

    .line 9
    sget-object v4, Landroidx/emoji2/widget/R$styleable;->EmojiExtractTextLayout:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    move v8, p4

    .line 10
    invoke-static/range {v2 .. v8}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 11
    sget p1, Landroidx/emoji2/widget/R$styleable;->EmojiExtractTextLayout_emojiReplaceStrategy:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 12
    iget-object p2, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mExtractEditText:Landroidx/emoji2/widget/EmojiExtractEditText;

    invoke-virtual {p2, p1}, Landroidx/emoji2/widget/EmojiExtractEditText;->setEmojiReplaceStrategy(I)V

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getEmojiReplaceStrategy()I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mExtractEditText:Landroidx/emoji2/widget/EmojiExtractEditText;

    invoke-virtual {v0}, Landroidx/emoji2/widget/EmojiExtractEditText;->getEmojiReplaceStrategy()I

    move-result v0

    return v0
.end method

.method public onUpdateExtractingViews(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1    # Landroid/inputmethodservice/InputMethodService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mExtractAccessories:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget v1, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v4, v1, 0xff

    if-eq v4, v3, :cond_2

    const/high16 v4, 0x20000000

    and-int/2addr v1, v4

    if-nez v1, :cond_2

    iget v1, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_0
    if-eqz v3, :cond_5

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mExtractAction:Landroidx/emoji2/widget/ExtractButtonCompat;

    if-eqz v0, :cond_6

    .line 6
    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_4
    iget p2, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, p2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_1
    iget-object p2, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mExtractAction:Landroidx/emoji2/widget/ExtractButtonCompat;

    invoke-direct {p0, p1}, Landroidx/emoji2/widget/EmojiExtractTextLayout;->getButtonClickListener(Landroid/inputmethodservice/InputMethodService;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mExtractAction:Landroidx/emoji2/widget/ExtractButtonCompat;

    if-eqz p1, :cond_6

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setEmojiReplaceStrategy(I)V
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/widget/EmojiExtractTextLayout;->mExtractEditText:Landroidx/emoji2/widget/EmojiExtractEditText;

    invoke-virtual {v0, p1}, Landroidx/emoji2/widget/EmojiExtractEditText;->setEmojiReplaceStrategy(I)V

    return-void
.end method
